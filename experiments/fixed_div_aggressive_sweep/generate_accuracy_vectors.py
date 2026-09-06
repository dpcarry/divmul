#!/usr/bin/env python3
"""Generate common-vector metrics and independent RTL reference outputs."""

import csv
import sys
from pathlib import Path

import numpy as np


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
sys.path.insert(0, str(ROOT / "python"))

from pace_grid_accuracy import (  # noqa: E402
    ONE_Q,
    fp32_bits_to_real,
    pack_fp32,
)
from root_opt_search import centered_plane, scale_plane  # noqa: E402


CONFIGURATIONS = (
    ("current_L0_r18_w18", 0, 18, 18, 7, (59,)),
    ("candidate_L0_r19_w18", 0, 19, 18, 7, (59,)),
    ("current_L1_r16_w16", 1, 16, 16, 7, (83, 42)),
    ("candidate_L1_r16_w17", 1, 16, 17, 7, (83, 42)),
)


def model_output(x_fraction, y_fraction, configuration):
    _, level, residual_drop, wn_drop, bits, table = configuration
    x_mantissa = np.array([[ONE_Q + x_fraction]], dtype=np.int64)
    y_mantissa = np.array([[ONE_Q + y_fraction]], dtype=np.int64)
    plane = centered_plane(
        x_mantissa, y_mantissa, level, True, residual_drop
    )
    segment = 0 if level == 0 else y_fraction >> (23 - level)
    coefficient = np.array([[table[segment]]], dtype=np.int64)
    core = scale_plane(plane, coefficient, bits, wn_drop)
    return int(pack_fp32(core)[0, 0])


def main():
    cases = 10000
    state = 0x31415926
    accumulators = {
        name: {"abs": 0.0, "rel": 0.0, "sq": 0.0}
        for name, *_ in CONFIGURATIONS
    }
    results = HERE / "results"
    results.mkdir(exist_ok=True)

    with (results / "rtl_vectors.txt").open("w") as vectors:
        for _ in range(cases):
            state = (state * 1664525 + 1013904223) & 0xFFFFFFFF
            x_fraction = state & 0x7FFFFF
            state = (state * 1664525 + 1013904223) & 0xFFFFFFFF
            y_fraction = state & 0x7FFFFF
            x_bits = 0x3F800000 | x_fraction
            y_bits = 0x3F800000 | y_fraction
            exact = (1.0 + x_fraction / ONE_Q) / (1.0 + y_fraction / ONE_Q)
            outputs = [
                model_output(x_fraction, y_fraction, configuration)
                for configuration in CONFIGURATIONS
            ]
            vectors.write(
                "%08x %08x %s\n" % (
                    x_bits, y_bits,
                    " ".join("%08x" % value for value in outputs),
                )
            )
            for configuration, output in zip(CONFIGURATIONS, outputs):
                name = configuration[0]
                actual = float(fp32_bits_to_real(
                    np.array([output], dtype=np.uint32)
                )[0])
                error = abs(actual - exact)
                accumulators[name]["abs"] += error
                accumulators[name]["rel"] += error / exact
                accumulators[name]["sq"] += error * error

    with (results / "common_accuracy.csv").open("w", newline="") as output:
        writer = csv.writer(output)
        writer.writerow(("design", "cases", "mae", "mred", "rmse"))
        for name, *_ in CONFIGURATIONS:
            accumulator = accumulators[name]
            writer.writerow((
                name,
                cases,
                accumulator["abs"] / cases,
                accumulator["rel"] / cases,
                (accumulator["sq"] / cases) ** 0.5,
            ))


if __name__ == "__main__":
    main()
