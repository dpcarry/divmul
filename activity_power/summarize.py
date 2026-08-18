#!/usr/bin/env python3
import csv
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parent


SCENARIOS = []
for mode in ("mul", "div"):
    for level in range(5):
        SCENARIOS.append(
            (f"runtime_{mode}_l{level}", "runtime", mode.upper(), f"L{level}",
             "../dc/pipeline_sweep/outputs/runtime/p6/oadm_runtime_p6.dc.rpt", 1.5)
        )
SCENARIOS.extend([
    ("fixed_l4_mul", "fixed_l4", "MUL", "L4",
     "../dc/pipeline_sweep/outputs/fixed_l4/p6/oadm_fixed_l4_p6.dc.rpt", 1.5),
    ("fixed_l4_div", "fixed_l4", "DIV", "L4",
     "../dc/pipeline_sweep/outputs/fixed_l4/p6/oadm_fixed_l4_p6.dc.rpt", 1.5),
    ("exact_mul", "exact_standalone", "MUL", "Exact",
     "../dc/exact_baseline/outputs/mul/exact_fp32_mul_7stage.dc.rpt", 2.0),
    ("exact_div", "exact_standalone", "DIV", "Exact",
     "../dc/exact_baseline/outputs/div/exact_fp32_div_7stage.dc.rpt", 2.0),
    ("exact_divmul_mul", "exact_combined", "MUL", "Exact",
     "../dc/exact_baseline/outputs/divmul/exact_fp32_divmul_7stage.dc.rpt", 2.0),
    ("exact_divmul_div", "exact_combined", "DIV", "Exact",
     "../dc/exact_baseline/outputs/divmul/exact_fp32_divmul_7stage.dc.rpt", 2.0),
])


def first(pattern, text):
    match = re.search(pattern, text)
    if not match:
        raise RuntimeError(f"missing pattern: {pattern}")
    return float(match.group(1))


rows = []
for scenario, family, mode, level, area_path, period_ns in SCENARIOS:
    power_path = ROOT / "reports" / f"{scenario}.pt.power.rpt"
    if not power_path.exists():
        continue
    power_text = power_path.read_text(errors="replace")
    area_text = (ROOT / area_path).read_text(errors="replace")

    switching_w = first(r"Net Switching Power\s*=\s*([0-9.eE+-]+)", power_text)
    internal_w = first(r"Cell Internal Power\s*=\s*([0-9.eE+-]+)", power_text)
    leakage_w = first(r"Cell Leakage Power\s*=\s*([0-9.eE+-]+)", power_text)
    total_w = first(r"Total Power\s*=\s*([0-9.eE+-]+)", power_text)
    total_mw = total_w * 1000.0
    dynamic_mw = (switching_w + internal_w) * 1000.0
    leakage_mw = leakage_w * 1000.0
    rows.append({
        "scenario": scenario,
        "family": family,
        "mode": mode,
        "level": level,
        "clock_period_ns": period_ns,
        "throughput_mops": 1000.0 / period_ns,
        "area_um2": first(r"Total cell area:\s*([0-9.]+)", area_text),
        "switching_power_mw": switching_w * 1000.0,
        "internal_power_mw": internal_w * 1000.0,
        "dynamic_power_mw": dynamic_mw,
        "leakage_power_mw": leakage_mw,
        "total_power_mw": total_mw,
        "dynamic_energy_pj_per_op": dynamic_mw * period_ns,
        "total_energy_pj_per_op": total_mw * period_ns,
    })


fieldnames = list(rows[0]) if rows else []
with (ROOT / "results.csv").open("w", newline="") as output:
    writer = csv.DictWriter(output, fieldnames=fieldnames, lineterminator="\n")
    writer.writeheader()
    writer.writerows(rows)


lines = [
    "# Activity-based PrimeTime power results",
    "",
    "Power comes from gate-level VCD activity over 10,000 continuously issued",
    "operations after 20 warm-up cycles. All runs use the same deterministic",
    "uniform-random normalized FP32 encoding sequence. Runtime P6 and fixed-L4",
    "operate at 1.5 ns; legacy exact baselines are reported at their timing-clean",
    "2.0 ns PrimeTime period. Compare energy/op across unequal periods rather than",
    "treating their average mW as an equal-throughput comparison.",
    "",
    "| Family | Mode | Level | Period (ns) | Area (um2) | Dynamic (mW) | Leakage (mW) | Total (mW) | Energy/op (pJ) |",
    "|---|---|---:|---:|---:|---:|---:|---:|---:|",
]
for row in rows:
    lines.append(
        f"| {row['family']} | {row['mode']} | {row['level']} | "
        f"{row['clock_period_ns']:.2f} | {row['area_um2']:.2f} | "
        f"{row['dynamic_power_mw']:.6f} | {row['leakage_power_mw']:.6f} | "
        f"{row['total_power_mw']:.6f} | {row['total_energy_pj_per_op']:.6f} |"
    )

by_scenario = {row["scenario"]: row for row in rows}


def percent_change(new, reference):
    return 100.0 * (new / reference - 1.0)


key_comparisons = []
required = {
    "runtime_mul_l0", "runtime_mul_l4", "runtime_div_l0", "runtime_div_l4",
    "fixed_l4_mul", "fixed_l4_div", "exact_mul", "exact_div",
    "exact_divmul_mul", "exact_divmul_div",
}
if required.issubset(by_scenario):
    runtime_l4_mul = by_scenario["runtime_mul_l4"]
    runtime_l4_div = by_scenario["runtime_div_l4"]
    fixed_l4_mul = by_scenario["fixed_l4_mul"]
    fixed_l4_div = by_scenario["fixed_l4_div"]
    exact_mul = by_scenario["exact_mul"]
    exact_div = by_scenario["exact_div"]
    exact_combined_mul = by_scenario["exact_divmul_mul"]
    exact_combined_div = by_scenario["exact_divmul_div"]

    separate_exact_area = exact_mul["area_um2"] + exact_div["area_um2"]
    key_comparisons = [
        "## Key comparisons",
        "",
        f"- Runtime OADM occupies {runtime_l4_mul['area_um2']:.2f} um2, "
        f"{abs(percent_change(runtime_l4_mul['area_um2'], exact_combined_mul['area_um2'])):.2f}% "
        "less than exact combined divmul and "
        f"{abs(percent_change(runtime_l4_mul['area_um2'], separate_exact_area)):.2f}% "
        "less than the sum of standalone exact MUL and DIV.",
        f"- Runtime L4 MUL energy is "
        f"{percent_change(runtime_l4_mul['total_energy_pj_per_op'], exact_mul['total_energy_pj_per_op']):+.2f}% "
        "versus standalone exact MUL and "
        f"{percent_change(runtime_l4_mul['total_energy_pj_per_op'], exact_combined_mul['total_energy_pj_per_op']):+.2f}% "
        "versus exact combined MUL mode.",
        f"- Runtime L4 DIV energy is "
        f"{percent_change(runtime_l4_div['total_energy_pj_per_op'], exact_div['total_energy_pj_per_op']):+.2f}% "
        "versus standalone exact DIV and "
        f"{percent_change(runtime_l4_div['total_energy_pj_per_op'], exact_combined_div['total_energy_pj_per_op']):+.2f}% "
        "versus exact combined DIV mode.",
        f"- Runtime configurability adds "
        f"{percent_change(runtime_l4_mul['area_um2'], fixed_l4_mul['area_um2']):.2f}% area, "
        f"{percent_change(runtime_l4_mul['total_energy_pj_per_op'], fixed_l4_mul['total_energy_pj_per_op']):.2f}% L4 MUL energy, and "
        f"{percent_change(runtime_l4_div['total_energy_pj_per_op'], fixed_l4_div['total_energy_pj_per_op']):.2f}% L4 DIV energy over fixed L4.",
        f"- Selecting L4 instead of L0 raises runtime energy/op by "
        f"{percent_change(runtime_l4_mul['total_energy_pj_per_op'], by_scenario['runtime_mul_l0']['total_energy_pj_per_op']):.2f}% for MUL and "
        f"{percent_change(runtime_l4_div['total_energy_pj_per_op'], by_scenario['runtime_div_l0']['total_energy_pj_per_op']):.2f}% for DIV.",
        "",
    ]

lines.extend([
    "",
    *key_comparisons,
    "The runtime rows are the primary publication results. Fixed-L4 quantifies",
    "runtime-configurability overhead. Exact standalone and combined rows are",
    "baselines; the combined exact unit keeps both arithmetic units active because",
    "its mode input only selects the output.",
])
(ROOT / "RESULTS.md").write_text("\n".join(lines) + "\n")

print(f"Wrote {len(rows)} rows to {ROOT / 'results.csv'} and RESULTS.md")
