#!/usr/bin/env python3
"""Refresh paper-facing DIV tables from unified-wrapper DC/PT reports."""

from __future__ import annotations

import csv
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
PPA = ROOT / "ppa_results"


def read_text(path: Path) -> str:
    if not path.is_file():
        raise FileNotFoundError(path)
    return path.read_text()


def extract(pattern: str, path: Path, *, last: bool = True) -> float:
    matches = re.findall(pattern, read_text(path), re.MULTILINE)
    if not matches:
        raise RuntimeError(f"missing metric in {path}: {pattern}")
    return float(matches[-1] if last else matches[0])


def point(dc_dir: Path, pt_dir: Path, top: str) -> dict[str, float]:
    dc = dc_dir / f"{top}.dc.rpt"
    timing = pt_dir / f"{top}.pt.max_delay.rpt"
    power = pt_dir / f"{top}.pt.power.rpt"
    check = pt_dir / f"{top}.pt.check_timing.rpt"
    if "check_timing succeeded." not in read_text(check):
        raise RuntimeError(f"PrimeTime check failed: {check}")
    return {
        "area": extract(r"Total cell area:\s+([0-9.eE+-]+)", dc),
        "delay": extract(r"data arrival time\s+([0-9.eE+-]+)", timing,
                         last=False),
        "power": 1000.0 * extract(r"Total Power\s+=\s+([0-9.eE+-]+)", power),
    }


def load(path: Path) -> tuple[list[str], list[dict[str, str]]]:
    with path.open(newline="") as handle:
        reader = csv.DictReader(handle)
        return list(reader.fieldnames or ()), list(reader)


def write(path: Path, fields: list[str], rows: list[dict[str, str]]) -> None:
    with path.open("w", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=fields, lineterminator="\n")
        writer.writeheader()
        writer.writerows(rows)


def fmt(value: float, digits: int) -> str:
    return f"{value:.{digits}f}"


def pct(new: float, old: float) -> str:
    return f"{100.0 * (new / old - 1.0):.2f}"


root_points = {}
pace_points = {}
for level in range(4):
    top = f"oadm_fixed_l{level}_div_root_opt"
    root_points[f"L{level}"] = point(
        ROOT / "dc/root_opt/outputs_10ns" / top,
        ROOT / "pt_dc/root_opt/reports_10ns" / top,
        top,
    )
for level in range(1, 5):
    top = f"pace_fp32_l{level}"
    pace_points[f"L{level}"] = point(
        ROOT / "dc/pace_original/outputs_explicit_flatten_area10" / f"L{level}",
        ROOT / "pt_dc/pace_oadm_compare/reports/explicit_flatten_area10/pace" / f"L{level}",
        top,
    )


path = PPA / "div_only_vs_pace.csv"
fields, rows = load(path)
for row in rows:
    oadm = root_points[row["oadm_level"]]
    pace = pace_points[row["pace_level"]]
    note = row["comparison_note"]
    if "shared fp32_normal_finite_wrapper" not in note:
        note += "; shared fp32_normal_finite_wrapper; fresh DC/PT 2026-09-03"
    row.update({
        "source": "unified_normal_finite_wrapper_10ns",
        "oadm_area_um2": fmt(oadm["area"], 6),
        "oadm_critical_delay_ns": fmt(oadm["delay"], 5),
        "oadm_latency_ns": fmt(oadm["delay"], 5),
        "oadm_power_mw": fmt(oadm["power"], 7),
        "pace_area_um2": fmt(pace["area"], 6),
        "pace_critical_delay_ns": fmt(pace["delay"], 5),
        "pace_latency_ns": fmt(pace["delay"], 5),
        "pace_power_mw": fmt(pace["power"], 7),
        "area_delta_pct_vs_pace": pct(oadm["area"], pace["area"]),
        "delay_delta_pct_vs_pace": pct(oadm["delay"], pace["delay"]),
        "power_delta_pct_vs_pace": pct(oadm["power"], pace["power"]),
        "comparison_note": note,
    })
write(path, fields, rows)


path = PPA / "fixed_level_root_opt_10ns.csv"
fields, rows = load(path)
by_level: dict[str, dict[str, dict[str, str]]] = {}
for row in rows:
    level = row["level"]
    if row["variant"] == "root_opt":
        p = root_points[level]
        top = f"oadm_fixed_{level.lower()}_div_root_opt"
        row["dc_report"] = f"dc/root_opt/outputs_10ns/{top}/{top}.dc.rpt"
        row["pt_report"] = f"pt_dc/root_opt/reports_10ns/{top}"
    else:
        index = int(level[1:])
        top = f"oadm_fixed_l{index}_div_opt"
        tag = f"sharing/L{index}_centered_residual/div"
        p = point(ROOT / "dc/canonical_refresh/outputs_10ns" / tag,
                  ROOT / "pt_dc/canonical_refresh/reports_10ns" / tag, top)
        row["dc_report"] = f"dc/canonical_refresh/outputs_10ns/{tag}/{top}.dc.rpt"
        row["pt_report"] = f"pt_dc/canonical_refresh/reports_10ns/{tag}"
    row["area_um2"] = fmt(p["area"], 6)
    row["pt_delay_ns"] = fmt(p["delay"], 5)
    row["pt_power_mw"] = fmt(p["power"], 7)
    row["flow"] = "unified normal-finite wrapper; canonical 10 ns vectorless PT"
    by_level.setdefault(level, {})[row["variant"]] = row
for variants in by_level.values():
    current = variants["current"]
    root = variants["root_opt"]
    for metric, column in (("area_um2", "area_change_pct"),
                           ("pt_delay_ns", "delay_change_pct"),
                           ("pt_power_mw", "power_change_pct")):
        root[column] = pct(float(root[metric]), float(current[metric]))
write(path, fields, rows)


prior_specs = {
    "QIAD": ("qiad_prior_fp32_paceio",
             ROOT.parent / "worktrees/qiad-repro/dc/qiad_prior/outputs_paceio_explicit_flatten_area10",
             ROOT.parent / "worktrees/qiad-repro/pt_dc/qiad_prior/reports_paceio_explicit_flatten_area10"),
    "FaNZeD": ("fanzed_prior_fp32_paceio",
               ROOT.parent / "worktrees/fanzed-prior-rtl/dc/fanzed_prior_paceio/outputs_explicit_flatten_area10",
               ROOT.parent / "worktrees/fanzed-prior-rtl/pt_dc/fanzed_prior_paceio/reports_explicit_flatten_area10"),
    "TruncApp": ("truncapp_fp32_paceio",
                 ROOT.parent / "worktrees/truncapp-repro/dc/truncapp_paceio/outputs_explicit_flatten_area10",
                 ROOT.parent / "worktrees/truncapp-repro/pt_dc/truncapp_paceio/reports_explicit_flatten_area10"),
    "LEAD (comb unroll)": ("lead_fp32_paceio_comb",
                           ROOT.parent / "worktrees/lead-repro/dc/lead_paceio_comb/outputs_explicit_flatten_area10",
                           ROOT.parent / "worktrees/lead-repro/pt_dc/lead_paceio_comb/reports_explicit_flatten_area10"),
}
path = PPA / "priorwork_comparison_10ns.csv"
fields, rows = load(path)
for row in rows:
    design = row["design"]
    if design.startswith("PACE L"):
        p = pace_points[design.split()[-1]]
    else:
        top, dc_dir, pt_dir = prior_specs[design]
        p = point(dc_dir, pt_dir, top)
    row["area_um2"] = fmt(p["area"], 6)
    row["pt_delay_ns"] = fmt(p["delay"], 5)
    row["pt_power_mw"] = fmt(p["power"], 7)
    row["adp_um2_ns"] = fmt(p["area"] * p["delay"], 6)
    prefix = ("Shared fp32_normal_finite_wrapper; INVD0 input driver; "
              "fresh explicit-flatten DC/PT 2026-09-03; ")
    if not row["notes"].startswith(prefix):
        row["notes"] = prefix + row["notes"]
write(path, fields, rows)

print("Updated div_only_vs_pace.csv, fixed_level_root_opt_10ns.csv, and priorwork_comparison_10ns.csv")
