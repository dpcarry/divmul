#!/usr/bin/env python3
"""Collect isolated aggressive fixed-divider accuracy and PPA results."""

import csv
import re
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
CURRENT_PPA = ROOT / "ppa_results" / "root_opt_hier_compile_10ns.csv"


def read(path):
    return path.read_text(errors="replace")


def number(pattern, source, last=True):
    matches = re.findall(pattern, source, re.MULTILINE)
    if not matches:
        raise ValueError(f"missing {pattern}")
    return float(matches[-1] if last else matches[0])


def candidate_ppa(top):
    dc_dir = HERE / "dc" / top
    pt_dir = HERE / "pt" / top
    dc = read(dc_dir / f"{top}.dc.rpt")
    timing = read(pt_dir / f"{top}.pt.max_delay.rpt")
    power = read(pt_dir / f"{top}.pt.power.rpt")
    check = read(pt_dir / f"{top}.pt.check_timing.rpt")
    max_viol = read(pt_dir / f"{top}.pt.max_delay.violations.rpt")
    min_viol = read(pt_dir / f"{top}.pt.min_delay.violations.rpt")
    console = read(dc_dir / "dc_console.log")
    errors = []
    if "check_timing succeeded." not in check:
        errors.append("check_timing_failed")
    if "VIOLATED" in timing or "VIOLATED" in max_viol:
        errors.append("max_delay_violation")
    if "VIOLATED" in min_viol:
        errors.append("min_delay_violation")
    if not re.search(r"(?m)^compile$", console):
        errors.append("plain_compile_missing")
    if re.search(r"(?m)^(?:ungroup|compile_ultra)(?:\s|$)", console):
        errors.append("forbidden_mapping_command")
    return {
        "area_um2": number(r"Total cell area:\s+([0-9.eE+-]+)", dc),
        "delay_ns": number(
            r"data arrival time\s+([0-9.eE+-]+)", timing, last=False
        ),
        "setup_slack_ns": number(
            r"slack \((?:MET|VIOLATED)\)\s+([0-9.eE+-]+)",
            timing,
            last=False,
        ),
        "power_mw": 1000.0 * number(
            r"Total Power\s+=\s+([0-9.eE+-]+)", power
        ),
        "status": "pass" if not errors else ";".join(errors),
    }


def main():
    with CURRENT_PPA.open(newline="") as source:
        current_rows = {row["top"]: row for row in csv.DictReader(source)}
    with (HERE / "results" / "common_accuracy.csv").open(newline="") as source:
        accuracy = {row["design"]: row for row in csv.DictReader(source)}

    descriptions = (
        ("current_L0_r18_w18", "oadm_fixed_l0_div_root_opt", 0, 18, 18,
         "current"),
        ("candidate_L0_r19_w18", "oadm_fixed_l0_div_r19_w18", 0, 19, 18,
         "negative_result"),
        ("current_L1_r16_w16", "oadm_fixed_l1_div_root_opt", 1, 16, 16,
         "current"),
        ("candidate_L1_r16_w17", "oadm_fixed_l1_div_r16_w17", 1, 16, 17,
         "negative_result"),
    )
    rows = []
    for design, top, level, residual_drop, wn_drop, selection in descriptions:
        if selection == "current":
            ppa = current_rows[top]
        else:
            ppa = candidate_ppa(top)
        baseline = rows[-1] if selection == "negative_result" else None
        row = {
            "design": design,
            "top": top,
            "level": level,
            "residual_drop": residual_drop,
            "wn_drop": wn_drop,
            "cases": accuracy[design]["cases"],
            "mae": accuracy[design]["mae"],
            "mred": accuracy[design]["mred"],
            "rmse": accuracy[design]["rmse"],
            "area_um2": ppa["area_um2"],
            "delay_ns": ppa["delay_ns"],
            "setup_slack_ns": ppa["setup_slack_ns"],
            "power_mw": ppa["power_mw"],
            "area_change_vs_current_pct": "" if baseline is None else (
                100.0 * (float(ppa["area_um2"])
                         / float(baseline["area_um2"]) - 1.0)
            ),
            "delay_change_vs_current_pct": "" if baseline is None else (
                100.0 * (float(ppa["delay_ns"])
                         / float(baseline["delay_ns"]) - 1.0)
            ),
            "power_change_vs_current_pct": "" if baseline is None else (
                100.0 * (float(ppa["power_mw"])
                         / float(baseline["power_mw"]) - 1.0)
            ),
            "gate_vectors": 20002 if selection == "negative_result" else 20002,
            "status": ppa["status"],
            "selection": selection,
        }
        rows.append(row)

    output = HERE / "results" / "summary.csv"
    with output.open("w", newline="") as destination:
        writer = csv.DictWriter(destination, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)
    print(f"wrote {output.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
