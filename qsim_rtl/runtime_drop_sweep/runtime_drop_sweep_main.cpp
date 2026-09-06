#include <cmath>
#include <cstdint>
#include <cstdlib>
#include <iomanip>
#include <iostream>
#include "Vruntime_drop_sweep_top.h"

struct Metric {
    double abs = 0.0;
    double rel = 0.0;
    double sq = 0.0;
};

static double fp32_value(uint32_t bits) {
    const int exponent = static_cast<int>((bits >> 23) & 0xff) - 127;
    const double mantissa = 1.0 + static_cast<double>(bits & 0x7fffff) /
        8388608.0;
    const double value = std::ldexp(mantissa, exponent);
    return (bits >> 31) ? -value : value;
}

static void update(Metric& metric, uint32_t actual_bits, double exact) {
    const double error = std::fabs(fp32_value(actual_bits) - exact);
    metric.abs += error;
    metric.rel += error / std::fabs(exact);
    metric.sq += error * error;
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    if (argc != 4) {
        std::cerr << "usage: sweep RESIDUAL_DROP SCALE_DROP CASES\n";
        return 2;
    }
    const int residual_drop = std::atoi(argv[1]);
    const int scale_drop = std::atoi(argv[2]);
    const int cases = std::atoi(argv[3]);
    Vruntime_drop_sweep_top dut;
    Metric candidate[2][4];
    Metric baseline[2][4];
    uint64_t baseline_mismatches = 0;
    uint32_t state = 0x31415926u;

    for (int mode = 0; mode < 2; ++mode) {
        dut.divide_mode = mode;
        for (int level = 0; level < 4; ++level) {
            dut.level = level;
            state = 0x31415926u;
            for (int i = 0; i < cases; ++i) {
                state = state * 1664525u + 1013904223u;
                dut.x = 0x3f800000u | (state & 0x7fffffu);
                state = state * 1664525u + 1013904223u;
                dut.y = 0x3f800000u | (state & 0x7fffffu);
                dut.eval();
                const double x = fp32_value(dut.x);
                const double y = fp32_value(dut.y);
                const double exact = mode ? x / y : x * y;
                update(candidate[mode][level], dut.candidate_result, exact);
                update(baseline[mode][level], dut.baseline_result, exact);
                if (residual_drop == 10 && scale_drop == 14 &&
                    dut.candidate_result != dut.baseline_result)
                    ++baseline_mismatches;
            }
        }
    }

    std::cout << std::fixed << std::setprecision(9);
    for (int mode = 0; mode < 2; ++mode) {
        for (int level = 0; level < 4; ++level) {
            const Metric& c = candidate[mode][level];
            const Metric& b = baseline[mode][level];
            std::cout << residual_drop << ',' << scale_drop << ','
                      << (mode ? "DIV" : "MUL") << ",L" << level << ','
                      << cases << ',' << c.abs / cases << ','
                      << c.rel / cases << ',' << std::sqrt(c.sq / cases)
                      << ',' << b.abs / cases << ',' << b.rel / cases << ','
                      << std::sqrt(b.sq / cases) << ','
                      << baseline_mismatches << '\n';
        }
    }
    dut.final();
    return baseline_mismatches == 0 ? 0 : 1;
}

