#!/usr/bin/env python3
"""Generate paper figures from the hierarchy-preserving 10 ns CSVs."""

from __future__ import annotations

import csv
from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np


ROOT = Path(__file__).resolve().parents[1]
PPA = ROOT / "ppa_results"
PICTURES = ROOT / "paper_hardware/pictures"


def rows(path: Path) -> list[dict[str, str]]:
    with path.open(newline="") as handle:
        return list(csv.DictReader(handle))


def save(figure: plt.Figure, stem: str) -> None:
    PICTURES.mkdir(parents=True, exist_ok=True)
    figure.savefig(PICTURES / f"{stem}.pdf", bbox_inches="tight")
    figure.savefig(PICTURES / f"{stem}.png", dpi=350, bbox_inches="tight")
    plt.close(figure)


def configure() -> None:
    plt.rcParams.update({
        "font.family": "serif",
        "font.serif": ["Times New Roman", "Times", "DejaVu Serif"],
        "font.size": 9,
        "axes.labelsize": 9,
        "legend.fontsize": 8,
        "xtick.labelsize": 8,
        "ytick.labelsize": 8,
        "axes.spines.top": False,
        "axes.spines.right": False,
        "pdf.fonttype": 42,
        "ps.fonttype": 42,
    })


def sharing_figure() -> None:
    data = rows(PPA / "divmul_sharing_ablation_hier_compile_10ns.csv")
    levels = [row["level"] for row in data]
    separate = np.array([float(row["separate_sum_area_um2"]) for row in data])
    shared = np.array([float(row["shared_area_um2"]) for row in data])
    savings = [float(row["area_saved_pct"]) for row in data]
    x = np.arange(len(levels))
    width = 0.34

    figure, axis = plt.subplots(figsize=(6.8, 2.65))
    axis.bar(x - width / 2, separate, width, color="#6b7280",
             label="Separate DIV + MUL")
    bars = axis.bar(x + width / 2, shared, width, color="#24557f",
                    label="Shared DIV/MUL")
    for bar, saving in zip(bars, savings):
        axis.text(bar.get_x() + bar.get_width() / 2,
                  bar.get_height() + 55, f"{saving:.1f}% saved",
                  ha="center", va="bottom", fontsize=8)
    axis.set_xticks(x, levels)
    axis.set_ylabel(r"Cell area ($\mu\mathrm{m}^2$)")
    axis.set_ylim(0, 4050)
    axis.grid(axis="y", color="#d0d5dd", linewidth=0.6)
    axis.set_axisbelow(True)
    axis.legend(frameon=False, ncol=2, loc="upper left")
    figure.tight_layout(pad=0.5)
    save(figure, "sharing_area_hier")


def priorwork_figure() -> None:
    data = rows(PPA / "priorwork_hier_compile_10ns.csv")
    pace = rows(PPA / "div_only_vs_pace_hier_compile_10ns.csv")[-1]
    selected = {
        "PACE L4": (float(pace["pace_area_um2"]),
                    float(pace["pace_delay_ns"])),
        "FaNZeD": None,
        "TruncApp": None,
        "LEAD": None,
    }
    by_tag = {row["tag"]: row for row in data}
    selected["FaNZeD"] = (float(by_tag["prior/fanzed"]["area_um2"]),
                           float(by_tag["prior/fanzed"]["delay_ns"]))
    selected["TruncApp"] = (float(by_tag["prior/truncapp"]["area_um2"]),
                            float(by_tag["prior/truncapp"]["delay_ns"]))
    selected["LEAD"] = (float(by_tag["prior/lead"]["area_um2"]),
                        float(by_tag["prior/lead"]["delay_ns"]))
    names = list(selected)
    adp = [area * delay for area, delay in selected.values()]
    colors = ["#24557f", "#d97706", "#2f7d4a", "#9b3f77"]

    figure, axis = plt.subplots(figsize=(6.8, 2.65))
    bars = axis.bar(names, adp, color=colors, width=0.62)
    for bar, value in zip(bars, adp):
        axis.text(bar.get_x() + bar.get_width() / 2,
                  value + 700, f"{value / 1000:.1f}k",
                  ha="center", va="bottom", fontsize=8)
    axis.set_ylabel(r"Area-delay product ($\mu\mathrm{m}^2\,$ns)")
    axis.set_ylim(0, 42000)
    axis.grid(axis="y", color="#d0d5dd", linewidth=0.6)
    axis.set_axisbelow(True)
    figure.tight_layout(pad=0.5)
    save(figure, "priorwork_adp_hier")


if __name__ == "__main__":
    configure()
    sharing_figure()
    priorwork_figure()
