#!/usr/bin/env python3
"""Sweep fixed OADM DIV truncation beyond the current per-level points."""

import argparse
import csv
import sys
from pathlib import Path

import numpy as np


ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "python"))

from fixed_level_root_search import metrics  # noqa: E402
from pace_grid_accuracy import (  # noqa: E402
    ONE_Q,
    fp32_bits_to_real,
    pack_fp32,
    uniform_mantissas,
)
from root_opt_search import centered_plane, scale_plane  # noqa: E402


CURRENT = {
    0: (18, 18, 7, (59,)),
    1: (16, 16, 7, (83, 42)),
    2: (16, 16, 8, (203, 136, 97, 73)),
    3: (16, 16, 8, (227, 182, 149, 124, 105, 90, 78, 68)),
}


def selected_coefficients(y_mantissa, level, table):
    if level == 0:
        segment = np.zeros_like(y_mantissa, dtype=np.int64)
    else:
        segment = ((y_mantissa - ONE_Q) >> (23 - level)).astype(np.int64)
    return np.asarray(table, dtype=np.int64)[segment]


def evaluate(expected, plane, coefficients, coefficient_bits, scale_drop):
    core = scale_plane(plane, coefficients, coefficient_bits, scale_drop)
    return metrics(expected, fp32_bits_to_real(pack_fp32(core)))


def tune_coefficients(
    plane, expected, y_mantissa, level, coefficient_bits, scale_drop
):
    segment = ((y_mantissa - ONE_Q) >> (23 - level)).astype(np.int64)
    if level == 0:
        segment = np.zeros_like(y_mantissa, dtype=np.int64)
    reduced = plane >> scale_drop
    reconstruction_shift = scale_drop - coefficient_bits
    coefficients = np.zeros(1 << level, dtype=np.int64)
    maximum = (1 << coefficient_bits) - 1

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
            actual = fp32_bits_to_real(pack_fp32(scale_plane(
                selected_reduced << scale_drop,
                coefficient,
                coefficient_bits,
                scale_drop,
            )))
            mse = float(np.mean((actual - selected_expected) ** 2))
            if best is None or mse < best[0]:
                best = (mse, coefficient)
        coefficients[index] = best[1]
    return coefficients, coefficients[segment]


def run(points):
    mantissas = uniform_mantissas(points)
    x_mantissa = mantissas[:, np.newaxis]
    y_mantissa = mantissas[np.newaxis, :]
    expected = x_mantissa.astype(np.float64) / y_mantissa.astype(np.float64)
    rows = []

    for level in range(4):
        current_res, current_scale, coefficient_bits, current_table = CURRENT[level]
        current_plane = centered_plane(
            x_mantissa, y_mantissa, level, True, current_res
        )
        current_metrics = evaluate(
            expected,
            current_plane,
            selected_coefficients(y_mantissa, level, current_table),
            coefficient_bits,
            current_scale,
        )

        max_residual_drop = 22 - level
        for residual_drop in range(current_res, max_residual_drop + 1):
            plane = centered_plane(
                x_mantissa, y_mantissa, level, True, residual_drop
            )
            for scale_drop in range(current_scale, 23):
                table, selected = tune_coefficients(
                    plane, expected, y_mantissa, level,
                    coefficient_bits, scale_drop,
                )
                result = evaluate(
                    expected, plane, selected, coefficient_bits, scale_drop
                )
                changes = tuple(
                    100.0 * (new / old - 1.0)
                    for new, old in zip(result, current_metrics)
                )
                active_residual_bits = 23 - residual_drop
                active_scale_bits = 25 - scale_drop
                rows.append({
                    "level": level,
                    "residual_drop": residual_drop,
                    "wn_drop": scale_drop,
                    "coefficient_bits": coefficient_bits,
                    "coefficients": " ".join(str(value) for value in table),
                    "cases": expected.size,
                    "mae": result[0],
                    "mred": result[1],
                    "rmse": result[2],
                    "mae_change_vs_current_pct": changes[0],
                    "mred_change_vs_current_pct": changes[1],
                    "rmse_change_vs_current_pct": changes[2],
                    "active_residual_bits": active_residual_bits,
                    "active_wn_bits": active_scale_bits,
                    "cost_proxy": (
                        2 * active_residual_bits * 6
                        + active_scale_bits * coefficient_bits
                    ),
                    "within_2pct": "yes" if max(changes) <= 2.0 else "no",
                    "within_5pct": "yes" if max(changes) <= 5.0 else "no",
                    "is_current": "yes" if (
                        residual_drop == current_res
                        and scale_drop == current_scale
                        and tuple(table) == current_table
                    ) else "no",
                })
    return rows


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--points", type=int, default=500)
    parser.add_argument(
        "--output", type=Path,
        default=Path(__file__).resolve().parent / "results" / "screen.csv",
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
            if row["level"] == level and row["within_2pct"] == "yes"
        ]
        candidates.sort(key=lambda row: (row["cost_proxy"], row["rmse"]))
        print(f"L{level} lowest-proxy candidates within 2% of current:")
        for row in candidates[:8]:
            print(
                "  res={residual_drop} wn={wn_drop} cost={cost_proxy} "
                "MAE={mae:.9f} MRED={mred:.9f} RMSE={rmse:.9f} "
                "delta=({mae_change_vs_current_pct:+.2f},"
                "{mred_change_vs_current_pct:+.2f},"
                "{rmse_change_vs_current_pct:+.2f}) "
                "coeff=[{coefficients}]".format(**row)
            )


if __name__ == "__main__":
    main()
