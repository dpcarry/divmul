#!/usr/bin/env python3
"""Exhaustively sweep the L0 Q0.7 reciprocal-square coefficient."""

import argparse
import csv
from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np

from pace_grid_accuracy import ONE_Q, fp32_bits_to_real, pack_fp32, uniform_mantissas
from root_opt_search import centered_plane, scale_plane


def metrics(expected, actual):
    error = actual - expected
    absolute = np.abs(error)
    return {
        "mae": float(np.mean(absolute)),
        "mred": float(np.mean(absolute / expected)),
        "rmse": float(np.sqrt(np.mean(error * error))),
        "mean_error": float(np.mean(error)),
    }


def run(points, residual_drop, scale_drop):
    mantissas = uniform_mantissas(points)
    x_mantissa = mantissas[:, np.newaxis]
    y_mantissa = mantissas[np.newaxis, :]
    expected = x_mantissa.astype(np.float64) / y_mantissa.astype(np.float64)
    plane = centered_plane(
        x_mantissa, y_mantissa, 0, True, residual_drop
    )
    rows = []
    for coefficient in range(1, 128):
        core = scale_plane(plane, coefficient, 7, scale_drop)
        result = metrics(expected, fp32_bits_to_real(pack_fp32(core)))
        rows.append({
            "coefficient_integer": coefficient,
            "coefficient_q07": coefficient / 128.0,
            "cases": expected.size,
            "residual_drop": residual_drop,
            "scale_drop": scale_drop,
            **result,
        })
    return rows


def plot(rows, output_pdf, output_png, lower, upper):
    selected = [
        row for row in rows
        if lower <= row["coefficient_integer"] <= upper
    ]
    x = np.array([row["coefficient_integer"] for row in selected])
    y = np.array([row["rmse"] for row in selected])
    optimum = min(rows, key=lambda row: row["rmse"])
    y_theory = next(row["rmse"] for row in rows
                    if row["coefficient_integer"] == 57)

    plt.rcParams.update({
        "font.family": "serif",
        "font.size": 9,
        "axes.labelsize": 9,
        "legend.fontsize": 8,
        "xtick.labelsize": 8,
        "ytick.labelsize": 8,
    })
    figure, axis = plt.subplots(figsize=(3.45, 2.35))
    axis.plot(x, y, color="#1f4e79", marker="o", markersize=3.8,
              linewidth=1.35, label="Packed-output RMSE")
    axis.scatter([57], [y_theory], color="#d97706", s=34, zorder=4,
                 label=r"Nearest $2^7/(3/2)^2$: $C=57$")
    axis.scatter([optimum["coefficient_integer"]], [optimum["rmse"]],
                 color="#b42318", marker="*", s=74, zorder=5,
                 label="Minimum RMSE: C={}".format(
                     optimum["coefficient_integer"]))
    axis.axvline(57, color="#d97706", linewidth=0.8, linestyle="--",
                 alpha=0.65)
    axis.axvline(optimum["coefficient_integer"], color="#b42318",
                 linewidth=0.8, linestyle="--", alpha=0.65)
    axis.set_xlabel(r"Q0.7 LUT integer $C$ (scale $C/128$)")
    axis.set_ylabel("RMSE of FP32 quotient")
    axis.set_xticks(np.arange(lower, upper + 1))
    axis.grid(axis="y", color="#d0d5dd", linewidth=0.55)
    axis.spines["top"].set_visible(False)
    axis.spines["right"].set_visible(False)
    axis.legend(frameon=False, loc="upper left")
    figure.tight_layout(pad=0.45)
    output_pdf.parent.mkdir(parents=True, exist_ok=True)
    figure.savefig(output_pdf, bbox_inches="tight")
    figure.savefig(output_png, dpi=300, bbox_inches="tight")
    plt.close(figure)
    return optimum


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--points", type=int, default=500)
    parser.add_argument("--residual-drop", type=int, default=18)
    parser.add_argument("--scale-drop", type=int, default=18)
    parser.add_argument("--plot-lower", type=int, default=52)
    parser.add_argument("--plot-upper", type=int, default=65)
    parser.add_argument(
        "--csv", type=Path,
        default=Path("python/results_root_opt/l0_q07_coefficient_sweep.csv"),
    )
    parser.add_argument(
        "--pdf", type=Path,
        default=Path("paper_hardware/pictures/l0_q07_coefficient_sweep.pdf"),
    )
    parser.add_argument(
        "--png", type=Path,
        default=Path("paper_hardware/pictures/l0_q07_coefficient_sweep.png"),
    )
    args = parser.parse_args()
    rows = run(args.points, args.residual_drop, args.scale_drop)
    args.csv.parent.mkdir(parents=True, exist_ok=True)
    with args.csv.open("w", newline="") as output:
        writer = csv.DictWriter(
            output, fieldnames=list(rows[0]), lineterminator="\n"
        )
        writer.writeheader()
        writer.writerows(rows)
    optimum = plot(
        rows, args.pdf, args.png, args.plot_lower, args.plot_upper
    )
    for metric in ("mae", "mred", "rmse"):
        best = min(rows, key=lambda row: row[metric])
        print(
            "global Q0.7 {} minimum: C={}, scale={:.9f}, value={:.9f}"
            .format(metric.upper(), best["coefficient_integer"],
                    best["coefficient_q07"], best[metric])
        )


if __name__ == "__main__":
    main()
