#!/usr/bin/env python3
"""Draw the selected-level OADM mantissa architecture for the paper."""

from pathlib import Path

import matplotlib

matplotlib.use("Agg")

import matplotlib.pyplot as plt
from matplotlib.patches import FancyArrowPatch, FancyBboxPatch, Polygon, Rectangle


OUT_DIR = Path(__file__).resolve().parent

BLUE = "#bdd7ee"
BLUE_LINE = "#5b9bd5"
PALE_BLUE = "#eaf3fa"
ORANGE = "#ed7d31"
PALE_ORANGE = "#fce4d6"
GREEN = "#c6e0b4"
PINK = "#f4cccc"
YELLOW = "#ffe699"
INK = "#242424"
GRAY = "#666666"


def rounded_box(ax, x, y, w, h, face, edge=INK, radius=0.18, lw=1.4):
    patch = FancyBboxPatch(
        (x, y),
        w,
        h,
        boxstyle=f"round,pad=0.02,rounding_size={radius}",
        facecolor=face,
        edgecolor=edge,
        linewidth=lw,
    )
    ax.add_patch(patch)
    return patch


def text_box(ax, x, y, w, h, text, face="white", edge=INK, fontsize=12,
             dashed=False, radius=0.10, lw=1.1):
    patch = rounded_box(ax, x, y, w, h, face, edge, radius, lw)
    if dashed:
        patch.set_linestyle((0, (6, 3)))
    ax.text(
        x + w / 2,
        y + h / 2,
        text,
        ha="center",
        va="center",
        fontsize=fontsize,
        family="serif",
        color=INK,
    )
    return patch


def arrow(ax, start, end, color=INK, lw=1.5, scale=12, zorder=3):
    patch = FancyArrowPatch(
        start,
        end,
        arrowstyle="-|>",
        mutation_scale=scale,
        linewidth=lw,
        color=color,
        shrinkA=0,
        shrinkB=0,
        zorder=zorder,
    )
    ax.add_patch(patch)
    return patch


def line(ax, points, color=INK, lw=1.5, zorder=2):
    xs, ys = zip(*points)
    ax.plot(xs, ys, color=color, linewidth=lw, zorder=zorder)


def level_row(ax, n, y, prefix, midpoint, detail):
    x, w, h = 2.65, 7.45, 1.83
    rounded_box(ax, x, y, w, h, BLUE, radius=0.30, lw=1.35)
    ax.text(
        x + 0.27,
        y + h - 0.25,
        rf"Level {n}",
        ha="left",
        va="center",
        fontsize=13.5,
        weight="bold",
        family="serif",
    )
    text_box(ax, x + 0.35, y + 0.22, 2.05, 1.08, prefix,
             dashed=True, fontsize=11.0)
    text_box(ax, x + 2.58, y + 0.22, 2.36, 1.08, midpoint,
             dashed=True, fontsize=10.8)
    text_box(ax, x + 5.12, y + 0.22, 1.96, 1.08, detail,
             dashed=True, fontsize=10.5)
    return x + w, y, h


def main():
    fig, ax = plt.subplots(figsize=(16.0, 8.8), facecolor="white")
    ax.set_xlim(0, 21.35)
    ax.set_ylim(0, 11.05)
    ax.axis("off")

    # Left-side input and control buses.
    text_box(ax, 0.22, 8.96, 1.72, 0.80, r"Level $n[1{:}0]$",
             face=PALE_BLUE, edge=BLUE_LINE, fontsize=12.5, lw=1.7)
    text_box(ax, 0.22, 6.77, 1.72, 1.17,
             r"Prefix bits" + "\n" + r"$x_f[22{:}20]$" + "\n" + r"$y_f[22{:}20]$",
             face="#e7e6e6", edge=GRAY, fontsize=11.5, lw=1.7)
    text_box(ax, 0.22, 4.47, 1.72, 1.17,
             r"Mantissas" + "\n" + r"$x,\ y\in[1,2)$",
             face="#e7e6e6", edge=GRAY, fontsize=12.0, lw=1.7)
    text_box(ax, 0.22, 1.45, 1.72, 1.05, r"DIV / MUL" + "\n" + "mode",
             face=PALE_ORANGE, edge=ORANGE, fontsize=12.0, lw=1.9)

    ax.text(
        6.35,
        10.76,
        "Level-dependent parameter definitions (one row selected)",
        ha="center",
        va="center",
        fontsize=15,
        family="serif",
        weight="bold",
    )

    rows = [
        (3, 8.62,
         r"$i_x^3=x_f[22{:}20]$" + "\n" + r"$i_y^3=y_f[22{:}20]$",
         r"$k_a^3=1+(i_a^3+1/2)2^{-3}$" + "\n" + r"$a\in\{x,y\}$",
         r"$r_a^3=a-k_a^3$" + "\n" + r"$C_{3,i_y^3}$"),
        (2, 6.45,
         r"$i_x^2=x_f[22{:}21]$" + "\n" + r"$i_y^2=y_f[22{:}21]$",
         r"$k_a^2=1+(i_a^2+1/2)2^{-2}$" + "\n" + r"$a\in\{x,y\}$",
         r"$r_a^2=a-k_a^2$" + "\n" + r"$C_{2,i_y^2}$"),
        (1, 4.28,
         r"$i_x^1=x_f[22]$" + "\n" + r"$i_y^1=y_f[22]$",
         r"$k_a^1=1+(i_a^1+1/2)2^{-1}$" + "\n" + r"$a\in\{x,y\}$",
         r"$r_a^1=a-k_a^1$" + "\n" + r"$C_{1,i_y^1}$"),
        (0, 2.11,
         r"$i_x^0=i_y^0=0$",
         r"$k_x^0=k_y^0=3/2$",
         r"$r_a^0=a-3/2$" + "\n" + r"$C_{0,0}$"),
    ]

    row_outputs = []
    for args in rows:
        row_outputs.append(level_row(ax, *args))

    # Shared buses feeding the conceptual level rows.
    line(ax, [(1.94, 9.36), (2.17, 9.36)], BLUE_LINE, 2.0)
    line(ax, [(2.17, 2.67), (2.17, 9.92)], BLUE_LINE, 2.0)
    line(ax, [(1.94, 7.35), (2.33, 7.35)], GRAY, 1.7)
    line(ax, [(2.33, 2.67), (2.33, 9.54)], GRAY, 1.7)
    line(ax, [(1.94, 5.05), (2.49, 5.05)], GRAY, 1.7)
    line(ax, [(2.49, 2.67), (2.49, 9.16)], GRAY, 1.7)
    for _, row_y, row_h in row_outputs:
        center = row_y + row_h / 2
        arrow(ax, (2.17, center + 0.38), (2.65, center + 0.38),
              BLUE_LINE, 1.7, 9)
        arrow(ax, (2.33, center), (2.65, center), GRAY, 1.5, 9)
        arrow(ax, (2.49, center - 0.38), (2.65, center - 0.38), GRAY, 1.5, 9)

    # One-of-four selector. Rows are definitions, not four replicated planes.
    selector = Polygon(
        [(10.55, 3.55), (11.15, 4.18), (11.15, 8.82), (10.55, 9.45)],
        closed=True,
        facecolor=YELLOW,
        edgecolor=INK,
        linewidth=1.5,
    )
    ax.add_patch(selector)
    ax.text(10.87, 6.50, "LEVEL\nSELECT", ha="center", va="center",
            fontsize=11.2, family="serif", rotation=90)
    target_ys = [8.82, 7.27, 5.72, 4.18]
    for (_, row_y, row_h), target_y in zip(row_outputs, target_ys):
        center = row_y + row_h / 2
        line(ax, [(10.10, center), (10.34, center), (10.34, target_y)], BLUE_LINE, 1.6)
        arrow(ax, (10.34, target_y), (10.60, target_y), BLUE_LINE, 1.6, 10)

    ax.text(
        6.35,
        1.58,
        "No inter-level accumulation",
        ha="center",
        va="center",
        fontsize=11.5,
        family="serif",
        style="italic",
        color=GRAY,
    )

    # The sole shared arithmetic datapath.
    sx, sy, sw, sh = 11.62, 4.03, 4.68, 5.47
    rounded_box(ax, sx, sy, sw, sh, BLUE, radius=0.32, lw=1.6)
    ax.text(sx + sw / 2, sy + sh - 0.35, "Shared selected-level plane",
            ha="center", va="center", fontsize=14.2, family="serif", weight="bold")

    text_box(ax, sx + 0.35, sy + 3.55, sw - 0.70, 0.82,
             "Centered residual recode / prune" + "\n" +
             r"$r_x^n,r_y^n\rightarrow r_x',r_y'$",
             dashed=True, fontsize=10.0)
    text_box(ax, sx + 0.35, sy + 2.86, sw - 0.70, 0.76,
             r"$p_x=k_y^n r_x'\qquad p_y=k_x^n r_y'$",
             dashed=True, fontsize=12.4)
    text_box(ax, sx + 0.35, sy + 1.88, sw - 0.70, 0.76,
             r"$p_k=k_x^n k_y^n$" + "\n" + "(positive after centering)",
             dashed=True, fontsize=10.7)
    text_box(ax, sx + 0.35, sy + 0.45, sw - 0.70, 1.18,
             r"$u_n=p_k+p_x+s_{mode}p_y$" + "\n" +
             r"$s_{DIV}=-1,\quad s_{MUL}=+1$",
             face="#fffdf5", edge=INK, fontsize=12.5, lw=1.2)

    arrow(ax, (11.15, 6.50), (11.62, 6.50), BLUE_LINE, 2.0, 12)
    ax.text(sx + sw / 2, sy + sh - 0.77,
            r"selected $k_x^n,k_y^n,r_x^n,r_y^n,C_{n,q}$",
            ha="center", va="center", fontsize=9.8, family="serif")

    # Operation-specific tail: MUL bypasses the reciprocal-square scale.
    text_box(ax, 16.88, 7.15, 2.18, 1.28,
             r"DIV-only scaling" + "\n" +
             r"$\lfloor u_n/2^{D_w}\rfloor$" + "\n" +
             r"$\times C_{n,q}2^{D_w-B}$",
             face=PINK, fontsize=11.2, lw=1.4)
    text_box(ax, 16.88, 4.85, 2.18, 0.95,
             "MUL bypass", face=GREEN, fontsize=12.0, lw=1.4)

    arrow(ax, (16.30, 6.79), (16.62, 6.79), BLUE_LINE, 1.8, 11)
    line(ax, [(16.62, 6.79), (16.62, 7.79), (16.88, 7.79)], BLUE_LINE, 1.8)
    arrow(ax, (16.62, 7.79), (16.88, 7.79), BLUE_LINE, 1.8, 11)
    line(ax, [(16.62, 6.79), (16.62, 5.32)], BLUE_LINE, 1.8)
    arrow(ax, (16.62, 5.32), (16.88, 5.32), BLUE_LINE, 1.8, 11)

    # Final mode-select wedge and output.
    mux = Polygon(
        [(19.35, 5.22), (19.84, 5.58), (19.84, 7.62), (19.35, 7.98)],
        closed=True,
        facecolor=PALE_ORANGE,
        edgecolor=INK,
        linewidth=1.4,
    )
    ax.add_patch(mux)
    ax.text(19.58, 6.60, "MODE", ha="center", va="center",
            fontsize=10.2, family="serif", rotation=90)
    arrow(ax, (19.06, 7.79), (19.40, 7.79), BLUE_LINE, 1.7, 10)
    line(ax, [(19.06, 5.32), (19.22, 5.32), (19.22, 5.44), (19.40, 5.44)], BLUE_LINE, 1.7)
    arrow(ax, (19.84, 6.60), (20.82, 6.60), BLUE_LINE, 1.9, 11)
    ax.text(20.34, 6.88, r"$\widehat d_n$ / $\widehat m_n$",
            ha="center", va="bottom", fontsize=12.5, family="serif")

    # Orange mode-control route to pruning/sign/bias and the output mux.
    line(ax, [(1.94, 1.97), (11.36, 1.97), (11.36, 4.62)], ORANGE, 2.0)
    arrow(ax, (11.36, 4.62), (11.97, 4.62), ORANGE, 2.0, 11)
    line(ax, [(11.36, 1.97), (19.58, 1.97), (19.58, 5.40)], ORANGE, 2.0)
    arrow(ax, (19.58, 5.40), (19.58, 5.58), ORANGE, 2.0, 11)

    # Compact legend matching the visual grammar of the reference figure.
    text_box(ax, 16.72, 2.72, 1.08, 0.48, "", face=BLUE, fontsize=1, lw=1.0)
    ax.text(17.94, 2.96, "Selected-level / shared module", ha="left", va="center",
            fontsize=10.8, family="serif")
    text_box(ax, 16.72, 2.00, 1.08, 0.48, "", face="white", fontsize=1,
             dashed=True, lw=1.0)
    ax.text(17.94, 2.24, "Parameter or partial product", ha="left", va="center",
            fontsize=10.8, family="serif")

    fig.tight_layout(pad=0.12)
    stem = OUT_DIR / "oadm_multilevel_shared_plane_architecture"
    fig.savefig(stem.with_suffix(".png"), dpi=300, bbox_inches="tight", facecolor="white")
    fig.savefig(stem.with_suffix(".pdf"), bbox_inches="tight", facecolor="white")
    fig.savefig(stem.with_suffix(".svg"), bbox_inches="tight", facecolor="white")
    plt.close(fig)


if __name__ == "__main__":
    main()
