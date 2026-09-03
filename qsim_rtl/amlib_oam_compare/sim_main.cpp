#include "Vamlib_oadm_mul_miter.h"
#include "verilated.h"

#include <cmath>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <iomanip>
#include <iostream>

static uint32_t lcg_next(uint32_t s) {
    return s * 1664525u + 1013904223u;
}

static float as_float(uint32_t bits) {
    float value;
    std::memcpy(&value, &bits, sizeof(value));
    return value;
}

struct Metrics {
    int mismatches = 0;
    uint32_t max_bit_delta = 0;
    double amlib_abs_sum = 0.0;
    double oadm_abs_sum = 0.0;
    double amlib_sq_sum = 0.0;
    double oadm_sq_sum = 0.0;
    double amlib_rel_sum = 0.0;
    double oadm_rel_sum = 0.0;
    double amlib_max_abs = 0.0;
    double oadm_max_abs = 0.0;
};

static void check_one(Vamlib_oadm_mul_miter* dut, uint32_t x, uint32_t y,
                      Metrics& metrics) {
    dut->x = x;
    dut->y = y;
    dut->eval();
    uint32_t amlib = dut->amlib_z;
    uint32_t oadm = dut->oadm_z;
    if (amlib != oadm) {
        uint32_t delta = (amlib > oadm) ? (amlib - oadm) : (oadm - amlib);
        if (delta > metrics.max_bit_delta) metrics.max_bit_delta = delta;
        if (metrics.mismatches < 20) {
            std::cout << "MISMATCH x=0x" << std::hex << std::setw(8)
                      << std::setfill('0') << x
                      << " y=0x" << std::setw(8) << y
                      << " amlib=0x" << std::setw(8) << amlib
                      << " oadm=0x" << std::setw(8) << oadm
                      << std::dec << "\n";
        }
        ++metrics.mismatches;
    }

    const double exact = static_cast<double>(as_float(x)) * static_cast<double>(as_float(y));
    const double amlib_err = static_cast<double>(as_float(amlib)) - exact;
    const double oadm_err = static_cast<double>(as_float(oadm)) - exact;
    const double amlib_abs = std::fabs(amlib_err);
    const double oadm_abs = std::fabs(oadm_err);
    const double denom = std::fabs(exact);

    metrics.amlib_abs_sum += amlib_abs;
    metrics.oadm_abs_sum += oadm_abs;
    metrics.amlib_sq_sum += amlib_err * amlib_err;
    metrics.oadm_sq_sum += oadm_err * oadm_err;
    metrics.amlib_rel_sum += amlib_abs / denom;
    metrics.oadm_rel_sum += oadm_abs / denom;
    if (amlib_abs > metrics.amlib_max_abs) metrics.amlib_max_abs = amlib_abs;
    if (oadm_abs > metrics.oadm_max_abs) metrics.oadm_max_abs = oadm_abs;
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    const int level = std::atoi(argv[1]);
    const int num_random = (argc > 2) ? std::atoi(argv[2]) : 200000;
    uint32_t state = 0x1badc0deu ^ (static_cast<uint32_t>(level) << 12);

    Vamlib_oadm_mul_miter dut;
    Metrics metrics;

    check_one(&dut, 0x3f800000u, 0x3f800000u, metrics);
    check_one(&dut, 0x3fffffffu, 0x3f800000u, metrics);
    check_one(&dut, 0x3f800000u, 0x3fffffffu, metrics);
    check_one(&dut, 0x3fffffffu, 0x3fffffffu, metrics);
    check_one(&dut, 0xbfc00000u, 0x3fc00000u, metrics);
    check_one(&dut, 0xbfa00000u, 0xbfe00000u, metrics);

    for (int i = 0; i < num_random; ++i) {
        state = lcg_next(state);
        uint32_t x = (state & 0x80000000u) | 0x3f800000u | (state & 0x007fffffu);
        state = lcg_next(state);
        uint32_t y = (state & 0x80000000u) | 0x3f800000u | (state & 0x007fffffu);
        check_one(&dut, x, y, metrics);
    }

    const int vectors = num_random + 6;
    std::cout << std::setprecision(12)
              << "METRICS level=" << level << " vectors=" << vectors
              << " mismatches=" << metrics.mismatches
              << " max_bit_delta=" << metrics.max_bit_delta
              << " amlib_mae=" << metrics.amlib_abs_sum / vectors
              << " oadm_mae=" << metrics.oadm_abs_sum / vectors
              << " amlib_rmse=" << std::sqrt(metrics.amlib_sq_sum / vectors)
              << " oadm_rmse=" << std::sqrt(metrics.oadm_sq_sum / vectors)
              << " amlib_mre=" << metrics.amlib_rel_sum / vectors
              << " oadm_mre=" << metrics.oadm_rel_sum / vectors
              << " amlib_max_abs=" << metrics.amlib_max_abs
              << " oadm_max_abs=" << metrics.oadm_max_abs << "\n";

    if (metrics.mismatches == 0) {
        std::cout << "PASS level=" << level << " vectors=" << vectors
                  << " normalized finite MUL bit-exact vs AM-Lib OAM\n";
        return 0;
    }
    std::cout << "NOT_BIT_EXACT level=" << level << " vectors=" << vectors
              << " mismatches=" << metrics.mismatches << "\n";
    return 1;
}
