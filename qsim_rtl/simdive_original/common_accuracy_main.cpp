#include <cmath>
#include <cstdint>
#include <fstream>
#include <iomanip>
#include <iostream>
#include "Vsimdive_oadm_common_accuracy_top.h"

struct Metric {
    double abs = 0.0;
    double rel = 0.0;
    double sq = 0.0;
};

static double fp32_value(uint32_t bits) {
    const int exponent = static_cast<int>((bits >> 23) & 0xff) - 127;
    const double mantissa = 1.0 + static_cast<double>(bits & 0x7fffff) / 8388608.0;
    const double value = std::ldexp(mantissa, exponent);
    return (bits >> 31) ? -value : value;
}

static void update(Metric& metric, uint32_t actual_bits, double exact) {
    const double error = std::fabs(fp32_value(actual_bits) - exact);
    metric.abs += error;
    metric.rel += error / std::fabs(exact);
    metric.sq += error * error;
}

static void emit(std::ofstream& out, const char* design, const char* mode,
                 const char* level, const Metric& metric, int cases) {
    out << design << ',' << mode << ',' << level << ',' << cases << ','
        << std::fixed << std::setprecision(9)
        << metric.abs / cases << ',' << metric.rel / cases << ','
        << std::sqrt(metric.sq / cases) << '\n';
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Vsimdive_oadm_common_accuracy_top dut;
    constexpr int kCases = 10000;
    uint32_t xs[kCases];
    uint32_t ys[kCases];
    uint32_t state = 0x31415926u;
    for (int i = 0; i < kCases; ++i) {
        state = state * 1664525u + 1013904223u;
        xs[i] = 0x3f800000u | (state & 0x7fffffu);
        state = state * 1664525u + 1013904223u;
        ys[i] = 0x3f800000u | (state & 0x7fffffu);
    }

    Metric simdive[2];
    Metric oadm[2][4];
    int equivalence_mismatches = 0;
    for (int mode = 0; mode < 2; ++mode) {
        dut.divide_mode = mode;
        for (int level = 0; level < 4; ++level) {
            dut.level = level;
            for (int i = 0; i < kCases; ++i) {
                dut.x = xs[i];
                dut.y = ys[i];
                dut.eval();
                if (dut.simdive_result != dut.simdive_original_result)
                    ++equivalence_mismatches;
                const double x = fp32_value(xs[i]);
                const double y = fp32_value(ys[i]);
                const double exact = mode ? x / y : x * y;
                update(oadm[mode][level], dut.oadm_result, exact);
                if (level == 0)
                    update(simdive[mode], dut.simdive_result, exact);
            }
        }
    }

    std::ofstream out("simdive_oadm_common_accuracy.csv");
    out << "design,mode,level,cases,mae,mred,rmse\n";
    for (int mode = 0; mode < 2; ++mode) {
        emit(out, "simdive_sisd32", mode ? "DIV" : "MUL", "NA",
             simdive[mode], kCases);
        for (int level = 0; level < 4; ++level) {
            const char* levels[] = {"L0", "L1", "L2", "L3"};
            emit(out, "oadm_runtime_root_opt", mode ? "DIV" : "MUL",
                 levels[level], oadm[mode][level], kCases);
        }
    }
    dut.final();
    if (equivalence_mismatches != 0)
        return 2;
    std::cout << "SIMDIVE_SISD32_RTL_EQUIV PASS: 20000 unique mode/vector pairs\n";
    return out ? 0 : 1;
}
