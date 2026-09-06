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
SPECIALIZED = ROOT / "experiments/fixed_div_level_specialization"


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
    for filename, marker in (
        ("rtl_equiv.log", "FIXED_DIV_LEVEL_SPECIALIZATION_RTL_EQUIV PASS: 20002"),
        ("gate_miter.log", "FIXED_DIV_LEVEL_SPECIALIZATION_GATE_MITER PASS: 20002"),
    ):
        log = text(SPECIALIZED / "results" / filename)
        if marker not in log or "MISMATCH" in log or "Errors: 0" not in log:
            raise RuntimeError(f"specialized DIV validation failed: {filename}")
    reports = []
    for path in sorted(DC_ROOT.rglob("*.dc.rpt")):
        tag = path.parent.relative_to(DC_ROOT).as_posix()
        if re.fullmatch(r"root_div/oadm_fixed_l[0-3]_div_root_opt", tag):
            continue
        reports.append((tag, path, PT_ROOT / tag))
    for level in range(4):
        top = f"oadm_fixed_l{level}_div_specialized"
        reports.append((f"root_div/{top}", SPECIALIZED / "dc" / top / f"{top}.dc.rpt",
                        SPECIALIZED / "pt" / top))
    for tag, dc_report, pt_dir in reports:
        # A diagnostic of the local legacy recurrence, not AM-Lib OAM RTL.
        if tag.startswith("correction_chain/"):
            continue
        if tag in points:
            raise RuntimeError(f"multiple DC reports for tag {tag}")
        top = dc_report.name.removesuffix(".dc.rpt")
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
        if re.search(r"(?m)^Error:", console):
            errors.append("dc_error")

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
        if top.endswith("_div_specialized"):
            if status != "pass":
                raise RuntimeError(f"specialized DIV report failed: {top}: {status}")
            points[tag]["boundary"] += (
                "; common normal-finite FP32 wrapper; elaboration-time LEVEL; "
                "RTL/gate 20002 vectors per level"
            )
        if tag == "simdive/sisd32_specialized":
            points[tag]["mapping"] += "; source-specialized mode=01"
            points[tag]["boundary"] = (
                "TSMC65 typical CCS; 10 ns; no pipeline; shared "
                "fp32_normal_finite_wrapper; INVD0; 0.004 output load; "
                "vectorless PT"
            )
    if len(points) != 42:
        raise RuntimeError(f"expected 42 points, found {len(points)}")
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

    root = subset(points, "root_div/") + subset(points, "root_shared/")
    write(PPA / "root_opt_hier_compile_10ns.csv", master_fields, root)

    mul = subset(points, "mul_root/")
    write(PPA / "mul_root_opt_hier_compile_10ns.csv", master_fields, mul)

    prior = subset(points, "prior/")
    write(PPA / "priorwork_hier_compile_10ns.csv", master_fields, prior)

    accuracy_path = ROOT / "qsim_rtl/root_opt/root_opt_accuracy.csv"
    _, accuracy_rows = load(accuracy_path)
    accuracy = {(r["candidate"], r["level"]): r for r in accuracy_rows
                if r["mode"] == "DIV"}
    pairs = []
    for level in range(4):
        oadm = points[f"root_div/oadm_fixed_l{level}_div_specialized"]
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
        pair = pairs[-1]
        oa_error = accuracy[("fixed_root", f"L{level}")]
        pa_error = accuracy[(f"pace_l{level + 1}", f"L{level + 1}")]
        assert oa_error["cases"] == pa_error["cases"]
        pair["accuracy_cases"] = oa_error["cases"]
        pair["accuracy_source"] = accuracy_path.relative_to(ROOT).as_posix()
        for metric in ("mae", "mred", "rmse"):
            pair[f"oadm_{metric}"] = oa_error[metric]
            pair[f"pace_{metric}"] = pa_error[metric]
        pair["oadm_adp_um2_ns"] = fmt(oa * od, 6)
        pair["pace_adp_um2_ns"] = fmt(pa * pd, 6)
        pair["oadm_adp_vs_pace_pct"] = fmt(100 * (oa * od / (pa * pd) - 1), 2)
    write(PPA / "div_only_vs_pace_hier_compile_10ns.csv",
          list(pairs[0].keys()), pairs)

    sharing = []
    for level in range(4):
        div = points[f"root_div/oadm_fixed_l{level}_div_specialized"]
        mul_point = points[f"mul_root/oadm_fixed_l{level}_mul_root_opt"]
        full = points[f"root_shared/oadm_fixed_l{level}_divmul_root_opt"]
        da = float(div["area_um2"])
        ma = float(mul_point["area_um2"])
        fa = float(full["area_um2"])
        dp = float(div["power_mw"])
        mp = float(mul_point["power_mw"])
        fp = float(full["power_mw"])
        dd = float(div["delay_ns"])
        md = float(mul_point["delay_ns"])
        fd = float(full["delay_ns"])
        separate_delay = max(dd, md)
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
            "separate_critical_delay_ns": fmt(separate_delay, 5),
            "shared_delay_ns": full["delay_ns"],
            "shared_delay_overhead_pct": fmt(
                100.0 * (fd / separate_delay - 1.0), 2),
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

    # Preserve the existing same-vector PLSAD accuracy population. The new DIV
    # RTL passed equivalence to the old arithmetic; only its PPA source changes.
    fields, plsad = load(PPA / "plsad_vs_oadm_hier_compile_10ns.csv")
    for row in plsad:
        if row["family"] != "OADM":
            continue
        level = int(row["configuration"].removeprefix("fixed_L"))
        point = points[f"root_div/oadm_fixed_l{level}_div_specialized"]
        for field in ("area_um2", "delay_ns", "setup_slack_ns", "power_mw", "status"):
            row[field] = point[field]
        row["implementation_scope"] = (
            f"{point['top']}; elaboration-time LEVEL; unchanged residual and w_n "
            "truncation; accuracy retained via RTL equivalence; "
            "source experiments/fixed_div_level_specialization/specialized_rtl.v"
        )
    write(PPA / "plsad_vs_oadm_hier_compile_10ns.csv", fields, plsad)

    amlib = []
    for level in range(4):
        oam = points[f"amlib_oam/L{level}"]
        oadm = points[f"mul_root/oadm_fixed_l{level}_mul_root_opt"]
        amlib.extend([oam, oadm])
    write(PPA / "amlib_oam_vs_oadm_mul_hier_compile_10ns.csv",
          master_fields, amlib)

    statuses = {str(point["status"]) for point in points.values()}
    print(f"wrote 9 CSVs from {len(points)} points; statuses={sorted(statuses)}")


if __name__ == "__main__":
    main()
