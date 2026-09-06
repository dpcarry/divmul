#!/usr/bin/env python3
"""Collect PLSAD extended exact-MSB accuracy and local PPA."""

import csv
import re
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]


def text(path):
    return path.read_text(errors="replace")


def number(pattern, source, last=True):
    matches = re.findall(pattern, source, re.MULTILINE)
    if not matches:
        raise ValueError(f"missing pattern {pattern}")
    return float(matches[-1] if last else matches[0])


def candidate_ppa(m):
    top = f"plsad_m{m}_fp32_paceio"
    dc_dir = HERE / "dc" / top
    pt_dir = HERE / "pt" / top
    dc = text(dc_dir / f"{top}.dc.rpt")
    timing = text(pt_dir / f"{top}.pt.max_delay.rpt")
    power = text(pt_dir / f"{top}.pt.power.rpt")
    check = text(pt_dir / f"{top}.pt.check_timing.rpt")
    max_viol = text(pt_dir / f"{top}.pt.max_delay.violations.rpt")
    min_viol = text(pt_dir / f"{top}.pt.min_delay.violations.rpt")
    console = text(dc_dir / "dc_console.log")
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
        "top": top,
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
    with (HERE / "results" / "accuracy.csv").open(newline="") as source:
        accuracy = {
            int(row["exact_msb_bits"]): row for row in csv.DictReader(source)
        }
    with (ROOT / "ppa_results" / "priorwork_hier_compile_10ns.csv").open(
        newline=""
    ) as source:
        prior = {row["top"]: row for row in csv.DictReader(source)}

    m8 = prior["plsad_m8_fp32_paceio"]
    ppa = {
        8: {
            "top": m8["top"],
            "area_um2": float(m8["area_um2"]),
            "delay_ns": float(m8["delay_ns"]),
            "setup_slack_ns": float(m8["setup_slack_ns"]),
            "power_mw": float(m8["power_mw"]),
            "status": m8["status"],
        },
        10: candidate_ppa(10),
        12: candidate_ppa(12),
        15: candidate_ppa(15),
    }
    rows = []
    for m in (8, 10, 12, 15):
        point = ppa[m]
        rows.append({
            "exact_msb_bits": m,
            "loa_bits": 15 - m,
            "top": point["top"],
            "cases": accuracy[m]["cases"],
            "mae": accuracy[m]["mae"],
            "mred": accuracy[m]["mred"],
            "rmse": accuracy[m]["rmse"],
            "area_um2": point["area_um2"],
            "delay_ns": point["delay_ns"],
            "setup_slack_ns": point["setup_slack_ns"],
            "power_mw": point["power_mw"],
            "area_change_vs_m8_pct": 100.0 * (
                point["area_um2"] / ppa[8]["area_um2"] - 1.0
            ),
            "mred_change_vs_m8_pct": 100.0 * (
                float(accuracy[m]["mred"]) / float(accuracy[8]["mred"]) - 1.0
            ),
            "gate_vectors": 20002,
            "status": point["status"],
            "scope": "paper_reported" if m == 8 else "extended_experiment",
        })
    output = HERE / "results" / "summary.csv"
    with output.open("w", newline="") as destination:
        writer = csv.DictWriter(destination, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)
    print(f"wrote {output.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
