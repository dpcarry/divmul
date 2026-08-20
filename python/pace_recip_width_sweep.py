#!/usr/bin/env python3
"""Measure the L4 divider sensitivity to reciprocal coefficient width."""

import argparse
import csv
import time
from pathlib import Path

import numpy as np

from pace_grid_accuracy import (
    ONE_Q,
    correction_terms,
    finalize,
    fp32_bits_to_real,
    make_accumulator,
    pack_fp32,
    uniform_mantissas,
    update_accumulator,
)


WIDTHS = (4, 5, 6, 7, 8, 9, 10, 12, 16)


def coefficients(width):
    midpoints = 1.0 + (np.arange(16, dtype=np.float64) + 0.5) / 16.0
    return np.rint((1 << width) / (midpoints * midpoints)).astype(np.int64)


def run(points, chunk_size):
    mantissas = uniform_mantissas(points)
    y_mantissa = mantissas[np.newaxis, :]
    y_values = y_mantissa.astype(np.float64) / ONE_Q
    accumulators = {
        width: make_accumulator("DIV", f"L4_Q0.{width}") for width in WIDTHS
    }

    chunks = (points + chunk_size - 1) // chunk_size
    y_index = (y_mantissa >> 19) & 0xF
    tables = {width: coefficients(width) for width in WIDTHS}
    for chunk_index, start in enumerate(range(0, points, chunk_size), 1):
        stop = min(start + chunk_size, points)
        x_mantissa = mantissas[start:stop, np.newaxis]
        x_values = x_mantissa.astype(np.float64) / ONE_Q
        expected = x_values / y_values
        terms = correction_terms(x_mantissa, y_mantissa, True)
        shared = terms[0] + terms[1] + terms[2] + terms[3] + terms[4]

        for width in WIDTHS:
            core = np.right_shift(shared * tables[width][y_index], width)
            actual = fp32_bits_to_real(pack_fp32(core))
            update_accumulator(
                accumulators[width], x_values, y_values, expected, actual
            )

        if chunk_index == 1 or chunk_index % 10 == 0 or chunk_index == chunks:
            print(f"chunk {chunk_index}/{chunks}", flush=True)

    return [finalize(accumulators[width]) for width in WIDTHS]


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--points", type=int, default=10000)
    parser.add_argument("--chunk-size", type=int, default=128)
    parser.add_argument(
        "--output",
        type=Path,
        default=Path("python/results_pace_grid/recip_width_sweep.csv"),
    )
    args = parser.parse_args()

    start = time.monotonic()
    rows = run(args.points, args.chunk_size)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    with args.output.open("w", newline="") as output:
        writer = csv.DictWriter(output, fieldnames=list(rows[0]), lineterminator="\n")
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
