#include "Vsimdive_original_fp32_wrapper.h"
#include "verilated.h"

#include <cstdint>
#include <iomanip>
#include <iostream>

static uint32_t next(uint32_t state) {
    return state * 1664525u + 1013904223u;
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Vsimdive_original_fp32_wrapper dut;
    uint32_t state = 0x31415926u;
    for (unsigned mode = 0; mode < 2; ++mode) {
        for (unsigned i = 0; i < 10000; ++i) {
            state = next(state);
            const uint32_t x = 0x3f800000u | (state & 0x007fffffu);
            state = next(state);
            const uint32_t y = 0x3f800000u | (state & 0x007fffffu);
            dut.x = x;
            dut.y = y;
            dut.divide_mode = mode;
            dut.eval();
            std::cout << std::hex << mode << std::setfill('0')
                      << std::setw(8) << x << std::setw(8) << y
                      << std::setw(8) << static_cast<uint32_t>(dut.result)
                      << '\n';
        }
    }
    return 0;
}
