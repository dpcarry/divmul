#!/usr/bin/env python3
"""Search per-level precision pruning and reciprocal coefficients for OADM DIV."""

import argparse
import csv
from pathlib import Path

import numpy as np

from pace_grid_accuracy import (
    COEFFICIENTS,
    ONE_Q,
    correction_terms,
    fp32_bits_to_real,
    pack_fp32,
    uniform_mantissas,
)
from root_opt_search import centered_plane, metric_row, scale_plane


RESIDUAL_DROPS = (6, 8, 10, 12, 14, 16, 18, 20)
SCALE_DROPS = (8, 10, 12, 14, 16, 18, 20)
COEFFICIENT_BITS = (7, 8)


def tune_coefficients(
    plane, expected, y_mantissa, level, coefficient_bits, scale_drop
):
    """Minimize packed-output MSE independently in each level-n y cell."""
    segment = ((y_mantissa - ONE_Q) >> (23 - level)).astype(np.int64)
    if level == 0:
        segment = np.zeros_like(y_mantissa, dtype=np.int64)
    reduced = plane >> scale_drop
    reconstruction_shift = scale_drop - coefficient_bits
    coefficients = np.zeros(1 << level, dtype=np.int64)

    for index in range(1 << level):
        selected_columns = segment[0] == index
        selected_reduced = reduced[:, selected_columns]
        selected_float = selected_reduced.astype(np.float64)
        selected_expected = expected[:, selected_columns]
        numerator = ONE_Q * np.sum(selected_float * selected_expected)
        denominator = np.sum(selected_float * selected_float)
        continuous = numerator / denominator / (2.0 ** reconstruction_shift)
        center = int(round(continuous))
        maximum = (1 << coefficient_bits) - 1
        best = None
        for coefficient in range(max(1, center - 5),
                                 min(maximum, center + 5) + 1):
            core = scale_plane(
                selected_reduced << scale_drop,
                coefficient,
                coefficient_bits,
                scale_drop,
            )
            actual = fp32_bits_to_real(pack_fp32(core))
            mse = float(np.mean((actual - selected_expected) ** 2))
            if best is None or mse < best[0]:
                best = (mse, coefficient)
        coefficients[index] = best[1]

    return coefficients, coefficients[segment]


def metrics(expected, actual):
    error = actual - expected
    absolute = np.abs(error)
    return (
        float(np.mean(absolute)),
        float(np.mean(absolute / expected)),
        float(np.sqrt(np.mean(error * error))),
    )


def run(points):
    mantissas = uniform_mantissas(points)
    x_mantissa = mantissas[:, np.newaxis]
    y_mantissa = mantissas[np.newaxis, :]
    expected = (x_mantissa.astype(np.float64)
                / y_mantissa.astype(np.float64))
    y_index = (y_mantissa >> 19) & 0xF
    terms = correction_terms(x_mantissa, y_mantissa, True)
    baseline_plane = terms[0].copy()
    rows = []

    for level in range(4):
        if level:
            baseline_plane = baseline_plane + terms[level]
        coefficient = COEFFICIENTS[level][y_index]
        baseline_actual = fp32_bits_to_real(pack_fp32(
            scale_plane(baseline_plane, coefficient, 7, 0)
        ))
        baseline = metrics(expected, baseline_actual)
        rows.append({
            "level": level,
            "residual_drop": 0,
            "scale_drop": 0,
            "coefficient_bits": 7,
            "coefficients": "baseline",
            "cases": expected.size,
            "mae": baseline[0],
            "mred": baseline[1],
            "rmse": baseline[2],
            "mae_change_pct": 0.0,
            "mred_change_pct": 0.0,
            "rmse_change_pct": 0.0,
            "cost_proxy": "",
            "within_10pct": "yes",
        })

        for residual_drop in RESIDUAL_DROPS:
            plane = centered_plane(
                x_mantissa, y_mantissa, level, True, residual_drop
            )
            for scale_drop in SCALE_DROPS:
                for coefficient_bits in COEFFICIENT_BITS:
                    table, selected = tune_coefficients(
                        plane, expected, y_mantissa, level,
                        coefficient_bits, scale_drop,
                    )
                    core = scale_plane(
                        plane, selected, coefficient_bits, scale_drop
                    )
                    actual = fp32_bits_to_real(pack_fp32(core))
                    result = metrics(expected, actual)
                    changes = tuple(
                        100.0 * (new / old - 1.0)
                        for new, old in zip(result, baseline)
                    )
                    # Two residual-by-midpoint products plus the DIV scaler.
                    cost_proxy = (2 * (23 - residual_drop) * 6
                                  + (25 - scale_drop) * coefficient_bits)
                    rows.append({
                        "level": level,
                        "residual_drop": residual_drop,
                        "scale_drop": scale_drop,
                        "coefficient_bits": coefficient_bits,
                        "coefficients": " ".join(str(x) for x in table),
                        "cases": expected.size,
                        "mae": result[0],
                        "mred": result[1],
                        "rmse": result[2],
                        "mae_change_pct": changes[0],
                        "mred_change_pct": changes[1],
                        "rmse_change_pct": changes[2],
                        "cost_proxy": cost_proxy,
                        "within_10pct": (
                            "yes" if max(changes) <= 10.0 else "no"
                        ),
                    })
    return rows


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--points", type=int, default=1000)
    parser.add_argument(
        "--output", type=Path,
        default=Path("python/results_root_opt/fixed_level_sweep.csv"),
    )
    args = parser.parse_args()
    rows = run(args.points)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    with args.output.open("w", newline="") as output:
        writer = csv.DictWriter(
            output, fieldnames=list(rows[0]), lineterminator="\n"
        )
        writer.writeheader()
        writer.writerows(rows)

    for level in range(4):
        feasible = [
            row for row in rows
            if row["level"] == level and row["within_10pct"] == "yes"
            and row["residual_drop"] != 0
        ]
        feasible.sort(key=lambda row: (row["cost_proxy"], row["rmse"]))
        print(f"L{level} lowest-cost feasible candidates:")
        for row in feasible[:8]:
            print(
                "  res={residual_drop:2d} scale={scale_drop:2d} "
                "Q0.{coefficient_bits} cost={cost_proxy:3d} "
                "MAE={mae:.9f} MRED={mred:.9f} RMSE={rmse:.9f} "
                "delta=({mae_change_pct:+.2f},{mred_change_pct:+.2f},"
                "{rmse_change_pct:+.2f}) coeff=[{coefficients}]".format(**row)
            )


if __name__ == "__main__":
    main()
