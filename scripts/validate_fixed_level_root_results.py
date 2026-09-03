#!/usr/bin/env python3
"""Cross-check fixed-level root-opt CSV values against raw evidence."""

import csv
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]


def read(path):
    return (ROOT / path).read_text()


def first_float(pattern, text):
    match = re.search(pattern, text)
    if not match:
        raise RuntimeError(f"missing pattern: {pattern}")
    return float(match.group(1))


def close(label, recorded, reported, tolerance=5e-7):
    if abs(recorded - reported) > tolerance:
        raise RuntimeError(f"{label}: CSV={recorded} report={reported}")


def main():
    accuracy_path = ROOT / "qsim_rtl/root_opt/root_opt_accuracy.csv"
    with accuracy_path.open() as source:
        accuracy = {
            row["level"]: row for row in csv.DictReader(source)
            if row["candidate"] == "fixed_root"
        }

    result_path = ROOT / "ppa_results/fixed_level_root_opt_10ns.csv"
    with result_path.open() as source:
        rows = [
            row for row in csv.DictReader(source)
            if row["variant"] == "root_opt"
        ]
    if len(rows) != 4:
        raise RuntimeError(f"expected four root-opt rows, found {len(rows)}")

    for row in rows:
        level = row["level"]
        dc_text = read(row["dc_report"])
        pt_dir = row["pt_report"]
        top = f"oadm_fixed_{level.lower()}_div_root_opt"
        delay_text = read(f"{pt_dir}/{top}.pt.max_delay.rpt")
        power_text = read(f"{pt_dir}/{top}.pt.power.rpt")
        check_text = read(f"{pt_dir}/{top}.pt.check_timing.rpt")
        qor_text = read(f"{pt_dir}/{top}.pt.qor.rpt")

        close(f"{level} area", float(row["area_um2"]), first_float(
            r"Total cell area:\s+([0-9.]+)", dc_text
        ))
        close(f"{level} delay", float(row["pt_delay_ns"]), first_float(
            r"data arrival time\s+([0-9.]+)", delay_text
        ))
        close(f"{level} power", float(row["pt_power_mw"]), 1000.0 * first_float(
            r"Total Power\s+=\s+([0-9.eE+-]+)", power_text
        ))
        for metric in ("mae", "mred", "rmse"):
            close(
                f"{level} {metric}", float(row[metric]),
                float(accuracy[level][metric]), tolerance=5e-10,
            )
        if "check_timing succeeded." not in check_text:
            raise RuntimeError(f"{level}: PrimeTime check_timing failed")
        if "Hierarchical Cell Count:                    0" not in qor_text:
            raise RuntimeError(f"{level}: synthesized result is not flat")
        if "Number of macros/black boxes:               0" not in dc_text:
            raise RuntimeError(f"{level}: macro or black box present")

    gate_log = read("qsim_rtl/root_opt/gate_miter.log")
    model_log = read("qsim_rtl/root_opt/transcript")
    if ("ROOT_OPT_GATE_MITER PASS: 20002 normal-finite vectors per DUT"
            not in gate_log):
        raise RuntimeError("final gate-miter pass marker is missing")
    if "ROOT_OPT_MODEL_CROSSCHECK PASS: 1000 vectors" not in model_log:
        raise RuntimeError("integer-model cross-check pass marker is missing")
    print("PASS: four fixed-level CSV rows match accuracy, DC, PT, and miter evidence")


if __name__ == "__main__":
    main()
