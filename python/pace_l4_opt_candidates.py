#!/usr/bin/env python3
"""Evaluate L4 correction/LUT combinations on the PACE-style mantissa grid."""

import argparse
import csv
import time
from pathlib import Path

import numpy as np

from pace_grid_accuracy import (
    COEFFICIENT_BITS,
    COEFFICIENTS,
    ONE_Q,
    correction_terms,
    finalize,
    fp32_bits_to_real,
    make_accumulator,
    pack_fp32,
    uniform_mantissas,
    update_accumulator,
)


CANDIDATES = (
    ("corr3_lut3", 3, 3),
    ("corr3_lut4", 3, 4),
    ("corr4_lut3", 4, 3),
    ("corr4_lut4_current", 4, 4),
)


def run(points, chunk_size):
    mantissas = uniform_mantissas(points)
    y_mantissa = mantissas[np.newaxis, :]
    y_values = y_mantissa.astype(np.float64) / ONE_Q
    accumulators = {
        name: make_accumulator("DIV", name) for name, _, _ in CANDIDATES
    }
    chunks = (points + chunk_size - 1) // chunk_size

    for chunk_index, start in enumerate(range(0, points, chunk_size), 1):
        stop = min(start + chunk_size, points)
        x_mantissa = mantissas[start:stop, np.newaxis]
        x_values = x_mantissa.astype(np.float64) / ONE_Q
        expected = x_values / y_values
        terms = correction_terms(x_mantissa, y_mantissa, True)
        shared3 = terms[0] + terms[1] + terms[2] + terms[3]
        shared4 = shared3 + terms[4]
        y_index = (y_mantissa >> 19) & 0xF

        for name, correction_depth, lut_level in CANDIDATES:
            shared = shared3 if correction_depth == 3 else shared4
            coefficient = COEFFICIENTS[lut_level][y_index]
            core = np.right_shift(shared * coefficient, COEFFICIENT_BITS)
            actual = fp32_bits_to_real(pack_fp32(core))
            update_accumulator(
                accumulators[name], x_values, y_values, expected, actual
            )

        if chunk_index == 1 or chunk_index % 10 == 0 or chunk_index == chunks:
            print(f"chunk {chunk_index}/{chunks}", flush=True)

    return [finalize(accumulators[name]) for name, _, _ in CANDIDATES]


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--points", type=int, default=10000)
    parser.add_argument("--chunk-size", type=int, default=128)
    parser.add_argument(
        "--output",
        type=Path,
        default=Path("results_pace_l4_candidates.csv"),
    )
    args = parser.parse_args()

    start = time.monotonic()
    rows = run(args.points, args.chunk_size)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    with args.output.open("w", newline="") as output:
        fields = list(rows[0])
        writer = csv.DictWriter(output, fieldnames=fields, lineterminator="\n")
        writer.writeheader()
        writer.writerows(rows)

    for row in rows:
        print(
            f"{row['level']}: MAE={row['mae']:.9f} "
            f"MRED={row['mred']:.9f} RMSE={row['rmse']:.9f}"
        )
    print(f"elapsed={time.monotonic() - start:.1f}s")


if __name__ == "__main__":
    main()
