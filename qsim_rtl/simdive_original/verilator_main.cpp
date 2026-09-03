#include <cmath>
#include <cstdint>
#include <iomanip>
#include <iostream>
#include "Vsimdive_original_fp32_wrapper.h"

static double fp32_value(uint32_t bits) {
    const int exponent = static_cast<int>((bits >> 23) & 0xff) - 127;
    const double mantissa = 1.0 + static_cast<double>(bits & 0x7fffff) / 8388608.0;
    const double value = std::ldexp(mantissa, exponent);
    return (bits >> 31) ? -value : value;
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    auto* dut = new Vsimdive_original_fp32_wrapper;
    uint32_t state = 0x31415926u;

    for (unsigned mode = 0; mode < 2; ++mode) {
        double sum_abs = 0.0;
        double sum_rel = 0.0;
        double sum_sq = 0.0;
        for (unsigned i = 0; i < 10000; ++i) {
            state = state * 1664525u + 1013904223u;
            const uint32_t x = 0x3f800000u | (state & 0x7fffffu);
            state = state * 1664525u + 1013904223u;
            const uint32_t y = 0x3f800000u | (state & 0x7fffffu);
            dut->x = x;
            dut->y = y;
            dut->divide_mode = mode;
            dut->eval();
            const double exact = mode ? fp32_value(x) / fp32_value(y)
                                      : fp32_value(x) * fp32_value(y);
            const double approx = fp32_value(dut->result);
            const double error = std::fabs(approx - exact);
            sum_abs += error;
            sum_rel += error / exact;
            sum_sq += error * error;
        }
        std::cout << "SIMDIVE_ORIGINAL_FP32 " << (mode ? "DIV" : "MUL")
                  << " MAE=" << std::fixed << std::setprecision(9) << sum_abs / 10000.0
                  << " MRED=" << sum_rel / 10000.0
                  << " RMSE=" << std::sqrt(sum_sq / 10000.0) << '\n';
    }
    dut->final();
    delete dut;
    return 0;
}
