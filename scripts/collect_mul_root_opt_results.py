#!/usr/bin/env python3
"""Collect isolated MUL root-opt accuracy and canonical PPA reports."""

import csv
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
ACCURACY = ROOT / "qsim_rtl/mul_root_opt/logs/mul_root_opt_accuracy.csv"
BASELINE = ROOT / "ppa_results/amlib_oam_vs_oadm_mul_10ns.csv"
OUTPUT = ROOT / "ppa_results/mul_root_opt_results_10ns.csv"

DROPS = {
    "accuracy": (12, 10, 8, 6),
    "conservative": (16, 14, 12, 10),
    "aggressive": (18, 16, 14, 12),
}


def read_csv(path):
    with path.open(newline="") as source:
        return list(csv.DictReader(source))


def last_match(path, pattern):
    matches = re.findall(pattern, path.read_text())
    if not matches:
        raise RuntimeError("missing report value in {}".format(path))
    return float(matches[-1])


def ppa_for(top):
    dc = ROOT / "dc/mul_root_opt/outputs_10ns" / top / (top + ".dc.rpt")
    pt = ROOT / "pt_dc/mul_root_opt/reports_10ns" / top
    timing = pt / (top + ".pt.max_delay.rpt")
    power = pt / (top + ".pt.power.rpt")
    area = last_match(dc, r"Total cell area:\s+([0-9.]+)")
    arrivals = [float(value) for value in re.findall(
        r"^\s*data arrival time\s+([0-9.]+)\s*$",
        timing.read_text(), re.MULTILINE
    )]
    if not arrivals:
        raise RuntimeError("missing positive arrival time in {}".format(timing))
    watts = last_match(power, r"Total Power\s+=\s+([0-9.eE+-]+)")
    return area, max(arrivals), watts * 1000.0, dc, pt


def relative(new, old):
    return 100.0 * (new / old - 1.0)


def main():
    accuracy = {
        (int(row["level"]), row["design"]): row
        for row in read_csv(ACCURACY)
    }
    baseline_rows = read_csv(BASELINE)
    ppa_baseline = {}
    for row in baseline_rows:
        design = "amlib" if row["design"] == "AM-Lib OAM" else "current"
        ppa_baseline[(int(row["level"][1:]), design)] = row

    fields = [
        "level", "variant", "status", "residual_drop", "vectors",
        "mae", "mred", "rmse", "mean_error", "area_um2", "delay_ns",
        "power_mw", "area_change_vs_current_pct",
        "delay_change_vs_current_pct", "power_change_vs_current_pct",
        "mae_change_vs_current_pct", "mred_change_vs_current_pct",
        "rmse_change_vs_current_pct", "validation", "dc_report",
        "pt_report", "flow_note",
    ]
    rows = []
    for level in range(4):
        current_accuracy = accuracy[(level, "current")]
        current_ppa = ppa_baseline[(level, "current")]
        for variant in ("amlib", "current", "accuracy", "conservative",
                        "aggressive"):
            metric = accuracy[(level, variant)]
            if variant in ("amlib", "current"):
                ppa = ppa_baseline[(level, variant)]
                area = float(ppa["area_um2"])
                delay = float(ppa["delay_ns"])
                power = float(ppa["power_mw"])
                dc_report = ppa["ppa_source"].split(";")[0]
                pt_report = ppa["ppa_source"].split(";")[1].strip()
                status = "reference"
                drop = 0
            else:
                suffix = ("_accuracy" if variant == "accuracy" else
                          "" if variant == "conservative" else "_aggressive")
                top = "oadm_fixed_l{}_mul_root_opt{}".format(level, suffix)
                area, delay, power, dc_path, pt_path = ppa_for(top)
                dc_report = str(dc_path.relative_to(ROOT))
                pt_report = str(pt_path.relative_to(ROOT))
                status = {
                    "accuracy": "selected_accuracy_preserving",
                    "conservative": "pareto_balanced",
                    "aggressive": "pareto_area",
                }[variant]
                drop = DROPS[variant][level]

            rows.append({
                "level": "L{}".format(level),
                "variant": variant,
                "status": status,
                "residual_drop": drop,
                "vectors": metric["vectors"],
                "mae": metric["mae"],
                "mred": metric["mred"],
                "rmse": metric["rmse"],
                "mean_error": metric["mean_error"],
                "area_um2": "{:.6f}".format(area),
                "delay_ns": "{:.5f}".format(delay),
                "power_mw": "{:.7f}".format(power),
                "area_change_vs_current_pct": "{:.4f}".format(
                    relative(area, float(current_ppa["area_um2"]))),
                "delay_change_vs_current_pct": "{:.4f}".format(
                    relative(delay, float(current_ppa["delay_ns"]))),
                "power_change_vs_current_pct": "{:.4f}".format(
                    relative(power, float(current_ppa["power_mw"]))),
                "mae_change_vs_current_pct": "{:.5f}".format(relative(
                    float(metric["mae"]), float(current_accuracy["mae"]))),
                "mred_change_vs_current_pct": "{:.5f}".format(relative(
                    float(metric["mred"]), float(current_accuracy["mred"]))),
                "rmse_change_vs_current_pct": "{:.5f}".format(relative(
                    float(metric["rmse"]), float(current_accuracy["rmse"]))),
                "validation": (
                    "200000 same-vector normal-finite cases; independent "
                    "integer model zero mismatches; 20002-vector normal-finite gate miter"
                    if variant not in ("amlib", "current")
                    else "200000 same-vector normal-finite cases"
                ),
                "dc_report": dc_report,
                "pt_report": pt_report,
                "flow_note": (
                    "TSMC65 10 ns no pipeline; input-only fanout; explicit "
                    "flatten; set_max_area 0; compile_ultra area-high; "
                    "optimize_netlist -area; vectorless PT"
                ),
            })

    with OUTPUT.open("w", newline="") as destination:
        writer = csv.DictWriter(destination, fields, lineterminator="\n")
        writer.writeheader()
        writer.writerows(rows)
    print("wrote {} rows to {}".format(len(rows), OUTPUT))


if __name__ == "__main__":
    main()
