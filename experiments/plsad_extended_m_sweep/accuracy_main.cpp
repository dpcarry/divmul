#include <cmath>
#include <cstdint>
#include <fstream>
#include <iomanip>
#include <iostream>
#include "Vplsad_extended_m_accuracy_top.h"

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
    if (exact_bits == 15) {
        unsigned sum = 0;
        for (int i = 0; i < 4; ++i)
            sum += row[i];
        return static_cast<uint16_t>(sum & 0x7fffu);
    }
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

static uint32_t reference(uint32_t x, uint32_t y, int exact_bits) {
    const uint16_t fx = static_cast<uint16_t>(((x >> 13) & 0x3ffu) << 4);
    const uint16_t fy = static_cast<uint16_t>(((y >> 13) & 0x3ffu) << 4);
    const uint16_t mask = 0x7fffu;
    uint16_t row[4] = {};
    switch ((fy >> 11) & 7u) {
    case 0: row[0]=fx; row[1]=(~fy)&mask; row[2]=(~(fy>>2))&mask; row[3]=16384; break;
    case 1: row[0]=fx; row[1]=(~(fx>>3))&mask; row[2]=(~fy)&mask; row[3]=16640; break;
    case 2: row[0]=fx; row[1]=(~(fx>>2))&mask; row[2]=(~fy)&mask; row[3]=17664; break;
    case 3: row[0]=fx; row[1]=(~(fx>>2))&mask; row[2]=(~(fy>>1))&mask; row[3]=14592; break;
    case 4: row[0]=fx>>1; row[1]=fx>>3; row[2]=(~(fy>>1))&mask; row[3]=15232; break;
    case 5: row[0]=fx>>1; row[1]=fx>>3; row[2]=(~(fy>>1))&mask; row[3]=15104; break;
    case 6: row[0]=fx>>1; row[1]=fx>>4; row[2]=(~(fy>>1))&mask; row[3]=15616; break;
    default: row[0]=fx>>1; row[1]=fy>>3; row[2]=(~(fy>>1))&mask; row[3]=14336; break;
    }
    const uint16_t quotient = loa4(row, exact_bits);
    const unsigned shift = (quotient >> 14) ? 0u : 1u;
    const uint16_t normalized = static_cast<uint16_t>((quotient << shift) & mask);
    const uint32_t fraction = static_cast<uint32_t>((normalized >> 4) & 0x3ffu) << 13;
    const uint8_t exponent = static_cast<uint8_t>(((x >> 23) & 0xffu) -
                                                   ((y >> 23) & 0xffu) + 127u - shift);
    return ((x ^ y) & 0x80000000u) | (static_cast<uint32_t>(exponent) << 23) | fraction;
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Vplsad_extended_m_accuracy_top dut;
    constexpr int cases = 10000;
    const int exact_bits[4] = {8, 10, 12, 15};
    Metric metrics[4];
    int mismatches[4] = {};
    uint32_t state = 0x31415926u;
    for (int i = 0; i < cases; ++i) {
        state = state * 1664525u + 1013904223u;
        const uint32_t x = 0x3f800000u | (state & 0x7fffffu);
        state = state * 1664525u + 1013904223u;
        const uint32_t y = 0x3f800000u | (state & 0x7fffffu);
        dut.x = x;
        dut.y = y;
        dut.eval();
        const uint32_t outputs[4] = {dut.m8_out, dut.m10_out, dut.m12_out, dut.m15_out};
        const double exact = fp32_value(x) / fp32_value(y);
        for (int point = 0; point < 4; ++point) {
            mismatches[point] += outputs[point] != reference(x, y, exact_bits[point]);
            const double error = std::fabs(fp32_value(outputs[point]) - exact);
            metrics[point].abs += error;
            metrics[point].rel += error / exact;
            metrics[point].sq += error * error;
        }
    }
    std::ofstream out("results/accuracy.csv");
    out << "exact_msb_bits,cases,mae,mred,rmse,rtl_reference_mismatches\n";
    int total_mismatches = 0;
    for (int point = 0; point < 4; ++point) {
        out << exact_bits[point] << ',' << cases << ',' << std::fixed
            << std::setprecision(9) << metrics[point].abs / cases << ','
            << metrics[point].rel / cases << ','
            << std::sqrt(metrics[point].sq / cases) << ','
            << mismatches[point] << '\n';
        total_mismatches += mismatches[point];
    }
    dut.final();
    std::cout << "PLSAD extended-m RTL/reference mismatches: "
              << total_mismatches << '\n';
    return total_mismatches == 0 && out ? 0 : 1;
}
