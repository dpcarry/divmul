#!/usr/bin/env python3
"""Collect and plot the isolated runtime residual/scale drop sweep."""

from __future__ import annotations

import csv
import math
import re
from pathlib import Path

import matplotlib.pyplot as plt
from matplotlib.ticker import FuncFormatter


ROOT = Path(__file__).resolve().parents[1]
ACCURACY = ROOT / "qsim_rtl/runtime_drop_sweep/runtime_drop_accuracy.csv"
DC_ROOT = ROOT / "dc/runtime_drop_sweep/outputs"
PT_ROOT = ROOT / "pt_dc/runtime_drop_sweep/reports"
PPA_CSV = ROOT / "ppa_results/runtime_drop_sweep_10ns.csv"
FIGURE_DIR = ROOT / "paper_hardware/figures"
RESIDUAL_DROPS = (10, 12, 14, 16, 18)
SCALE_DROPS = (14, 16, 18)
FIXED_L3_AREA = 2663.640009


def read(path: Path) -> str:
    if not path.is_file():
        raise FileNotFoundError(path)
    return path.read_text(errors="replace")


def number(pattern: str, source: str, *, last: bool = True) -> float:
    matches = re.findall(pattern, source, re.MULTILINE)
    if not matches:
        raise ValueError(f"missing pattern {pattern!r}")
    return float(matches[-1] if last else matches[0])


def load_accuracy() -> dict[tuple[int, int], list[dict[str, str]]]:
    points: dict[tuple[int, int], list[dict[str, str]]] = {}
    with ACCURACY.open(newline="") as handle:
        for row in csv.DictReader(handle):
            key = (int(row["residual_drop"]), int(row["scale_drop"]))
            points.setdefault(key, []).append(row)
    return points


def metric_summary(rows: list[dict[str, str]]) -> dict[str, object]:
    worst_rmse = max(rows, key=lambda row: float(row["rmse"]) /
                     float(row["baseline_rmse"]))
    metric_ratios = []
    for row in rows:
        for metric in ("mae", "mred", "rmse"):
            metric_ratios.append((float(row[metric]) /
                                  float(row[f"baseline_{metric}"]),
                                  metric, row["mode"], row["level"]))
    worst_all = max(metric_ratios)
    return {
        "max_rmse_ratio": float(worst_rmse["rmse"]) /
                          float(worst_rmse["baseline_rmse"]),
        "rmse_limiter": f"{worst_rmse['mode']}/{worst_rmse['level']}",
        "max_metric_ratio": worst_all[0],
        "metric_limiter": f"{worst_all[1]}/{worst_all[2]}/{worst_all[3]}",
        "accuracy_status": "pass" if worst_all[0] <= 1.10 else "fail",
        "baseline_mismatches": max(int(row["baseline_mismatches"])
                                   for row in rows),
    }


def collect() -> list[dict[str, object]]:
    accuracy = load_accuracy()
    rows = []
    for residual_drop in RESIDUAL_DROPS:
        for scale_drop in SCALE_DROPS:
            tag = f"r{residual_drop}_s{scale_drop}"
            top = f"oadm_runtime_drop_{tag}"
            dc_dir = DC_ROOT / tag
            pt_dir = PT_ROOT / tag
            dc = read(dc_dir / f"{top}.dc.rpt")
            timing = read(pt_dir / f"{top}.pt.max_delay.rpt")
            power = read(pt_dir / f"{top}.pt.power.rpt")
            check = read(pt_dir / f"{top}.pt.check_timing.rpt")
            max_viol = read(pt_dir / f"{top}.pt.max_delay.violations.rpt")
            min_viol = read(pt_dir / f"{top}.pt.min_delay.violations.rpt")
            console = read(dc_dir / "dc_console.log")
            summary = metric_summary(accuracy[(residual_drop, scale_drop)])
            setup_slack = number(
                r"slack \((?:MET|VIOLATED)\)\s+([0-9.eE+-]+)", timing,
                last=False)
            errors = []
            if "check_timing succeeded." not in check:
                errors.append("check_timing_failed")
            if "VIOLATED" in max_viol or setup_slack < 0:
                errors.append("setup_violation")
            if "VIOLATED" in min_viol:
                errors.append("hold_violation")
            if not re.search(r"(?m)^compile$", console):
                errors.append("plain_compile_missing")
            if re.search(r"(?m)^(?:ungroup|compile_ultra)(?:\s|$)", console):
                errors.append("forbidden_mapping_command")
            area = number(r"Total cell area:\s+([0-9.eE+-]+)", dc)
            sequential = int(number(r"Number of sequential cells:\s+(\d+)", dc))
            black_boxes = int(number(r"Number of macros/black boxes:\s+(\d+)", dc))
            if sequential:
                errors.append("sequential_cells")
            if black_boxes:
                errors.append("black_boxes")
            delay = number(r"data arrival time\s+([0-9.eE+-]+)", timing,
                           last=False)
            power_mw = 1000.0 * number(
                r"Total Power\s+=\s+([0-9.eE+-]+)", power)
            row = {
                "residual_drop": residual_drop,
                "scale_drop": scale_drop,
                "selection": "baseline" if tag == "r10_s14" else "sweep",
                "area_um2": f"{area:.6f}",
                "area_delta_pct_vs_10_14": "",
                "pt_delay_ns": f"{delay:.5f}",
                "setup_slack_ns": f"{setup_slack:.5f}",
                "pt_power_mw": f"{power_mw:.7f}",
                "sequential_cells": sequential,
                "black_boxes": black_boxes,
                "max_rmse_ratio_vs_10_14": f"{summary['max_rmse_ratio']:.6f}",
                "rmse_limiter": summary["rmse_limiter"],
                "max_any_metric_ratio_vs_10_14": f"{summary['max_metric_ratio']:.6f}",
                "metric_limiter": summary["metric_limiter"],
                "accuracy_10pct_status": summary["accuracy_status"],
                "baseline_equivalence_mismatches": summary["baseline_mismatches"],
                "timing_status": "pass" if not errors else ";".join(errors),
                "gate_miter": "not_run",
                "dc_report": (dc_dir / f"{top}.dc.rpt").relative_to(ROOT),
                "pt_report_dir": pt_dir.relative_to(ROOT),
                "method": "TSMC65; 10 ns; no pipeline; hierarchy-preserving plain compile; vectorless PT; 250000 normal-finite FP32 vectors per mode/level",
            }
            rows.append(row)

    baseline_area = float(next(row["area_um2"] for row in rows
                               if row["selection"] == "baseline"))
    for row in rows:
        area = float(row["area_um2"])
        row["area_delta_pct_vs_10_14"] = f"{100.0 * (area / baseline_area - 1.0):.2f}"

    for candidate in rows:
        candidate_area = float(candidate["area_um2"])
        candidate_error = float(candidate["max_rmse_ratio_vs_10_14"])
        dominated = any(
            float(other["area_um2"]) <= candidate_area and
            float(other["max_rmse_ratio_vs_10_14"]) <= candidate_error and
            (float(other["area_um2"]) < candidate_area or
             float(other["max_rmse_ratio_vs_10_14"]) < candidate_error)
            for other in rows
        )
        if not dominated and candidate["selection"] != "baseline":
            candidate["selection"] = "pareto"
        tag = f"r{candidate['residual_drop']}_s{candidate['scale_drop']}"
        gate_log = ROOT / f"qsim_rtl/runtime_drop_sweep/{tag}_gate_check.log"
        if gate_log.is_file():
            match = re.search(r"GATE_MITER cases=(\d+) mismatches=(\d+)",
                              read(gate_log))
            candidate["gate_miter"] = (
                f"{match.group(1)} vectors; {match.group(2)} mismatches"
                if match else "failed_or_incomplete")

    with PPA_CSV.open("w", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=list(rows[0]),
                                lineterminator="\n")
        writer.writeheader()
        writer.writerows(rows)
    return rows


def plot(rows: list[dict[str, object]]) -> None:
    points = {(int(row["residual_drop"]), int(row["scale_drop"])): row
              for row in rows}
    colors = {14: "#24557f", 16: "#d97706", 18: "#2f7d4a"}
    markers = {14: "o", 16: "s", 18: "^"}
    plt.rcParams.update({
        "font.family": "serif",
        "font.serif": ["Times New Roman", "Times", "DejaVu Serif"],
        "font.size": 9,
        "axes.labelsize": 10,
        "legend.fontsize": 8,
        "xtick.labelsize": 8,
        "ytick.labelsize": 8,
        "axes.spines.top": False,
        "axes.spines.right": False,
        "pdf.fonttype": 42,
        "ps.fonttype": 42,
    })
    fig, axes = plt.subplots(1, 2, figsize=(7.15, 2.75), constrained_layout=True)

    for scale_drop in SCALE_DROPS:
        area = [float(points[(r, scale_drop)]["area_um2"])
                for r in RESIDUAL_DROPS]
        rmse = [float(points[(r, scale_drop)]["max_rmse_ratio_vs_10_14"])
                for r in RESIDUAL_DROPS]
        label = rf"Scale drop $s={scale_drop}$"
        axes[0].plot(RESIDUAL_DROPS, area, color=colors[scale_drop],
                     marker=markers[scale_drop], linewidth=1.8,
                     markersize=5, label=label)
        axes[1].plot(RESIDUAL_DROPS, rmse, color=colors[scale_drop],
                     marker=markers[scale_drop], linewidth=1.8,
                     markersize=5, label=label)

    baseline_area = float(points[(10, 14)]["area_um2"])
    axes[0].axhline(FIXED_L3_AREA, color="#777777", linestyle="--",
                    linewidth=1.2, label="Fixed L3 DIV+MUL")
    axes[0].scatter([10], [baseline_area], marker="*", s=105,
                    color="#bc2b1d", zorder=5, label="Current runtime (10,14)")
    axes[1].axhline(1.10, color="#777777", linestyle="--", linewidth=1.2,
                    label="10% accuracy limit")
    axes[1].scatter([10], [1.0], marker="*", s=105,
                    color="#bc2b1d", zorder=5, label="Current runtime (10,14)")

    axes[0].set_ylabel(r"Cell area ($\mu\mathrm{m}^2$)")
    axes[1].set_ylabel("Worst-case RMSE ratio")
    axes[1].set_yscale("log")
    axes[1].yaxis.set_major_formatter(FuncFormatter(lambda value, _: f"{value:g}x"))
    for axis in axes:
        axis.set_xlabel("Centered-residual LSBs dropped, $r$")
        axis.set_xticks(RESIDUAL_DROPS)
        axis.grid(axis="y", color="#d0d5dc", linewidth=0.8)
    axes[0].set_title("(a) Hardware cost")
    axes[1].set_title("(b) Accuracy cost across MUL/DIV and L0-L3")
    axes[0].legend(frameon=False, loc="best")
    axes[1].legend(frameon=False, loc="upper left")

    FIGURE_DIR.mkdir(parents=True, exist_ok=True)
    for suffix in ("pdf", "png"):
        fig.savefig(FIGURE_DIR / f"runtime_drop_sweep.{suffix}", dpi=400,
                    bbox_inches="tight")
    plt.close(fig)


if __name__ == "__main__":
    collected = collect()
    plot(collected)
    print(f"wrote {PPA_CSV.relative_to(ROOT)} and runtime_drop_sweep.pdf/png")
