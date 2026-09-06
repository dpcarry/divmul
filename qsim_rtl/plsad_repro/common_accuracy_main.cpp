#include <cmath>
#include <cstdint>
#include <fstream>
#include <iomanip>
#include <iostream>
#include "Vplsad_common_accuracy_top.h"

struct Metric {
    double abs = 0.0;
    double rel = 0.0;
    double sq = 0.0;
};

static double fp32_value(uint32_t bits) {
    const int exponent = static_cast<int>((bits >> 23) & 0xff) - 127;
    const double mantissa = 1.0 + static_cast<double>(bits & 0x7fffff) / 8388608.0;
    return std::ldexp(mantissa, exponent);
}

static uint16_t loa4(const uint16_t row[4], int exact_bits) {
    const int lower_bits = 15 - exact_bits;
    const uint16_t lower_mask = (1u << lower_bits) - 1u;
    const uint16_t exact_mask = (1u << exact_bits) - 1u;
    uint16_t low = 0;
    unsigned boundary_ones = 0;
    unsigned upper = 0;
    for (int i = 0; i < 4; ++i) {
        low |= row[i] & lower_mask;
        boundary_ones += (row[i] >> (lower_bits - 1)) & 1u;
        upper += row[i] >> lower_bits;
    }
    upper += boundary_ones >> 1;
    return static_cast<uint16_t>(((upper & exact_mask) << lower_bits) | low);
}

static uint32_t plsad_reference(uint32_t x, uint32_t y, int exact_bits) {
    const uint16_t fx = static_cast<uint16_t>(((x >> 13) & 0x3ffu) << 4);
    const uint16_t fy = static_cast<uint16_t>(((y >> 13) & 0x3ffu) << 4);
    const uint16_t inv_mask = 0x7fffu;
    uint16_t row[4] = {};
    switch ((fy >> 11) & 7u) {
    case 0: row[0]=fx; row[1]=(~fy)&inv_mask; row[2]=(~(fy>>2))&inv_mask; row[3]=16384; break;
    case 1: row[0]=fx; row[1]=(~(fx>>3))&inv_mask; row[2]=(~fy)&inv_mask; row[3]=16640; break;
    case 2: row[0]=fx; row[1]=(~(fx>>2))&inv_mask; row[2]=(~fy)&inv_mask; row[3]=17664; break;
    case 3: row[0]=fx; row[1]=(~(fx>>2))&inv_mask; row[2]=(~(fy>>1))&inv_mask; row[3]=14592; break;
    case 4: row[0]=fx>>1; row[1]=fx>>3; row[2]=(~(fy>>1))&inv_mask; row[3]=15232; break;
    case 5: row[0]=fx>>1; row[1]=fx>>3; row[2]=(~(fy>>1))&inv_mask; row[3]=15104; break;
    case 6: row[0]=fx>>1; row[1]=fx>>4; row[2]=(~(fy>>1))&inv_mask; row[3]=15616; break;
    default: row[0]=fx>>1; row[1]=fy>>3; row[2]=(~(fy>>1))&inv_mask; row[3]=14336; break;
    }
    const uint16_t quotient = loa4(row, exact_bits);
    const unsigned shift = (quotient >> 14) ? 0u : 1u;
    const uint16_t normalized = static_cast<uint16_t>((quotient << shift) & inv_mask);
    const uint32_t fraction = static_cast<uint32_t>((normalized >> 4) & 0x3ffu) << 13;
    const uint8_t exponent = static_cast<uint8_t>(((x >> 23) & 0xffu) -
                                                   ((y >> 23) & 0xffu) + 127u - shift);
    return ((x ^ y) & 0x80000000u) | (static_cast<uint32_t>(exponent) << 23) | fraction;
}

static void update(Metric& metric, uint32_t actual, double exact) {
    const double error = std::fabs(fp32_value(actual) - exact);
    metric.abs += error;
    metric.rel += error / exact;
    metric.sq += error * error;
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Vplsad_common_accuracy_top dut;
    constexpr int kCases = 10000;
    Metric metrics[7];
    int mismatches = 0;
    uint32_t state = 0x31415926u;
    for (int i = 0; i < kCases; ++i) {
        state = state * 1664525u + 1013904223u;
        const uint32_t x = 0x3f800000u | (state & 0x7fffffu);
        state = state * 1664525u + 1013904223u;
        const uint32_t y = 0x3f800000u | (state & 0x7fffffu);
        dut.x = x;
        dut.y = y;
        dut.eval();
        const uint32_t actual[7] = {
            dut.m4_out, dut.m6_out, dut.m8_out,
            dut.oadm_l0_out, dut.oadm_l1_out,
            dut.oadm_l2_out, dut.oadm_l3_out
        };
        const int exact_bits[3] = {4, 6, 8};
        const double exact = fp32_value(x) / fp32_value(y);
        for (int point = 0; point < 3; ++point) {
            if (actual[point] != plsad_reference(x, y, exact_bits[point]))
                ++mismatches;
            update(metrics[point], actual[point], exact);
        }
        for (int point = 3; point < 7; ++point)
            update(metrics[point], actual[point], exact);
    }

    std::ofstream out("plsad_common_accuracy.csv");
    out << "design,configuration,cases,mae,mred,rmse,rtl_reference_mismatches\n";
    const int exact_bits[3] = {4, 6, 8};
    for (int point = 0; point < 3; ++point) {
        out << "plsad_derived,m" << exact_bits[point] << ',' << kCases << ','
            << std::fixed << std::setprecision(9)
            << metrics[point].abs / kCases << ','
            << metrics[point].rel / kCases << ','
            << std::sqrt(metrics[point].sq / kCases) << ',' << mismatches << '\n';
    }
    for (int point = 3; point < 7; ++point) {
        out << "oadm_fixed_root_opt,L" << point - 3 << ',' << kCases << ','
            << std::fixed << std::setprecision(9)
            << metrics[point].abs / kCases << ','
            << metrics[point].rel / kCases << ','
            << std::sqrt(metrics[point].sq / kCases) << ",n/a\n";
    }
    dut.final();
    std::cout << "PLSAD RTL/reference mismatches: " << mismatches << '\n';
    return mismatches == 0 && out ? 0 : 1;
}
