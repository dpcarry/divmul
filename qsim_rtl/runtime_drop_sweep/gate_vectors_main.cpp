#include <cstdint>
#include <iomanip>
#include <iostream>
#include "Vruntime_drop_sweep_top.h"

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Vruntime_drop_sweep_top dut;
    uint32_t state = 0x6321c0deu;
    std::cout << std::hex << std::setfill('0');
    for (int i = 0; i < 20000; ++i) {
        state = state * 1664525u + 1013904223u;
        const uint32_t x_exp = 1u + ((state >> 23) % 254u);
        const uint32_t x = (state & 0x807fffffu) | (x_exp << 23);
        state = state * 1664525u + 1013904223u;
        const uint32_t y_exp = 1u + ((state >> 23) % 254u);
        const uint32_t y = (state & 0x807fffffu) | (y_exp << 23);
        dut.x = x;
        dut.y = y;
        dut.level = i & 3;
        dut.divide_mode = (i >> 2) & 1;
        dut.eval();
        std::cout << std::setw(8) << x << ' ' << std::setw(8) << y << ' '
                  << (i & 3) << ' ' << ((i >> 2) & 1) << ' '
                  << std::setw(8) << dut.candidate_result << '\n';
    }
    const uint32_t corner_x[4] = {
        0x00800000u, 0x7f7fffffu, 0x3f800000u, 0xbf800000u};
    const uint32_t corner_y[4] = {
        0x7f7fffffu, 0x00800000u, 0xbf800000u, 0x3f800000u};
    for (int i = 0; i < 4; ++i) {
        dut.x = corner_x[i];
        dut.y = corner_y[i];
        dut.level = i;
        dut.divide_mode = i & 1;
        dut.eval();
        std::cout << std::setw(8) << corner_x[i] << ' '
                  << std::setw(8) << corner_y[i] << ' ' << i << ' '
                  << (i & 1) << ' ' << std::setw(8)
                  << dut.candidate_result << '\n';
    }
    dut.final();
    return 0;
}

