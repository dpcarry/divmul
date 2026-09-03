#!/usr/bin/env python3
"""Generate independent integer-model vectors for root_opt RTL cross-checks."""

import argparse
from pathlib import Path

import numpy as np

from pace_grid_accuracy import COEFFICIENTS, ONE_Q, pack_fp32
from root_opt_search import centered_plane, scale_plane


def root_plane(x_mantissa, y_mantissa, level, divide_mode):
    return centered_plane(x_mantissa, y_mantissa, level, divide_mode, 10)


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

            l2_plane = root_plane(x_mantissa, y_mantissa, 2, True)
            l2_index = int((y_mantissa[0, 0] - ONE_Q) >> 21)
            l2_coefficient = np.array(
                [[(203, 136, 97, 73)[l2_index]]], dtype=np.int64
            )
            l2_core = scale_plane(l2_plane, l2_coefficient, 8, 14)
            l2_result = int(pack_fp32(l2_core)[0, 0])
            output.write(
                "%08x %08x %d %d %08x %08x\n" % (
                    (127 << 23) | x_fraction,
                    (127 << 23) | y_fraction,
                    level,
                    divide_mode,
                    runtime_result,
                    l2_result,
                )
            )


if __name__ == "__main__":
    main()
