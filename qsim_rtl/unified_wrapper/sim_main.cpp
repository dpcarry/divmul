#include "Vwrapper_equiv_harness.h"
#include "verilated.h"

#include <cstdint>
#include <cstdio>
#include <random>

static uint32_t pack(uint32_t x, uint32_t y, uint32_t fraction,
                     int adjust, bool divide_mode) {
    const uint32_t sign = ((x ^ y) >> 31) & 1U;
    const int ex = (x >> 23) & 0xff;
    const int ey = (y >> 23) & 0xff;
    const uint32_t exponent = divide_mode
        ? static_cast<uint32_t>(ex - ey + 127 + adjust) & 0xffU
        : static_cast<uint32_t>(ex + ey - 127 + adjust) & 0xffU;
    return (sign << 31) | (exponent << 23) | (fraction & 0x7fffffU);
}

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);
    Vwrapper_equiv_harness dut;
    std::mt19937 rng(0x6321);
    constexpr int cases = 100000;
    const int adjustments[] = {-2, -1, 0, 1};

    for (int i = 0; i < cases; ++i) {
        const uint32_t x = rng();
        const uint32_t y = rng();
        const uint32_t fraction = rng() & 0x7fffffU;
        const bool shift = rng() & 1U;
        const bool divide_mode = rng() & 1U;
        const int adjust = adjustments[rng() & 3U];

        dut.x = x;
        dut.y = y;
        dut.mantissa_out = fraction;
        dut.shift = shift;
        dut.divide_mode = divide_mode;
        dut.exponent_adjust = adjust & 7;
        dut.eval();

        if (dut.mantissa_x != (x & 0x7fffffU) ||
            dut.mantissa_y != (y & 0x7fffffU) ||
            dut.pace_result != pack(x, y, fraction, -shift, true) ||
            dut.shared_result != pack(x, y, fraction, adjust, divide_mode)) {
            std::fprintf(stderr, "FAIL at vector %d\n", i);
            return 1;
        }
    }
    std::printf("PASS: %d unified-wrapper vectors\n", cases);
    return 0;
}
