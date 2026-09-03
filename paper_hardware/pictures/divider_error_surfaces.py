#!/usr/bin/env python3
"""Recreate the MATLAB-style OADM divider error surfaces for levels 0--3."""

from __future__ import annotations

import csv
import math
from pathlib import Path

import matplotlib

matplotlib.use("Agg")

import matplotlib.pyplot as plt
from matplotlib.ticker import FormatStrFormatter, MaxNLocator
import numpy as np


OUT_DIR = Path(__file__).resolve().parent
LEVELS = range(4)
SAMPLES_PER_AXIS = 80


def midpoint_grid(values: np.ndarray, level: int) -> tuple[np.ndarray, np.ndarray]:
    partitions = 1 << level
    index = np.minimum(((values - 1.0) * partitions).astype(int), partitions - 1)
    return 1.0 + (index + 0.5) / partitions, index


def divider_plane(x_grid: np.ndarray, y_grid: np.ndarray, level: int) -> np.ndarray:
    kx, _ = midpoint_grid(x_grid, level)
    ky, _ = midpoint_grid(y_grid, level)
    numerator = kx * ky + ky * x_grid - kx * y_grid
    return numerator / (ky * ky)


def metrics(exact: np.ndarray, approx: np.ndarray) -> dict[str, float]:
    err = exact - approx
    abs_err = np.abs(err)
    return {
        "RMSE": math.sqrt(float(np.mean(err * err))),
        "MAE": float(np.mean(abs_err)),
        "ME": float(np.mean(err)),
        "MRED": float(np.mean(abs_err / exact)),
        "MaxAE": float(np.max(abs_err)),
    }


def format_metrics(row: dict[str, float]) -> str:
    return (
        f"RMSE={row['RMSE']:.7f}, MAE={row['MAE']:.7f}, "
        f"ME={row['ME']:.7f}, MRED={row['MRED']:.7f}"
    )


def set_surface_style(ax) -> None:
    ax.view_init(elev=25, azim=-125)
    ax.set_xlim(1.0, 2.0)
    ax.set_ylim(1.0, 2.0)
    ax.set_zlim(0.5, 2.0)
    ax.set_xticks([1.0, 1.5, 2.0])
    ax.set_yticks([1.0, 1.5, 2.0])
    ax.set_zticks([0.5, 1.0, 1.5, 2.0])
    ax.tick_params(labelsize=7, pad=0)
    ax.xaxis.pane.set_facecolor((0.96, 0.96, 0.96, 1.0))
    ax.yaxis.pane.set_facecolor((0.96, 0.96, 0.96, 1.0))
    ax.zaxis.pane.set_facecolor((0.96, 0.96, 0.96, 1.0))
    for axis in (ax.xaxis, ax.yaxis, ax.zaxis):
        axis._axinfo["grid"]["linewidth"] = 0.35
        axis._axinfo["grid"]["color"] = (0.82, 0.82, 0.82, 1.0)


def plot_level(level: int, x_grid: np.ndarray, y_grid: np.ndarray) -> dict[str, float]:
    exact = x_grid / y_grid
    approx = divider_plane(x_grid, y_grid, level)
    abs_err = np.abs(exact - approx)
    row = metrics(exact, approx)

    fig = plt.figure(figsize=(13.5, 3.8), facecolor="white")
    gs = fig.add_gridspec(1, 3, width_ratios=[1.05, 1.05, 1.25], wspace=0.25)

    ax_exact = fig.add_subplot(gs[0, 0], projection="3d")
    ax_approx = fig.add_subplot(gs[0, 1], projection="3d")
    ax_error = fig.add_subplot(gs[0, 2])

    ax_exact.plot_surface(y_grid, x_grid, exact, cmap="jet", linewidth=0, antialiased=False)
    ax_exact.set_title("exact x/y", fontsize=9, pad=2)
    set_surface_style(ax_exact)

    ax_approx.plot_surface(y_grid, x_grid, approx, cmap="jet", linewidth=0, antialiased=False)
    ax_approx.set_title(f"apprx x/y, level = {level}", fontsize=9, pad=2)
    set_surface_style(ax_approx)

    image = ax_error.imshow(
        abs_err,
        extent=[1.0, 2.0, 1.0, 2.0],
        origin="lower",
        cmap="jet",
        aspect="auto",
        vmin=0.0,
    )
    ax_error.set_title(f"Error, {format_metrics(row)}", fontsize=8, pad=2)
    ax_error.set_xlabel("y", fontsize=8)
    ax_error.set_ylabel("x", fontsize=8)
    ax_error.set_xticks([1.2, 1.4, 1.6, 1.8])
    ax_error.set_yticks([1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8, 1.9])
    ax_error.tick_params(labelsize=7)
    cbar = fig.colorbar(image, ax=ax_error, fraction=0.046, pad=0.04)
    cbar.locator = MaxNLocator(nbins=6)
    cbar.formatter = FormatStrFormatter("%.3f")
    cbar.update_ticks()
    cbar.ax.tick_params(labelsize=7)

    fig.text(0.5, -0.02, f"Level {level} Errors", ha="center", va="top", fontsize=18)
    fig.subplots_adjust(left=0.02, right=0.955, top=0.92, bottom=0.16)

    for suffix in ("png", "pdf"):
        fig.savefig(OUT_DIR / f"divider_error_surfaces_l{level}.{suffix}", dpi=300)
    plt.close(fig)
    return row


def plot_overview(rows: dict[int, dict[str, float]], x_grid: np.ndarray, y_grid: np.ndarray) -> None:
    fig = plt.figure(figsize=(13.5, 14.8), facecolor="white")
    gs = fig.add_gridspec(4, 3, width_ratios=[1.05, 1.05, 1.25], wspace=0.25, hspace=0.42)

    exact = x_grid / y_grid
    for row_idx, level in enumerate(LEVELS):
        approx = divider_plane(x_grid, y_grid, level)
        abs_err = np.abs(exact - approx)

        ax_exact = fig.add_subplot(gs[row_idx, 0], projection="3d")
        ax_approx = fig.add_subplot(gs[row_idx, 1], projection="3d")
        ax_error = fig.add_subplot(gs[row_idx, 2])

        ax_exact.plot_surface(y_grid, x_grid, exact, cmap="jet", linewidth=0, antialiased=False)
        ax_exact.set_title("exact x/y", fontsize=8, pad=1)
        set_surface_style(ax_exact)

        ax_approx.plot_surface(y_grid, x_grid, approx, cmap="jet", linewidth=0, antialiased=False)
        ax_approx.set_title(f"apprx x/y, level = {level}", fontsize=8, pad=1)
        set_surface_style(ax_approx)

        image = ax_error.imshow(
            abs_err,
            extent=[1.0, 2.0, 1.0, 2.0],
            origin="lower",
            cmap="jet",
            aspect="auto",
            vmin=0.0,
        )
        ax_error.set_title(f"Level {level} error, {format_metrics(rows[level])}", fontsize=7, pad=2)
        ax_error.set_xlabel("y", fontsize=7)
        ax_error.set_ylabel("x", fontsize=7)
        ax_error.tick_params(labelsize=6)
        cbar = fig.colorbar(image, ax=ax_error, fraction=0.046, pad=0.04)
        cbar.locator = MaxNLocator(nbins=5)
        cbar.formatter = FormatStrFormatter("%.3f")
        cbar.update_ticks()
        cbar.ax.tick_params(labelsize=6)

    fig.subplots_adjust(left=0.02, right=0.955, top=0.985, bottom=0.025)
    for suffix in ("png", "pdf"):
        fig.savefig(OUT_DIR / f"divider_error_surfaces_l0_l3.{suffix}", dpi=300)
    plt.close(fig)


def main() -> None:
    samples = 1.0 + (np.arange(SAMPLES_PER_AXIS) + 0.5) / SAMPLES_PER_AXIS
    x_grid, y_grid = np.meshgrid(samples, samples, indexing="ij")

    rows: dict[int, dict[str, float]] = {}
    for level in LEVELS:
        rows[level] = plot_level(level, x_grid, y_grid)

    plot_overview(rows, x_grid, y_grid)

    with (OUT_DIR / "divider_error_surfaces_metrics.csv").open("w", newline="") as csv_file:
        writer = csv.writer(csv_file)
        writer.writerow(["level", "samples_per_axis", "RMSE", "MAE", "ME", "MRED", "MaxAE"])
        for level in LEVELS:
            row = rows[level]
            writer.writerow([
                level,
                SAMPLES_PER_AXIS,
                f"{row['RMSE']:.12f}",
                f"{row['MAE']:.12f}",
                f"{row['ME']:.12f}",
                f"{row['MRED']:.12f}",
                f"{row['MaxAE']:.12f}",
            ])


if __name__ == "__main__":
    main()
