#!/usr/bin/env python3
"""Draw a theory-level OAD divider architecture in the style of the OAM figure."""

from __future__ import annotations

from pathlib import Path

import matplotlib

matplotlib.use("Agg")

import matplotlib.pyplot as plt
from matplotlib.patches import Circle, FancyArrowPatch, Rectangle


OUT_DIR = Path(__file__).resolve().parent
BLUE = "#b9cde5"
YELLOW = "#ffe699"
LINE = "black"
DATA = "#4472c4"


def box(ax, xy, wh, text, fc=BLUE, fontsize=16, lw=1.6):
    patch = Rectangle(xy, wh[0], wh[1], facecolor=fc, edgecolor=LINE, linewidth=lw)
    ax.add_patch(patch)
    ax.text(
        xy[0] + wh[0] / 2,
        xy[1] + wh[1] / 2,
        text,
        ha="center",
        va="center",
        fontsize=fontsize,
        family="serif",
    )
    return patch


def circle(ax, center, radius, text, fontsize=16):
    patch = Circle(center, radius, facecolor="white", edgecolor=LINE, linewidth=1.6)
    ax.add_patch(patch)
    ax.text(center[0], center[1], text, ha="center", va="center", fontsize=fontsize, family="serif")
    return patch


def arrow(ax, points, color=LINE, lw=1.5, head=True):
    for start, end in zip(points[:-2], points[1:-1]):
        ax.plot([start[0], end[0]], [start[1], end[1]], color=color, linewidth=lw)
    if head:
        patch = FancyArrowPatch(
            points[-2],
            points[-1],
            arrowstyle="-|>",
            mutation_scale=12,
            linewidth=lw,
            color=color,
            shrinkA=0,
            shrinkB=0,
        )
        ax.add_patch(patch)
    else:
        start, end = points[-2], points[-1]
        ax.plot([start[0], end[0]], [start[1], end[1]], color=color, linewidth=lw)


def main() -> None:
    fig, ax = plt.subplots(figsize=(11.0, 4.45), facecolor="white")
    ax.set_xlim(0, 14.8)
    ax.set_ylim(-0.72, 7.6)
    ax.axis("off")

    # FP32 sign path.
    box(ax, (0.35, 6.55), (1.55, 0.62), "Sign X")
    box(ax, (0.35, 5.62), (1.55, 0.62), "Sign Y")
    box(ax, (3.00, 6.04), (0.92, 0.62), "XOR", fc="white")
    box(ax, (13.05, 6.04), (1.30, 0.62), "Sign Z")
    arrow(ax, [(1.90, 6.86), (2.47, 6.86), (2.47, 6.35), (3.00, 6.35)])
    arrow(ax, [(1.90, 5.93), (2.47, 5.93), (2.47, 6.35), (3.00, 6.35)])
    arrow(ax, [(3.92, 6.35), (13.05, 6.35)])

    # FP32 exponent path for division: biased ExpX - ExpY + bias.
    box(ax, (0.35, 4.55), (1.55, 0.62), "Exp X")
    box(ax, (0.35, 3.62), (1.55, 0.62), "Exp Y")
    circle(ax, (3.18, 4.08), 0.26, "-")
    ax.text(4.55, 4.10, "+ Exp Bias", ha="center", va="center", fontsize=15, family="serif")
    arrow(ax, [(1.90, 4.86), (2.70, 4.86), (2.70, 4.08), (2.92, 4.08)])
    arrow(ax, [(1.90, 3.93), (2.70, 3.93), (2.70, 4.08), (2.92, 4.08)])
    arrow(ax, [(3.44, 4.08), (4.02, 4.08)], head=False)
    arrow(ax, [(5.18, 4.08), (10.15, 4.08)])

    # Mantissa/control path and the theoretical OAD divider plane.
    box(ax, (0.12, 1.02), (2.20, 1.58), "Control\nFraction X\nFraction Y")
    plane = Rectangle((3.05, 1.16), 4.95, 2.34, facecolor=YELLOW, edgecolor=LINE, linewidth=2.2)
    ax.add_patch(plane)
    for y in (2.92, 2.25, 1.70):
        ax.plot([3.05, 8.00], [y, y], color=LINE, linewidth=1.1)
    ax.text(5.53, 3.22, "Selected Level OAD Plane", ha="center", va="center", fontsize=17, family="serif")
    ax.text(
        5.53,
        2.58,
        r"$L0/L1/L2/L3$ midpoint: $k_x^n,\,k_y^n$",
        ha="center",
        va="center",
        fontsize=14,
    )
    ax.text(
        5.53,
        1.96,
        r"shared terms: $k_y^n x,\; k_x^n y,\; k_x^n k_y^n$",
        ha="center",
        va="center",
        fontsize=14,
    )
    ax.text(
        5.53,
        1.43,
        r"$w_n = k_x^n k_y^n + k_y^n x - k_x^n y$",
        ha="center",
        va="center",
        fontsize=15,
    )

    box(ax, (4.12, -0.28), (2.40, 0.82), "", fc=YELLOW, fontsize=15)
    ax.text(5.32, 0.30, "LUT / constant", ha="center", va="center", fontsize=15, family="serif")
    ax.text(5.32, -0.06, r"$1/(k_y^n)^2$", ha="center", va="center", fontsize=15)
    circle(ax, (9.08, 1.95), 0.28, r"$\times$", fontsize=17)

    arrow(ax, [(2.32, 1.81), (3.05, 1.81)], color=DATA, lw=1.8)
    arrow(ax, [(2.32, 1.23), (2.32, 0.09), (4.12, 0.09)], color=DATA, lw=1.8)
    arrow(ax, [(8.00, 2.12), (8.80, 2.12)], color=DATA, lw=1.8)
    arrow(ax, [(6.52, 0.09), (8.45, 0.09), (8.45, 1.78), (8.80, 1.78)], color=DATA, lw=1.8)

    # Output normalization and packing.
    box(ax, (10.15, 1.08), (0.78, 3.95), "N\nO\nR\nM\nA\nL\nI\nZ\nE", fc="white", fontsize=15)
    box(ax, (12.60, 4.24), (1.72, 0.62), "Exp Z")
    box(ax, (12.60, 2.28), (1.72, 0.62), "Fraction Z")
    arrow(ax, [(9.36, 1.95), (10.15, 1.95)], color=DATA, lw=1.8)
    arrow(ax, [(10.93, 4.08), (12.60, 4.55)])
    arrow(ax, [(10.93, 2.45), (12.60, 2.59)])

    fig.tight_layout(pad=0.15)
    for suffix in ("png", "pdf"):
        fig.savefig(OUT_DIR / f"oad_theoretical_divider_architecture.{suffix}", dpi=300)


if __name__ == "__main__":
    main()
