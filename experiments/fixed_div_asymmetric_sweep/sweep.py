#!/usr/bin/env python3
"""Screen independent x/y residual LSB truncation for fixed OADM DIV."""

import argparse
import csv
import sys
from pathlib import Path

import numpy as np


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
sys.path.insert(0, str(ROOT / "python"))

from fixed_level_root_search import metrics  # noqa: E402
from pace_grid_accuracy import (  # noqa: E402
    ONE_Q,
    fp32_bits_to_real,
    pack_fp32,
    uniform_mantissas,
)
from root_opt_search import midpoint_numerators, scale_plane  # noqa: E402


CURRENT = {
    0: (18, 18, 7, (59,)),
    1: (16, 16, 7, (83, 42)),
    2: (16, 16, 8, (203, 136, 97, 73)),
    3: (16, 16, 8, (227, 182, 149, 124, 105, 90, 78, 68)),
}


def asymmetric_centered_plane(x_mantissa, y_mantissa, level, x_drop, y_drop):
    midpoint_x = midpoint_numerators(x_mantissa, level)
    midpoint_y = midpoint_numerators(y_mantissa, level)
    residual_x = x_mantissa - (midpoint_x << 19)
    residual_y = y_mantissa - (midpoint_y << 19)
    residual_x = (residual_x >> x_drop) << x_drop
    residual_y = (residual_y >> y_drop) << y_drop
    x_term = (residual_x * midpoint_y) >> 4
    y_term = (residual_y * midpoint_x) >> 4
    constant = midpoint_x * midpoint_y << 15
    return constant + x_term - y_term


def selected_coefficients(y_mantissa, level, table):
    if level == 0:
        segment = np.zeros_like(y_mantissa, dtype=np.int64)
    else:
        segment = ((y_mantissa - ONE_Q) >> (23 - level)).astype(np.int64)
    return np.asarray(table, dtype=np.int64)[segment]


def evaluate(expected, plane, coefficients, coefficient_bits, wn_drop):
    core = scale_plane(plane, coefficients, coefficient_bits, wn_drop)
    return metrics(expected, fp32_bits_to_real(pack_fp32(core)))


def tune_coefficients(plane, expected, y_mantissa, level, bits, wn_drop):
    if level == 0:
        segment = np.zeros_like(y_mantissa, dtype=np.int64)
    else:
        segment = ((y_mantissa - ONE_Q) >> (23 - level)).astype(np.int64)
    reduced = plane >> wn_drop
    reconstruction_shift = wn_drop - bits
    table = np.zeros(1 << level, dtype=np.int64)
    maximum = (1 << bits) - 1

    for index in range(1 << level):
        selected_columns = segment[0] == index
        selected_reduced = reduced[:, selected_columns]
        selected_expected = expected[:, selected_columns]
        selected_float = selected_reduced.astype(np.float64)
        numerator = ONE_Q * np.sum(selected_float * selected_expected)
        denominator = np.sum(selected_float * selected_float)
        continuous = numerator / denominator / (2.0 ** reconstruction_shift)
        center = min(maximum, max(1, int(round(continuous))))
        best = None
        for coefficient in range(max(1, center - 5),
                                 min(maximum, center + 5) + 1):
            selected_core = scale_plane(
                selected_reduced << wn_drop,
                coefficient,
                bits,
                wn_drop,
            )
            actual = fp32_bits_to_real(pack_fp32(selected_core))
            mse = float(np.mean((actual - selected_expected) ** 2))
            if best is None or mse < best[0]:
                best = (mse, coefficient)
        table[index] = best[1]
    return table, table[segment]


def run(points):
    mantissas = uniform_mantissas(points)
    x_mantissa = mantissas[:, np.newaxis]
    y_mantissa = mantissas[np.newaxis, :]
    expected = x_mantissa.astype(np.float64) / y_mantissa.astype(np.float64)
    rows = []

    for level in range(4):
        current_drop, wn_drop, bits, current_table = CURRENT[level]
        current_plane = asymmetric_centered_plane(
            x_mantissa, y_mantissa, level, current_drop, current_drop
        )
        current_metrics = evaluate(
            expected,
            current_plane,
            selected_coefficients(y_mantissa, level, current_table),
            bits,
            wn_drop,
        )
        maximum_drop = 22 - level
        for x_drop in range(current_drop, maximum_drop + 1):
            for y_drop in range(current_drop, maximum_drop + 1):
                plane = asymmetric_centered_plane(
                    x_mantissa, y_mantissa, level, x_drop, y_drop
                )
                table, selected = tune_coefficients(
                    plane, expected, y_mantissa, level, bits, wn_drop
                )
                result = evaluate(expected, plane, selected, bits, wn_drop)
                changes = tuple(
                    100.0 * (new / old - 1.0)
                    for new, old in zip(result, current_metrics)
                )
                active_x_bits = 23 - x_drop
                active_y_bits = 23 - y_drop
                rows.append({
                    "level": level,
                    "x_residual_drop": x_drop,
                    "y_residual_drop": y_drop,
                    "wn_drop": wn_drop,
                    "coefficient_bits": bits,
                    "coefficients": " ".join(str(value) for value in table),
                    "cases": expected.size,
                    "mae": result[0],
                    "mred": result[1],
                    "rmse": result[2],
                    "mae_change_vs_current_pct": changes[0],
                    "mred_change_vs_current_pct": changes[1],
                    "rmse_change_vs_current_pct": changes[2],
                    "active_x_residual_bits": active_x_bits,
                    "active_y_residual_bits": active_y_bits,
                    "cost_proxy": 6 * (active_x_bits + active_y_bits),
                    "within_2pct": "yes" if max(changes) <= 2.0 else "no",
                    "within_5pct": "yes" if max(changes) <= 5.0 else "no",
                    "is_current": "yes" if (
                        x_drop == current_drop
                        and y_drop == current_drop
                        and tuple(table) == current_table
                    ) else "no",
                })
    return rows


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--points", type=int, default=500)
    parser.add_argument(
        "--output",
        type=Path,
        default=HERE / "results" / "screen.csv",
    )
    args = parser.parse_args()
    rows = run(args.points)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    with args.output.open("w", newline="") as output:
        writer = csv.DictWriter(output, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)

    for level in range(4):
        candidates = [
            row for row in rows
            if row["level"] == level
            and row["within_5pct"] == "yes"
            and row["is_current"] == "no"
        ]
        candidates.sort(key=lambda row: (row["cost_proxy"], row["rmse"]))
        print(f"L{level} asymmetric candidates within 5% of current:")
        for row in candidates[:10]:
            print(
                "  dx={x_residual_drop} dy={y_residual_drop} "
                "cost={cost_proxy} MRED={mred:.9f} RMSE={rmse:.9f} "
                "delta=({mae_change_vs_current_pct:+.2f},"
                "{mred_change_vs_current_pct:+.2f},"
                "{rmse_change_vs_current_pct:+.2f}) "
                "coeff=[{coefficients}]".format(**row)
            )


if __name__ == "__main__":
    main()
