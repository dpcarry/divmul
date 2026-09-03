#include "Vmul_root_opt_compare.h"
#include "verilated.h"

#include <cmath>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <iomanip>
#include <iostream>

static uint32_t lcg_next(uint32_t state) {
    return state * 1664525u + 1013904223u;
}

static float as_float(uint32_t bits) {
    float value;
    std::memcpy(&value, &bits, sizeof(value));
    return value;
}

static uint32_t model_root(uint32_t x, uint32_t y, int level, int drop) {
    const uint32_t x_mantissa = 0x00800000u | (x & 0x007fffffu);
    const uint32_t y_mantissa = 0x00800000u | (y & 0x007fffffu);
    const int base[] = {24, 20, 18, 17};
    const int x_index = level == 0 ? 0
        : (x_mantissa >> (23 - level)) & ((1 << level) - 1);
    const int y_index = level == 0 ? 0
        : (y_mantissa >> (23 - level)) & ((1 << level) - 1);
    const int kx = base[level] + (x_index << (4 - level));
    const int ky = base[level] + (y_index << (4 - level));
    const int64_t rx = static_cast<int64_t>(x_mantissa) - (kx << 19);
    const int64_t ry = static_cast<int64_t>(y_mantissa) - (ky << 19);
    const int64_t x_term = ((rx >> drop) * ky) << (drop - 4);
    const int64_t y_term = ((ry >> drop) * kx) << (drop - 4);
    const int64_t bias = static_cast<int64_t>(kx + ky) << (drop - 5);
    int64_t core = (static_cast<int64_t>(kx * ky) << 15)
                   + x_term + y_term + bias;
    int exponent = static_cast<int>((x >> 23) & 0xff)
                   + static_cast<int>((y >> 23) & 0xff) - 127;
    if (core & (1 << 24)) {
        core >>= 1;
        ++exponent;
    } else if (!(core & (1 << 23))) {
        if (core & (1 << 22)) {
            core <<= 1;
            --exponent;
        } else {
            core <<= 2;
            exponent -= 2;
        }
    }
    const uint32_t sign = (x ^ y) & 0x80000000u;
    return sign | (static_cast<uint32_t>(exponent & 0xff) << 23)
           | (static_cast<uint32_t>(core) & 0x007fffffu);
}

struct Metric {
    double absolute = 0.0;
    double squared = 0.0;
    double relative = 0.0;
    double signed_error = 0.0;
    double maximum = 0.0;
};

static void update(Metric& metric, uint32_t bits, double exact) {
    const double error = static_cast<double>(as_float(bits)) - exact;
    const double absolute = std::fabs(error);
    metric.absolute += absolute;
    metric.squared += error * error;
    metric.relative += absolute / std::fabs(exact);
    metric.signed_error += error;
    if (absolute > metric.maximum) metric.maximum = absolute;
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    const int level = std::atoi(argv[1]);
    const int random_vectors = argc > 2 ? std::atoi(argv[2]) : 200000;
    uint32_t state = 0x51a7e5edu ^ (static_cast<uint32_t>(level) << 16);
    Vmul_root_opt_compare dut;
    Metric amlib, current, accuracy, conservative, aggressive;
    int accuracy_mismatches = 0;
    int conservative_mismatches = 0;
    int aggressive_mismatches = 0;
    const int conservative_drop[] = {16, 14, 12, 10};
    const int aggressive_drop[] = {18, 16, 14, 12};
    const int accuracy_drop[] = {12, 10, 8, 6};

    for (int index = 0; index < random_vectors; ++index) {
        state = lcg_next(state);
        const uint32_t x = (state & 0x80000000u) | 0x3f800000u
                           | (state & 0x007fffffu);
        state = lcg_next(state);
        const uint32_t y = (state & 0x80000000u) | 0x3f800000u
                           | (state & 0x007fffffu);
        dut.x = x;
        dut.y = y;
        dut.eval();
        const double exact = static_cast<double>(as_float(x))
                             * static_cast<double>(as_float(y));
        update(amlib, dut.amlib_z, exact);
        update(current, dut.current_z, exact);
        update(accuracy, dut.accuracy_z, exact);
        update(conservative, dut.conservative_z, exact);
        update(aggressive, dut.aggressive_z, exact);
        if (dut.accuracy_z != model_root(x, y, level, accuracy_drop[level]))
            ++accuracy_mismatches;
        if (dut.conservative_z != model_root(
                x, y, level, conservative_drop[level]))
            ++conservative_mismatches;
        if (dut.aggressive_z != model_root(
                x, y, level, aggressive_drop[level]))
            ++aggressive_mismatches;
    }

    const Metric metrics[] = {
        amlib, current, accuracy, conservative, aggressive
    };
    const char* names[] = {
        "amlib", "current", "accuracy", "conservative", "aggressive"
    };
    std::cout << std::setprecision(12);
    for (int i = 0; i < 5; ++i) {
        std::cout << "METRICS level=" << level << " design=" << names[i]
                  << " vectors=" << random_vectors
                  << " mae=" << metrics[i].absolute / random_vectors
                  << " mred=" << metrics[i].relative / random_vectors
                  << " rmse=" << std::sqrt(metrics[i].squared / random_vectors)
                  << " mean_error=" << metrics[i].signed_error / random_vectors
                  << " max_abs=" << metrics[i].maximum << "\n";
    }
    std::cout << "MODEL_CHECK level=" << level
              << " accuracy_mismatches=" << accuracy_mismatches
              << " conservative_mismatches=" << conservative_mismatches
              << " aggressive_mismatches=" << aggressive_mismatches << "\n";
    return (accuracy_mismatches || conservative_mismatches
            || aggressive_mismatches) ? 1 : 0;
}
