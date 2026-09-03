#!/usr/bin/env python3
"""Generate independent integer-model vectors for root_opt RTL cross-checks."""

import argparse
from pathlib import Path

import numpy as np

from pace_grid_accuracy import COEFFICIENTS, ONE_Q, pack_fp32
from root_opt_search import centered_plane, scale_plane


def root_plane(x_mantissa, y_mantissa, level, divide_mode):
    return centered_plane(x_mantissa, y_mantissa, level, divide_mode, 10)


FIXED_SELECTIONS = (
    (18, 18, 7, (59,)),
    (16, 16, 7, (83, 42)),
    (10, 14, 8, (203, 136, 97, 73)),
    (16, 16, 8, (227, 182, 149, 124, 105, 90, 78, 68)),
)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--cases", type=int, default=1000)
    parser.add_argument(
        "--output", type=Path,
        default=Path("qsim_rtl/root_opt/root_opt_crosscheck_vectors.txt")
    )
    args = parser.parse_args()
    rng = np.random.default_rng(6321)
    args.output.parent.mkdir(parents=True, exist_ok=True)

    with args.output.open("w") as output:
        for index in range(args.cases):
            x_fraction = int(rng.integers(0, ONE_Q))
            y_fraction = int(rng.integers(0, ONE_Q))
            level = index & 3
            divide_mode = (index >> 2) & 1
            x_mantissa = np.array([[ONE_Q + x_fraction]], dtype=np.int64)
            y_mantissa = np.array([[ONE_Q + y_fraction]], dtype=np.int64)
            plane = root_plane(
                x_mantissa, y_mantissa, level, bool(divide_mode)
            )
            if divide_mode:
                y_index = (y_mantissa >> 19) & 0xF
                coefficient = COEFFICIENTS[level][y_index]
                runtime_core = scale_plane(plane, coefficient, 7, 14)
            else:
                runtime_core = plane
            runtime_result = int(pack_fp32(runtime_core)[0, 0])

            fixed_results = []
            for fixed_level, selection in enumerate(FIXED_SELECTIONS):
                residual_drop, scale_drop, bits, table = selection
                fixed_plane = centered_plane(
                    x_mantissa, y_mantissa, fixed_level, True, residual_drop
                )
                segment = (0 if fixed_level == 0 else
                           int((y_mantissa[0, 0] - ONE_Q)
                               >> (23 - fixed_level)))
                fixed_coefficient = np.array(
                    [[table[segment]]], dtype=np.int64
                )
                fixed_core = scale_plane(
                    fixed_plane, fixed_coefficient, bits, scale_drop
                )
                fixed_results.append(int(pack_fp32(fixed_core)[0, 0]))
            output.write(
                "%08x %08x %d %d %08x %08x %08x %08x %08x\n" % (
                    (127 << 23) | x_fraction,
                    (127 << 23) | y_fraction,
                    level,
                    divide_mode,
                    runtime_result,
                    *fixed_results,
                )
            )


if __name__ == "__main__":
    main()
