#include "Vnlms_stdm_top.h"
#include "verilated.h"

#include <algorithm>
#include <array>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <limits>
#include <numeric>
#include <random>
#include <string>
#include <vector>

namespace {
constexpr int kDesigns = 5;
constexpr std::array<const char *, kDesigns> kNames = {"Exact", "STDM L0", "STDM L1", "STDM L2", "STDM L3"};

uint32_t bits(float value) {
    uint32_t out;
    std::memcpy(&out, &value, sizeof(out));
    return out;
}

float from_bits(uint32_t value) {
    float out;
    std::memcpy(&out, &value, sizeof(out));
    return out;
}

bool normal_finite(float value) {
    const uint32_t exponent = (bits(value) >> 23) & 0xffu;
    return exponent > 0 && exponent < 0xffu;
}

float fp32_add(float a, float b) {
    volatile float result = a + b;
    return result;
}

float fp32_sub(float a, float b) {
    volatile float result = a - b;
    return result;
}

float fp32_mul(float a, float b) {
    volatile float result = a * b;
    return result;
}

float fp32_div(float a, float b) {
    volatile float result = a / b;
    return result;
}

struct Counts {
    uint64_t mul_calls = 0;
    uint64_t div_calls = 0;
    uint64_t zero_operand_fallbacks = 0;
    uint64_t other_operand_fallbacks = 0;
    uint64_t result_fallbacks = 0;
};

class Arithmetic {
  public:
    Arithmetic(Vnlms_stdm_top *dut, int design) : dut_(dut), design_(design) {}

    float mul(float a, float b) {
        ++counts.mul_calls;
        return operation(a, b, false);
    }

    float div(float a, float b) {
        ++counts.div_calls;
        return operation(a, b, true);
    }

    Counts counts;

  private:
    float operation(float a, float b, bool divide) {
        const float exact = divide ? fp32_div(a, b) : fp32_mul(a, b);
        if (design_ == 0)
            return exact;
        if (!normal_finite(a) || !normal_finite(b)) {
            if (a == 0.0f || b == 0.0f)
                ++counts.zero_operand_fallbacks;
            else
                ++counts.other_operand_fallbacks;
            return exact;
        }
        if (!normal_finite(exact)) {
            ++counts.result_fallbacks;
            return exact;
        }

        dut_->x = bits(a);
        dut_->y = bits(b);
        dut_->divide_mode = divide;
        dut_->eval();
        const std::array<uint32_t, 4> outputs = {
            dut_->l0_result, dut_->l1_result, dut_->l2_result, dut_->l3_result
        };
        const float approximate = from_bits(outputs.at(design_ - 1));
        if (!normal_finite(approximate)) {
            ++counts.result_fallbacks;
            return exact;
        }
        return approximate;
    }

    Vnlms_stdm_top *dut_;
    int design_;
};

struct RunResult {
    std::vector<double> nmsd;
    double overall_output_nmse_db = 0.0;
    double steady_output_nmse_db = 0.0;
    double steady_nmsd_db = 0.0;
    double final_nmsd_db = 0.0;
    int convergence_iteration = -1;
    bool diverged = false;
    Counts counts;
};

double nmsd_db(const std::vector<float> &weights, const std::vector<float> &target) {
    double error = 0.0;
    double reference = 0.0;
    for (size_t i = 0; i < weights.size(); ++i) {
        const double delta = static_cast<double>(weights[i]) - target[i];
        error += delta * delta;
        reference += static_cast<double>(target[i]) * target[i];
    }
    return 10.0 * std::log10(std::max(error / reference, 1.0e-30));
}

int convergence_iteration(const std::vector<double> &curve, int window, double threshold) {
    if (static_cast<int>(curve.size()) < window)
        return -1;
    double sum = std::accumulate(curve.begin(), curve.begin() + window, 0.0);
    for (int end = window - 1; end < static_cast<int>(curve.size()); ++end) {
        if (end >= window) {
            sum += curve[end];
            sum -= curve[end - window];
        }
        if (sum / window < threshold)
            return end + 1;
    }
    return -1;
}

RunResult run_nlms(Vnlms_stdm_top *dut, int design, int seed, int iterations, int taps) {
    std::mt19937 generator(seed);
    std::normal_distribution<float> normal(0.0f, 1.0f);
    std::normal_distribution<float> noise(0.0f, 0.01f);

    std::vector<float> target(taps);
    double norm = 0.0;
    for (float &coefficient : target) {
        coefficient = normal(generator);
        norm += static_cast<double>(coefficient) * coefficient;
    }
    const float scale = static_cast<float>(1.0 / std::sqrt(norm));
    for (float &coefficient : target)
        coefficient = fp32_mul(coefficient, scale);

    std::vector<float> weights(taps, 0.0f);
    std::vector<float> delay_line(taps, 0.0f);
    Arithmetic arithmetic(dut, design);
    RunResult result;
    result.nmsd.reserve(iterations);
    double error_energy = 0.0;
    double desired_energy = 0.0;
    double steady_error_energy = 0.0;
    double steady_desired_energy = 0.0;
    constexpr float mu = 0.5f;
    constexpr float epsilon = 1.0e-3f;

    for (int iteration = 0; iteration < iterations; ++iteration) {
        for (int i = taps - 1; i > 0; --i)
            delay_line[i] = delay_line[i - 1];
        delay_line[0] = normal(generator);

        float desired = 0.0f;
        for (int i = 0; i < taps; ++i)
            desired = fp32_add(desired, fp32_mul(target[i], delay_line[i]));
        desired = fp32_add(desired, noise(generator));

        float estimate = 0.0f;
        float input_energy = epsilon;
        for (int i = 0; i < taps; ++i) {
            estimate = fp32_add(estimate, arithmetic.mul(weights[i], delay_line[i]));
            input_energy = fp32_add(input_energy, arithmetic.mul(delay_line[i], delay_line[i]));
        }
        const float error = fp32_sub(desired, estimate);
        const float scaled_error = arithmetic.mul(mu, error);
        const float gain = arithmetic.div(scaled_error, input_energy);
        for (int i = 0; i < taps; ++i)
            weights[i] = fp32_add(weights[i], arithmetic.mul(gain, delay_line[i]));

        error_energy += static_cast<double>(error) * error;
        desired_energy += static_cast<double>(desired) * desired;
        if (iteration >= iterations * 4 / 5) {
            steady_error_energy += static_cast<double>(error) * error;
            steady_desired_energy += static_cast<double>(desired) * desired;
        }
        const double point_nmsd = nmsd_db(weights, target);
        result.nmsd.push_back(point_nmsd);
        if (!std::isfinite(point_nmsd) || point_nmsd > 60.0) {
            result.diverged = true;
            break;
        }
    }

    result.overall_output_nmse_db =
        10.0 * std::log10(std::max(error_energy / desired_energy, 1.0e-30));
    result.steady_output_nmse_db =
        10.0 * std::log10(std::max(steady_error_energy / steady_desired_energy, 1.0e-30));
    result.final_nmsd_db = result.nmsd.back();
    const size_t steady_start = result.nmsd.size() * 4 / 5;
    result.steady_nmsd_db = std::accumulate(result.nmsd.begin() + steady_start, result.nmsd.end(), 0.0)
                            / (result.nmsd.size() - steady_start);
    result.convergence_iteration = convergence_iteration(result.nmsd, 100, -20.0);
    result.counts = arithmetic.counts;
    return result;
}

struct SummaryRow {
    int design;
    int seed;
    RunResult result;
};

double mean(const std::vector<double> &values) {
    return std::accumulate(values.begin(), values.end(), 0.0) / values.size();
}

double sample_stddev(const std::vector<double> &values) {
    if (values.size() < 2)
        return 0.0;
    const double average = mean(values);
    double sum = 0.0;
    for (double value : values)
        sum += (value - average) * (value - average);
    return std::sqrt(sum / (values.size() - 1));
}
}  // namespace

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);
    const int iterations = argc > 1 ? std::stoi(argv[1]) : 5000;
    const int seeds = argc > 2 ? std::stoi(argv[2]) : 20;
    const int taps = argc > 3 ? std::stoi(argv[3]) : 16;
    const std::string output_dir = argc > 4 ? argv[4] : "results";
    const int curve_stride = 10;

    Vnlms_stdm_top dut;
    std::vector<SummaryRow> rows;
    std::array<std::vector<double>, kDesigns> curve_sums;
    for (auto &curve : curve_sums)
        curve.assign((iterations + curve_stride - 1) / curve_stride, 0.0);

    for (int seed_index = 0; seed_index < seeds; ++seed_index) {
        const int seed = 1000 + seed_index;
        for (int design = 0; design < kDesigns; ++design) {
            RunResult result = run_nlms(&dut, design, seed, iterations, taps);
            if (!result.diverged) {
                for (int iteration = 0; iteration < iterations; iteration += curve_stride)
                    curve_sums[design][iteration / curve_stride] += result.nmsd[iteration];
            }
            rows.push_back({design, seed, std::move(result)});
        }
        std::cerr << "completed seed " << seed << " (" << seed_index + 1 << "/" << seeds << ")\n";
    }

    std::ofstream per_seed(output_dir + "/per_seed.csv");
    per_seed << "design,seed,overall_output_nmse_db,steady_output_nmse_db,steady_nmsd_db,final_nmsd_db,convergence_iteration,diverged,mul_calls,div_calls,zero_operand_fallbacks,other_operand_fallbacks,result_fallbacks\n";
    per_seed << std::setprecision(10);
    for (const auto &row : rows) {
        const auto &r = row.result;
        per_seed << kNames[row.design] << ',' << row.seed << ',' << r.overall_output_nmse_db << ','
                 << r.steady_output_nmse_db << ',' << r.steady_nmsd_db << ',' << r.final_nmsd_db << ',' << r.convergence_iteration << ','
                 << r.diverged << ',' << r.counts.mul_calls << ',' << r.counts.div_calls << ','
                 << r.counts.zero_operand_fallbacks << ',' << r.counts.other_operand_fallbacks << ','
                 << r.counts.result_fallbacks << '\n';
    }

    std::ofstream summary(output_dir + "/summary.csv");
    summary << "design,overall_output_nmse_mean_db,steady_output_nmse_mean_db,steady_output_nmse_std_db,steady_nmsd_mean_db,steady_nmsd_std_db,final_nmsd_mean_db,convergence_mean_iter,converged_seeds,diverged_seeds,mul_calls,div_calls,zero_operand_fallbacks,other_operand_fallbacks,result_fallbacks\n";
    summary << std::setprecision(10);
    for (int design = 0; design < kDesigns; ++design) {
        std::vector<double> overall_nmse, steady_nmse, steady_nmsd, final, convergence;
        uint64_t mul_calls = 0, div_calls = 0, zero_operand_fallbacks = 0;
        uint64_t other_operand_fallbacks = 0, result_fallbacks = 0;
        int converged = 0, diverged = 0;
        for (const auto &row : rows) {
            if (row.design != design)
                continue;
            const auto &r = row.result;
            overall_nmse.push_back(r.overall_output_nmse_db);
            steady_nmse.push_back(r.steady_output_nmse_db);
            steady_nmsd.push_back(r.steady_nmsd_db);
            final.push_back(r.final_nmsd_db);
            if (r.convergence_iteration >= 0) {
                convergence.push_back(r.convergence_iteration);
                ++converged;
            }
            diverged += r.diverged;
            mul_calls += r.counts.mul_calls;
            div_calls += r.counts.div_calls;
            zero_operand_fallbacks += r.counts.zero_operand_fallbacks;
            other_operand_fallbacks += r.counts.other_operand_fallbacks;
            result_fallbacks += r.counts.result_fallbacks;
        }
        const double convergence_mean = convergence.empty() ? -1.0 : mean(convergence);
        summary << kNames[design] << ',' << mean(overall_nmse) << ','
                << mean(steady_nmse) << ',' << sample_stddev(steady_nmse) << ','
                << mean(steady_nmsd) << ',' << sample_stddev(steady_nmsd) << ',' << mean(final) << ','
                << convergence_mean << ',' << converged << ',' << diverged << ',' << mul_calls << ','
                << div_calls << ',' << zero_operand_fallbacks << ',' << other_operand_fallbacks << ','
                << result_fallbacks << '\n';
    }

    std::ofstream curve(output_dir + "/learning_curve.csv");
    curve << "iteration";
    for (const char *name : kNames)
        curve << ',' << name;
    curve << '\n' << std::setprecision(10);
    for (int iteration = 0; iteration < iterations; iteration += curve_stride) {
        curve << iteration + 1;
        for (int design = 0; design < kDesigns; ++design)
            curve << ',' << curve_sums[design][iteration / curve_stride] / seeds;
        curve << '\n';
    }

    std::ofstream metadata(output_dir + "/metadata.txt");
    metadata << "iterations=" << iterations << '\n'
             << "seeds=" << seeds << '\n'
             << "taps=" << taps << '\n'
             << "mu=0.5\n"
             << "epsilon=0.001\n"
             << "noise_sigma=0.01\n"
             << "convergence=100-sample moving-average NMSD below -20 dB\n"
             << "steady_state=last 20 percent of iterations\n";
    dut.final();
    return 0;
}
