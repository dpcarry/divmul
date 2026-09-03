#!/usr/bin/env python3
"""Collect the hierarchy-preserving, ordinary-compile 10 ns campaign."""

from __future__ import annotations

import csv
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DC_ROOT = ROOT / "dc/hier_compile_10ns/outputs"
PT_ROOT = ROOT / "pt_dc/hier_compile_10ns/reports"
PPA = ROOT / "ppa_results"


def text(path: Path) -> str:
    if not path.is_file():
        raise FileNotFoundError(path)
    return path.read_text(errors="replace")


def number(pattern: str, source: str, *, last: bool = True) -> float:
    matches = re.findall(pattern, source, re.MULTILINE)
    if not matches:
        raise ValueError(f"missing pattern: {pattern}")
    return float(matches[-1] if last else matches[0])


def integer(pattern: str, source: str, *, last: bool = True) -> int:
    return int(number(pattern, source, last=last))


def load(path: Path) -> tuple[list[str], list[dict[str, str]]]:
    with path.open(newline="") as handle:
        reader = csv.DictReader(handle)
        return list(reader.fieldnames or ()), list(reader)


def write(path: Path, fields: list[str], rows: list[dict[str, object]]) -> None:
    with path.open("w", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=fields, lineterminator="\n")
        writer.writeheader()
        writer.writerows(rows)


def fmt(value: float, digits: int) -> str:
    return f"{value:.{digits}f}"


def collect() -> dict[str, dict[str, object]]:
    points: dict[str, dict[str, object]] = {}
    for dc_report in sorted(DC_ROOT.rglob("*.dc.rpt")):
        tag = dc_report.parent.relative_to(DC_ROOT).as_posix()
        top = dc_report.name.removesuffix(".dc.rpt")
        pt_dir = PT_ROOT / tag
        dc_dir = dc_report.parent
        dc = text(dc_report)
        qor = text(pt_dir / f"{top}.pt.qor.rpt")
        timing = text(pt_dir / f"{top}.pt.max_delay.rpt")
        power = text(pt_dir / f"{top}.pt.power.rpt")
        check = text(pt_dir / f"{top}.pt.check_timing.rpt")
        max_viol = text(pt_dir / f"{top}.pt.max_delay.violations.rpt")
        min_viol = text(pt_dir / f"{top}.pt.min_delay.violations.rpt")
        console = text(dc_dir / "dc_console.log")

        area = number(r"Total cell area:\s+([0-9.eE+-]+)", dc)
        delay = number(r"data arrival time\s+([0-9.eE+-]+)", timing,
                       last=False)
        slack = number(r"slack \((?:MET|VIOLATED)\)\s+([0-9.eE+-]+)",
                       timing, last=False)
        power_mw = 1000.0 * number(
            r"Total Power\s+=\s+([0-9.eE+-]+)", power)
        sequential = integer(r"Number of sequential cells:\s+(\d+)", dc)
        black_boxes = integer(r"Number of macros/black boxes:\s+(\d+)", dc)
        hierarchical = integer(r"Hierarchical Cell Count:\s+(\d+)", qor)
        leaf = integer(r"Leaf Cell Count:\s+(\d+)", qor)

        errors = []
        if "check_timing succeeded." not in check:
            errors.append("check_timing_failed")
        if "VIOLATED" in timing or "VIOLATED" in max_viol:
            errors.append("setup_violation")
        if "VIOLATED" in min_viol:
            errors.append("min_delay_violation")
        if black_boxes:
            errors.append("black_box")
        if hierarchical == 0:
            errors.append("hierarchy_missing")
        if not re.search(r"(?m)^compile$", console):
            errors.append("plain_compile_missing")
        if re.search(r"(?m)^(?:ungroup|compile_ultra)(?:\s|$)", console):
            errors.append("forbidden_mapping_command")

        status = "pass" if not errors else ";".join(errors)
        if sequential:
            status = (status + ";" if status != "pass" else "") + \
                "sequential_present"

        points[tag] = {
            "tag": tag,
            "top": top,
            "area_um2": fmt(area, 6),
            "delay_ns": fmt(delay, 5),
            "setup_slack_ns": fmt(slack, 5),
            "power_mw": fmt(power_mw, 7),
            "hierarchical_cells": hierarchical,
            "leaf_cells": leaf,
            "sequential_cells": sequential,
            "black_boxes": black_boxes,
            "status": status,
            "dc_report": dc_report.relative_to(ROOT).as_posix(),
            "pt_report_dir": pt_dir.relative_to(ROOT).as_posix(),
            "mapping": "hierarchy-preserving; compile; set_max_area 0; "
                       "optimize_netlist -area",
            "boundary": "TSMC65 typical CCS; 10 ns; no pipeline; INVD0; "
                        "0.004 output load; vectorless PT",
        }
    if len(points) != 46:
        raise RuntimeError(f"expected 46 points, found {len(points)}")
    return points


def subset(points: dict[str, dict[str, object]], prefix: str) \
        -> list[dict[str, object]]:
    return [points[tag] for tag in sorted(points) if tag.startswith(prefix)]


def main() -> None:
    points = collect()
    master_fields = list(next(iter(points.values())).keys())
    write(PPA / "hier_compile_master_10ns.csv", master_fields,
          [points[tag] for tag in sorted(points)])

    exact = subset(points, "exact/")
    write(PPA / "exact_baselines_hier_compile_10ns.csv", master_fields, exact)

    root = subset(points, "root_div/")
    write(PPA / "root_opt_hier_compile_10ns.csv", master_fields, root)

    mul = subset(points, "mul_root/")
    write(PPA / "mul_root_opt_hier_compile_10ns.csv", master_fields, mul)

    prior = subset(points, "prior/")
    write(PPA / "priorwork_hier_compile_10ns.csv", master_fields, prior)

    pairs = []
    for level in range(4):
        oadm = points[f"root_div/oadm_fixed_l{level}_div_root_opt"]
        pace = points[f"pace/L{level + 1}"]
        oa = float(oadm["area_um2"])
        od = float(oadm["delay_ns"])
        op = float(oadm["power_mw"])
        pa = float(pace["area_um2"])
        pd = float(pace["delay_ns"])
        pp = float(pace["power_mw"])
        pairs.append({
            "oadm_level": f"L{level}",
            "pace_level": f"L{level + 1}",
            "oadm_area_um2": fmt(oa, 6),
            "oadm_delay_ns": fmt(od, 5),
            "oadm_power_mw": fmt(op, 7),
            "pace_area_um2": fmt(pa, 6),
            "pace_delay_ns": fmt(pd, 5),
            "pace_power_mw": fmt(pp, 7),
            "oadm_area_vs_pace_pct": fmt(100.0 * (oa / pa - 1.0), 2),
            "oadm_delay_vs_pace_pct": fmt(100.0 * (od / pd - 1.0), 2),
            "oadm_power_vs_pace_pct": fmt(100.0 * (op / pp - 1.0), 2),
            "validation": f"{oadm['status']};{pace['status']}",
            "mapping": oadm["mapping"],
        })
    write(PPA / "div_only_vs_pace_hier_compile_10ns.csv",
          list(pairs[0].keys()), pairs)

    sharing = []
    for level in range(4):
        base = f"sharing/L{level}_centered_residual"
        div = points[f"{base}/div"]
        mul_point = points[f"{base}/mul"]
        full = points[f"{base}/full"]
        da = float(div["area_um2"])
        ma = float(mul_point["area_um2"])
        fa = float(full["area_um2"])
        dp = float(div["power_mw"])
        mp = float(mul_point["power_mw"])
        fp = float(full["power_mw"])
        sharing.append({
            "level": f"L{level}",
            "div_area_um2": fmt(da, 6),
            "mul_area_um2": fmt(ma, 6),
            "separate_sum_area_um2": fmt(da + ma, 6),
            "shared_area_um2": fmt(fa, 6),
            "area_saved_um2": fmt(da + ma - fa, 6),
            "area_saved_pct": fmt(100.0 * (da + ma - fa) / (da + ma), 2),
            "div_delay_ns": div["delay_ns"],
            "mul_delay_ns": mul_point["delay_ns"],
            "shared_delay_ns": full["delay_ns"],
            "div_power_mw": fmt(dp, 7),
            "mul_power_mw": fmt(mp, 7),
            "separate_sum_power_mw": fmt(dp + mp, 7),
            "shared_power_mw": fmt(fp, 7),
            "power_saved_pct": fmt(100.0 * (dp + mp - fp) / (dp + mp), 2),
            "validation": f"{div['status']};{mul_point['status']};{full['status']}",
            "mapping": full["mapping"],
        })
    write(PPA / "divmul_sharing_ablation_hier_compile_10ns.csv",
          list(sharing[0].keys()), sharing)

    amlib = []
    for level in range(4):
        oam = points[f"amlib_oam/L{level}"]
        oadm = points[f"sharing/L{level}_centered_residual/mul"]
        amlib.extend([oam, oadm])
    write(PPA / "amlib_oam_vs_oadm_mul_hier_compile_10ns.csv",
          master_fields, amlib)

    statuses = {str(point["status"]) for point in points.values()}
    print(f"wrote 8 CSVs from {len(points)} points; statuses={sorted(statuses)}")


if __name__ == "__main__":
    main()
