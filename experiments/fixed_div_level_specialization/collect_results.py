#!/usr/bin/env python3
"""Collect fixed-DIV level-specialization PPA against current fixed rows."""

import csv
import re
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
CURRENT_PPA = ROOT / "ppa_results" / "root_opt_hier_compile_10ns.csv"


def text(path):
    return path.read_text(errors="replace")


def number(pattern, source, last=True):
    matches = re.findall(pattern, source, re.MULTILINE)
    if not matches:
        raise ValueError(f"missing pattern {pattern}")
    return float(matches[-1] if last else matches[0])


def specialized_ppa(top):
    dc_dir = HERE / "dc" / top
    pt_dir = HERE / "pt" / top
    dc = text(dc_dir / f"{top}.dc.rpt")
    setup = text(pt_dir / f"{top}.pt.max_delay.rpt")
    hold = text(pt_dir / f"{top}.pt.min_delay.rpt")
    power = text(pt_dir / f"{top}.pt.power.rpt")
    check = text(pt_dir / f"{top}.pt.check_timing.rpt")
    max_viol = text(pt_dir / f"{top}.pt.max_delay.violations.rpt")
    min_viol = text(pt_dir / f"{top}.pt.min_delay.violations.rpt")
    console = text(dc_dir / "dc_console.log")
    errors = []
    if "check_timing succeeded." not in check:
        errors.append("check_timing_failed")
    if "VIOLATED" in setup or "VIOLATED" in max_viol:
        errors.append("setup_violation")
    if "VIOLATED" in hold or "VIOLATED" in min_viol:
        errors.append("hold_violation")
    if not re.search(r"(?m)^compile$", console):
        errors.append("plain_compile_missing")
    if re.search(r"(?m)^(?:ungroup|compile_ultra)(?:\s|$)", console):
        errors.append("forbidden_mapping_command")
    return {
        "area_um2": number(r"Total cell area:\s+([0-9.eE+-]+)", dc),
        "delay_ns": number(r"data arrival time\s+([0-9.eE+-]+)", setup,
                           last=False),
        "setup_slack_ns": number(
            r"slack \((?:MET|VIOLATED)\)\s+([0-9.eE+-]+)", setup,
            last=False,
        ),
        "hold_check": (
            "not_applicable_combinational"
            if "No paths with slack less than 0.00000." in hold
            else "reported"
        ),
        "power_mw": 1000.0 * number(
            r"Total Power\s+=\s+([0-9.eE+-]+)", power
        ),
        "status": "pass" if not errors else ";".join(errors),
    }


def main():
    with CURRENT_PPA.open(newline="") as source:
        current = {row["top"]: row for row in csv.DictReader(source)}

    rows = []
    for level in range(4):
        old_top = f"oadm_fixed_l{level}_div_root_opt"
        new_top = f"oadm_fixed_l{level}_div_specialized"
        old = current[old_top]
        new = specialized_ppa(new_top)
        rows.append({
            "level": level,
            "old_top": old_top,
            "specialized_top": new_top,
            "residual_drop": 18 if level == 0 else 16,
            "wn_drop": 18 if level == 0 else 16,
            "old_area_um2": old["area_um2"],
            "area_um2": new["area_um2"],
            "area_change_pct": 100.0 * (
                new["area_um2"] / float(old["area_um2"]) - 1.0
            ),
            "old_delay_ns": old["delay_ns"],
            "delay_ns": new["delay_ns"],
            "delay_change_pct": 100.0 * (
                new["delay_ns"] / float(old["delay_ns"]) - 1.0
            ),
            "setup_slack_ns": new["setup_slack_ns"],
            "hold_check": new["hold_check"],
            "old_power_mw": old["power_mw"],
            "power_mw": new["power_mw"],
            "power_change_pct": 100.0 * (
                new["power_mw"] / float(old["power_mw"]) - 1.0
            ),
            "rtl_vectors": 20002,
            "gate_vectors": 20002,
            "status": new["status"],
        })

    output = HERE / "results" / "summary.csv"
    output.parent.mkdir(exist_ok=True)
    with output.open("w", newline="") as destination:
        writer = csv.DictWriter(destination, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)
    print(f"wrote {output.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
