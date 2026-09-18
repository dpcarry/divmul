#include <cmath>
#include <cstdint>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <string>
#include "Vpaper_h_common_accuracy_top.h"

struct Metric {
    double abs = 0.0;
    double rel = 0.0;
    double sq = 0.0;
};

static float bits_to_float(uint32_t bits) {
    union { uint32_t u; float f; } value = {bits};
    return value.f;
}

static void update(Metric& metric, uint32_t actual, double exact) {
    const double error = std::fabs(static_cast<double>(bits_to_float(actual)) - exact);
    metric.abs += error;
    metric.rel += error / std::fabs(exact);
    metric.sq += error * error;
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    if (argc != 2) {
        std::cerr << "usage: common_accuracy INPUTS_HEX\n";
        return 2;
    }
    std::ifstream inputs(argv[1]);
    if (!inputs) return 2;
    Vpaper_h_common_accuracy_top dut;
    Metric metrics[12];
    uint64_t pair;
    int cases = 0;
    while (cases < 200000 && inputs >> std::hex >> pair) {
        const uint32_t x = static_cast<uint32_t>(pair >> 32);
        const uint32_t y = static_cast<uint32_t>(pair);
        dut.x = x;
        dut.y = y;
        dut.eval();
        const uint32_t actual[12] = {
            dut.stdm_l0, dut.stdm_l1, dut.stdm_l2, dut.stdm_l3, dut.plsad_m8,
            dut.pace_l1, dut.pace_l2, dut.pace_l3, dut.pace_l4,
            dut.fpd2d_t17, dut.fpd2d_t16, dut.fpd2d_t15
        };
        const double exact = static_cast<double>(bits_to_float(x)) / bits_to_float(y);
        for (int i = 0; i < 12; ++i) update(metrics[i], actual[i], exact);
        ++cases;
    }
    if (cases != 200000) return 3;
    const char* names[12] = {
        "STDM L0", "STDM L1", "STDM L2", "STDM L3", "PLSAD m8",
        "PACE L1", "PACE L2", "PACE L3", "PACE L4",
        "FPD2D 8x8 t17", "FPD2D 8x8 t16", "FPD2D 8x8 t15"
    };
    std::ofstream out("common_accuracy.csv");
    out << "design,cases,mae,mred,rmse\n";
    for (int i = 0; i < 12; ++i) {
        out << names[i] << ',' << cases << ',' << std::fixed << std::setprecision(9)
            << metrics[i].abs / cases << ',' << metrics[i].rel / cases << ','
            << std::sqrt(metrics[i].sq / cases) << '\n';
    }
    dut.final();
    return out ? 0 : 4;
}
