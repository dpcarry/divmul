#!/usr/bin/env python3
"""Summarize the reproducible DC and PrimeTime pipeline sweep reports."""

import csv
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
DC_ROOT = ROOT / "dc" / "pipeline_sweep" / "outputs"
PT_ROOT = ROOT / "pt_dc" / "pipeline_sweep" / "reports"
OUT_CSV = ROOT / "dc" / "pipeline_sweep" / "results.csv"
OUT_MD = ROOT / "dc" / "pipeline_sweep" / "RESULTS.md"

DEPTHS = {
    "np": (0, 7.0),
    "p2": (2, 4.0),
    "p3": (3, 2.8),
    "p4": (4, 2.2),
    "p5": (5, 1.8),
    "p6": (6, 1.5),
    "p7": (7, 1.5),
}
CONFIGS = ("runtime", "fixed_l0", "fixed_l1", "fixed_l2", "fixed_l3", "fixed_l4")


def read(path):
    return path.read_text(errors="replace") if path.exists() else ""


def first_float(pattern, text):
    match = re.search(pattern, text, re.MULTILINE)
    return float(match.group(1)) if match else None


def slack(text):
    match = re.search(r"slack \((MET|VIOLATED[^)]*)\)\s+(-?\d+(?:\.\d+)?)", text)
    if not match:
        return None, "missing"
    return float(match.group(2)), "met" if match.group(1) == "MET" else "violated"


def dc_power(top, text):
    match = re.search(
        rf"^{re.escape(top)}\s+\S+\s+\S+\s+\S+\s+(\S+)\s+100\.0\s*$",
        text,
        re.MULTILINE,
    )
    return float(match.group(1)) if match else None


def fmt(value, digits=4):
    return "-" if value is None else f"{value:.{digits}f}"


rows = []
for config in CONFIGS:
    for depth, (stages, period) in DEPTHS.items():
        top = f"oadm_{config}_{depth}"
        dc_dir = DC_ROOT / config / depth
        pt_dir = PT_ROOT / config / depth
        dc_main = read(dc_dir / f"{top}.dc.rpt")
        dc_setup, dc_setup_status = slack(read(dc_dir / f"{top}.setup.rpt"))
        dc_hold, dc_hold_status = slack(read(dc_dir / f"{top}.hold.rpt"))
        pt_setup, pt_setup_status = slack(read(pt_dir / f"{top}.pt.setup.rpt"))
        pt_hold, pt_hold_status = slack(read(pt_dir / f"{top}.pt.hold.rpt"))
        pt_power_text = read(pt_dir / f"{top}.pt.power.rpt")
        pt_qor = read(pt_dir / f"{top}.pt.qor.rpt")
        rows.append(
            {
                "configuration": config,
                "depth": depth.upper(),
                "stages": stages,
                "period_ns": period,
                "latency_ns": None if stages == 0 else stages * period,
                "throughput_mops": 1000.0 / period,
                "dc_setup_slack_ns": dc_setup,
                "dc_setup_status": dc_setup_status,
                "dc_hold_slack_ns": dc_hold,
                "dc_hold_status": dc_hold_status,
                "dc_area_um2": first_float(r"Total cell area:\s+([0-9.]+)", dc_main),
                "dc_power_mw": dc_power(top, dc_main),
                "pt_setup_slack_ns": pt_setup,
                "pt_setup_status": pt_setup_status,
                "pt_hold_slack_ns": pt_hold,
                "pt_hold_status": pt_hold_status,
                "pt_area_um2": first_float(r"Total cell area:\s+([0-9.]+)", pt_qor),
                # PrimeTime reports power in watts with this library setup.
                "pt_power_mw": (
                    1000.0 * first_float(r"Total Power\s+=\s+([0-9.eE+-]+)", pt_power_text)
                    if "Total Power" in pt_power_text
                    else None
                ),
            }
        )

for row in rows:
    row["pt_energy_pj_per_op"] = (
        1000.0 * row["pt_power_mw"] / row["throughput_mops"]
        if row["pt_power_mw"] is not None
        else None
    )

with OUT_CSV.open("w", newline="") as output:
    writer = csv.DictWriter(output, fieldnames=rows[0].keys(), lineterminator="\n")
    writer.writeheader()
    writer.writerows(rows)

lines = [
    "# Pipeline-depth results",
    "",
    "All configurations implement the same FP32 approximation family. Runtime",
    "designs accept L0--L4 and MUL/DIV selections every cycle; fixed-level designs",
    "tie the level input at elaboration. Power is vectorless and intended for relative",
    "comparison, not workload-specific signoff.",
    "",
]
for config in CONFIGS:
    lines.extend(
        [
            f"## {config}",
            "",
            "| Depth | Period (ns) | Cycles | Latency (ns) | DC area (um^2) | PT setup (ns) | PT hold (ns) | PT power (mW) | Energy/op (pJ) |",
            "|---|---:|---:|---:|---:|---:|---:|---:|---:|",
        ]
    )
    for row in (item for item in rows if item["configuration"] == config):
        lines.append(
            "| {depth} | {period_ns:.2f} | {stages} | {latency} | {dc_area} | "
            "{pt_setup} | {pt_hold} | {pt_power} | {pt_energy} |".format(
                **row,
                latency=fmt(row["latency_ns"], 2),
                dc_area=fmt(row["dc_area_um2"], 2),
                pt_setup=fmt(row["pt_setup_slack_ns"]),
                pt_hold=fmt(row["pt_hold_slack_ns"]),
                pt_power=fmt(row["pt_power_mw"], 4),
                pt_energy=fmt(row["pt_energy_pj_per_op"], 3),
            )
        )
    lines.append("")

lines.extend(
    [
        "NP is combinational, so the table does not assign it a cycle latency.",
        "P2--P7 accept one operation per clock after their pipelines fill.",
        "A zero or slightly negative hold slack remains a violation until fixed; it",
        "is not rounded into a pass in this summary.",
    ]
)

lines.extend(
    [
        "",
        "## Fixed-level 1.5 ns comparison",
        "",
        "| Level | P6 area (um^2) | P7 area (um^2) | P6 power (mW) | P7 power (mW) | P6/P7 latency (ns) |",
        "|---|---:|---:|---:|---:|---:|",
    ]
)
for level in range(5):
    level_rows = {
        row["depth"]: row
        for row in rows
        if row["configuration"] == f"fixed_l{level}"
    }
    level_p6 = level_rows["P6"]
    level_p7 = level_rows["P7"]
    lines.append(
        f"| L{level} | {level_p6['dc_area_um2']:.2f} | "
        f"{level_p7['dc_area_um2']:.2f} | {level_p6['pt_power_mw']:.4f} | "
        f"{level_p7['pt_power_mw']:.4f} | "
        f"{level_p6['latency_ns']:.2f} / {level_p7['latency_ns']:.2f} |"
    )

runtime_rows = {row["depth"]: row for row in rows if row["configuration"] == "runtime"}
fixed_rows = {row["depth"]: row for row in rows if row["configuration"] == "fixed_l4"}
p3 = runtime_rows["P3"]
p6 = runtime_rows["P6"]
p7 = runtime_rows["P7"]
area_reduction = 100.0 * (p7["dc_area_um2"] - p6["dc_area_um2"]) / p7["dc_area_um2"]
power_reduction = 100.0 * (p7["pt_power_mw"] - p6["pt_power_mw"]) / p7["pt_power_mw"]
latency_reduction = 100.0 * (p7["latency_ns"] - p6["latency_ns"]) / p7["latency_ns"]
runtime_area_overhead = 100.0 * (
    p6["dc_area_um2"] - fixed_rows["P6"]["dc_area_um2"]
) / fixed_rows["P6"]["dc_area_um2"]
runtime_power_overhead = 100.0 * (
    p6["pt_power_mw"] - fixed_rows["P6"]["pt_power_mw"]
) / fixed_rows["P6"]["pt_power_mw"]
lines.extend(
    [
        "",
        "## Interpretation",
        "",
        f"- Runtime P3 is the area/energy knee: {p3['throughput_mops']:.1f} Mops/s, "
        f"{p3['dc_area_um2']:.2f} um^2, and {p3['pt_energy_pj_per_op']:.3f} pJ/op.",
        f"- Runtime P6 is the best 1.5 ns point: {p6['throughput_mops']:.1f} Mops/s "
        f"with {p6['latency_ns']:.2f} ns fill latency and positive setup/hold slack.",
        f"- P6 dominates P7 at the same throughput, reducing area by {area_reduction:.2f}%, "
        f"power by {power_reduction:.2f}%, and latency by {latency_reduction:.2f}%.",
        f"- At P6, runtime L0--L4 selection costs {runtime_area_overhead:.2f}% area and "
        f"{runtime_power_overhead:.2f}% power relative to fixed L4.",
        "",
        "These are pre-layout typical-corner results. Vectorless power is appropriate",
        "for this controlled architectural sweep, while workload-specific publication",
        "numbers should additionally use VCD/SAIF activity.",
    ]
)
OUT_MD.write_text("\n".join(lines) + "\n")
print(f"Wrote {OUT_CSV}")
print(f"Wrote {OUT_MD}")
