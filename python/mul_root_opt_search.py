#!/usr/bin/env python3
"""Search precision-pruned fixed-level OADM multiplier planes."""

import argparse
import csv
from pathlib import Path

import numpy as np

from pace_grid_accuracy import (
    ONE_Q,
    correction_terms,
    fp32_bits_to_real,
    pack_fp32,
    uniform_mantissas,
)
from root_opt_search import midpoint_numerators


RESIDUAL_DROPS = tuple(range(4, 21, 2))
VARIANTS = ("floor", "midpoint_bias", "round_nearest")


def quantized_plane(x_mantissa, y_mantissa, level, drop, variant):
    midpoint_x = midpoint_numerators(x_mantissa, level)
    midpoint_y = midpoint_numerators(y_mantissa, level)
    residual_x = x_mantissa - (midpoint_x << 19)
    residual_y = y_mantissa - (midpoint_y << 19)

    if variant == "round_nearest":
        half = 1 << (drop - 1)
        residual_x = ((residual_x + half) >> drop) << drop
        residual_y = ((residual_y + half) >> drop) << drop
    else:
        residual_x = (residual_x >> drop) << drop
        residual_y = (residual_y >> drop) << drop

    plane = ((midpoint_x * midpoint_y) << 15)
    plane += (residual_x * midpoint_y) >> 4
    plane += (residual_y * midpoint_x) >> 4

    if variant == "midpoint_bias":
        # Arithmetic truncation loses half a quantization interval on average.
        # Since midpoint integers represent k*16, compensate both residual
        # products with (Kx + Ky) * 2^(drop-5) in the Q23 plane domain.
        plane += (midpoint_x + midpoint_y) << (drop - 5)
    return plane


def metrics(expected, actual):
    error = actual - expected
    absolute = np.abs(error)
    return (
        float(np.mean(absolute)),
        float(np.mean(absolute / expected)),
        float(np.sqrt(np.mean(error * error))),
        float(np.mean(error)),
    )


def run(points):
    mantissas = uniform_mantissas(points)
    x_mantissa = mantissas[:, np.newaxis]
    y_mantissa = mantissas[np.newaxis, :]
    expected = (x_mantissa.astype(np.float64)
                * y_mantissa.astype(np.float64) / (ONE_Q * ONE_Q))
    rows = []

    baseline_plane = correction_terms(x_mantissa, y_mantissa, False)[0].copy()
    for level in range(4):
        if level:
            baseline_plane += correction_terms(
                x_mantissa, y_mantissa, False
            )[level]
        baseline = metrics(
            expected, fp32_bits_to_real(pack_fp32(baseline_plane))
        )
        rows.append({
            "level": level,
            "residual_drop": 0,
            "variant": "current_oadm",
            "cases": expected.size,
            "mae": baseline[0],
            "mred": baseline[1],
            "rmse": baseline[2],
            "mean_error": baseline[3],
            "mae_change_pct": 0.0,
            "mred_change_pct": 0.0,
            "rmse_change_pct": 0.0,
            "cost_proxy": "",
            "within_10pct": "yes",
        })

        for drop in RESIDUAL_DROPS:
            for variant in VARIANTS:
                plane = quantized_plane(
                    x_mantissa, y_mantissa, level, drop, variant
                )
                result = metrics(
                    expected, fp32_bits_to_real(pack_fp32(plane))
                )
                changes = tuple(
                    100.0 * (new / old - 1.0)
                    for new, old in zip(result[:3], baseline[:3])
                )
                # Two residual-by-midpoint products. Bias/rounding overhead is
                # deliberately separate because this proxy is only a screen.
                residual_width = max(1, 23 - level - drop)
                overhead = 0 if variant == "floor" else (
                    6 if variant == "midpoint_bias" else 2 * residual_width
                )
                rows.append({
                    "level": level,
                    "residual_drop": drop,
                    "variant": variant,
                    "cases": expected.size,
                    "mae": result[0],
                    "mred": result[1],
                    "rmse": result[2],
                    "mean_error": result[3],
                    "mae_change_pct": changes[0],
                    "mred_change_pct": changes[1],
                    "rmse_change_pct": changes[2],
                    "cost_proxy": 2 * residual_width * 6 + overhead,
                    "within_10pct": (
                        "yes" if max(changes) <= 10.0 else "no"
                    ),
                })
    return rows


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--points", type=int, default=500)
    parser.add_argument(
        "--output", type=Path,
        default=Path("python/results_mul_root_opt/mul_fixed_sweep.csv"),
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
            if row["level"] == level and row["residual_drop"]
            and row["within_10pct"] == "yes"
        ]
        feasible.sort(key=lambda row: (row["cost_proxy"], row["rmse"]))
        print(f"L{level} lowest-cost feasible candidates:")
        for row in feasible[:10]:
            print(
                "  drop={residual_drop:2d} {variant:13s} cost={cost_proxy:3d} "
                "MAE={mae:.9f} MRED={mred:.9f} RMSE={rmse:.9f} "
                "ME={mean_error:+.9f} delta=({mae_change_pct:+.2f},"
                "{mred_change_pct:+.2f},{rmse_change_pct:+.2f})".format(**row)
            )


if __name__ == "__main__":
    main()
