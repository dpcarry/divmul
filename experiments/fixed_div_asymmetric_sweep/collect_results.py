#!/usr/bin/env python3
"""Collect accuracy and matched-control PPA for the asymmetric sweep."""

import csv
import re
from pathlib import Path


HERE = Path(__file__).resolve().parent


def read(path):
    return path.read_text(errors="replace")


def number(pattern, source, last=True):
    matches = re.findall(pattern, source, re.MULTILINE)
    if not matches:
        raise ValueError(f"missing {pattern}")
    return float(matches[-1] if last else matches[0])


def ppa(top):
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
        "delay_ns": number(r"data arrival time\s+([0-9.eE+-]+)", timing,
                           last=False),
        "setup_slack_ns": number(
            r"slack \((?:MET|VIOLATED)\)\s+([0-9.eE+-]+)", timing,
            last=False,
        ),
        "power_mw": 1000.0 * number(
            r"Total Power\s+=\s+([0-9.eE+-]+)", power
        ),
        "status": "pass" if not errors else ";".join(errors),
    }


def main():
    with (HERE / "results" / "common_accuracy.csv").open(newline="") as src:
        accuracy = {row["design"]: row for row in csv.DictReader(src)}

    configurations = (
        ("current_L0_dx18_dy18", "oadm_fixed_l0_div_dx18_dy18_control",
         0, 18, 18, 59, "matched_control"),
        ("control_L0_dx18_dy18_c60",
         "oadm_fixed_l0_div_dx18_dy18_c60_control",
         0, 18, 18, 60, "coefficient_control"),
        ("candidate_L0_dx19_dy18_c59", "oadm_fixed_l0_div_dx19_dy18_c59",
         0, 19, 18, 59, "asymmetric_only"),
        ("candidate_L0_dx19_dy18", "oadm_fixed_l0_div_dx19_dy18",
         0, 19, 18, 60, "asymmetric_plus_retune"),
        ("candidate_L0_dx18_dy19", "oadm_fixed_l0_div_dx18_dy19",
         0, 18, 19, 59, "asymmetric_only"),
        ("current_L1_dx16_dy16", "oadm_fixed_l1_div_dx16_dy16_control",
         1, 16, 16, 83, "matched_control"),
        ("candidate_L1_dx17_dy16", "oadm_fixed_l1_div_dx17_dy16",
         1, 17, 16, 83, "asymmetric_only"),
        ("candidate_L1_dx16_dy17", "oadm_fixed_l1_div_dx16_dy17",
         1, 16, 17, 83, "asymmetric_only"),
    )
    baselines = {}
    rows = []
    for (design, top, level, x_drop, y_drop, coefficient,
         selection) in configurations:
        result = ppa(top)
        if selection == "matched_control":
            baselines[level] = result
        baseline = baselines[level]
        rows.append({
            "design": design,
            "top": top,
            "level": level,
            "x_residual_drop": x_drop,
            "y_residual_drop": y_drop,
            "wn_drop": 18 if level == 0 else 16,
            "coefficient_c0": coefficient,
            "cases": accuracy[design]["cases"],
            "mae": accuracy[design]["mae"],
            "mred": accuracy[design]["mred"],
            "rmse": accuracy[design]["rmse"],
            **result,
            "area_change_vs_control_pct": 100.0 * (
                result["area_um2"] / baseline["area_um2"] - 1.0
            ),
            "delay_change_vs_control_pct": 100.0 * (
                result["delay_ns"] / baseline["delay_ns"] - 1.0
            ),
            "power_change_vs_control_pct": 100.0 * (
                result["power_mw"] / baseline["power_mw"] - 1.0
            ),
            "gate_vectors": 20002,
            "selection": selection,
        })

    output = HERE / "results" / "summary.csv"
    with output.open("w", newline="") as destination:
        writer = csv.DictWriter(destination, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)
    print(f"wrote {output}")


if __name__ == "__main__":
    main()
