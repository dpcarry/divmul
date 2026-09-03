#include "Vruntime_centered_equiv_wrapper.h"
#include "verilated.h"
#include <cstdint>
#include <cstdio>

static uint32_t lcg(uint32_t &state) {
    state = state * 1664525u + 1013904223u;
    return state;
}

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);
    Vruntime_centered_equiv_wrapper top;
    uint32_t state = 0x5a172026u;
    for (int i = 0; i < 20000; ++i) {
        top.x_mantissa = 0x800000u | (lcg(state) & 0x7fffffu);
        top.y_mantissa = 0x800000u | (lcg(state) & 0x7fffffu);
        top.level = lcg(state) & 3u;
        top.divide_mode = lcg(state) & 1u;
        top.eval();
        if (top.direct_plane != top.centered_plane) {
            std::printf("Mismatch i=%d level=%u mode=%u x=%06x y=%06x direct=%d centered=%d\n",
                        i, top.level, top.divide_mode,
                        top.x_mantissa, top.y_mantissa,
                        static_cast<int32_t>(top.direct_plane),
                        static_cast<int32_t>(top.centered_plane));
            return 1;
        }
    }
    std::puts("PASS runtime centered-residual plane matches direct plane");
    return 0;
}
