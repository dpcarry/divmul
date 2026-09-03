#!/usr/bin/env python3
import csv
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DC = ROOT / "dc/l2_divopt/outputs_10ns"
PT = ROOT / "pt_dc/l2_divopt/reports_10ns"
OUT = ROOT / "ppa_results/div_only_l2_optimization_10ns.csv"

POINTS = [
    ("baseline", "oadm_fixed_l2_div_paceio_opt",
     "generic centered-residual L2", "superseded"),
    ("balanced", "oadm_fixed_l2_div_specialized_paceio",
     "fixed-L2 midpoint algebra and range-specialized normalizer",
     "selected delay-balanced point"),
    ("unsigned", "oadm_fixed_l2_div_specialized_unsigned_paceio",
     "balanced specialization with unsigned reciprocal-scale multiply",
     "not selected"),
    ("reduced_unsigned", "oadm_fixed_l2_div_specialized_reduced_scale_paceio",
     "unsigned scale narrowed from 27 to proven 25 active plane bits",
     "equivalent-width alternative"),
    ("area_power", "oadm_fixed_l2_div_specialized_reduced_signed_scale_paceio",
     "proven 25 active plane bits with signed constant-multiply mapping",
     "area/power Pareto"),
    ("midpoint_shift_add", "oadm_fixed_l2_div_specialized_shiftadd_paceio",
     "midpoint products expanded into shifts and adds", "dominated"),
    ("scale_shift_add", "oadm_fixed_l2_div_specialized_scale_shiftadd_paceio",
     "Q0.7 reciprocal coefficient multiply expanded into shifts and adds",
     "delay Pareto"),
    ("post_scale_correction", "oadm_fixed_l2_div_specialized_postcorr_paceio",
     "rounding correction moved after reciprocal scaling", "dominated"),
    ("midpoint_shift_add_post_scale_correction",
     "oadm_fixed_l2_div_specialized_shiftadd_postcorr_paceio",
     "shift-add midpoint terms plus post-scale correction", "dominated"),
]


def capture(pattern, path):
    match = re.search(pattern, path.read_text(errors="replace"), re.MULTILINE)
    if not match:
        raise RuntimeError(f"missing {pattern!r} in {path}")
    return match.group(1)


def read_point(top):
    dc_dir = DC / top
    pt_dir = PT / top
    dc_report = dc_dir / f"{top}.dc.rpt"
    netlist = dc_dir / f"{top}.nl.v"
    timing = pt_dir / f"{top}.pt.max_delay.rpt"
    power = pt_dir / f"{top}.pt.power.rpt"
    qor = pt_dir / f"{top}.pt.qor.rpt"
    check = pt_dir / f"{top}.pt.check_timing.rpt"
    violations = pt_dir / f"{top}.pt.max_delay.violations.rpt"
    for path in (dc_report, netlist, timing, power, qor, check, violations):
        if not path.is_file() or path.stat().st_size == 0:
            raise RuntimeError(f"missing L2 result: {path}")
    dc_text = dc_report.read_text(errors="replace")
    if "Number of sequential cells:                 0" not in dc_text:
        raise RuntimeError(f"sequential mapping: {dc_report}")
    if not re.search(r"Number of macros/black boxes:\s+0", dc_text):
        raise RuntimeError(f"macro or black box: {dc_report}")
    if len(re.findall(r"^module\s", netlist.read_text(errors="replace"), re.M)) != 1:
        raise RuntimeError(f"netlist is not flat: {netlist}")
    if "check_timing succeeded." not in check.read_text(errors="replace"):
        raise RuntimeError(f"PT timing check failed: {check}")
    if "VIOLATED" in violations.read_text(errors="replace"):
        raise RuntimeError(f"PT max-delay violation: {violations}")
    return {
        "area": float(capture(r"Total cell area:\s+([0-9.]+)", dc_report)),
        "delay": float(capture(r"data arrival time\s+([0-9.]+)", timing)),
        "power": 1000.0 * float(capture(r"Total Power\s+=\s+([0-9.eE+-]+)", power)),
        "levels": int(capture(r"Levels of Logic:\s+([0-9]+)", qor)),
        "dc": dc_report.relative_to(ROOT).as_posix(),
        "pt": pt_dir.relative_to(ROOT).as_posix(),
    }


data = {top: read_point(top) for _, top, _, _ in POINTS}
baseline = data[POINTS[0][1]]
rtl_log = ROOT / "qsim_rtl/l2_divopt/rtl_equiv.log"
if "PASS: L2 specialized variants match reference on 500064 vectors" not in rtl_log.read_text():
    raise RuntimeError("L2 RTL equivalence evidence is missing")

for top in (POINTS[1][1], POINTS[3][1], POINTS[4][1]):
    gate_log = ROOT / f"qsim_rtl/l2_divopt/{top}.gate.log"
    if "L2_SPECIALIZED_GATE_MITER PASS: 20003 vectors" not in gate_log.read_text():
        raise RuntimeError(f"L2 gate miter evidence is missing: {gate_log}")

fields = [
    "candidate", "top", "implementation", "selection", "area_um2",
    "pt_delay_ns", "pt_power_mw", "adp_um2_ns", "logic_levels",
    "area_delta_pct_vs_baseline", "delay_delta_pct_vs_baseline",
    "power_delta_pct_vs_baseline", "functional_check", "dc_report",
    "pt_report_dir", "flow_note",
]
rows = []
for name, top, implementation, selection in POINTS:
    p = data[top]
    gate = ""
    if top in (POINTS[1][1], POINTS[3][1], POINTS[4][1]):
        gate = "; 20003-vector gate miter passed"
    rows.append({
        "candidate": name, "top": top, "implementation": implementation,
        "selection": selection, "area_um2": f"{p['area']:.6f}",
        "pt_delay_ns": f"{p['delay']:.5f}",
        "pt_power_mw": f"{p['power']:.7f}",
        "adp_um2_ns": f"{p['area'] * p['delay']:.6f}",
        "logic_levels": p["levels"],
        "area_delta_pct_vs_baseline": f"{100.0 * (p['area'] / baseline['area'] - 1):.2f}",
        "delay_delta_pct_vs_baseline": f"{100.0 * (p['delay'] / baseline['delay'] - 1):.2f}",
        "power_delta_pct_vs_baseline": f"{100.0 * (p['power'] / baseline['power'] - 1):.2f}",
        "functional_check": "500064-vector bit-exact RTL equivalence" + gate,
        "dc_report": p["dc"], "pt_report_dir": p["pt"],
        "flow_note": ("TSMC65 typical CCS; 10 ns; no pipeline; explicit flatten; "
                      "set_max_area 0; compile_ultra; optimize_netlist -area; "
                      "PT vectorless probability 0.5 and 0.1 toggles per 10 ns"),
    })

temporary = OUT.with_suffix(".csv.tmp")
with temporary.open("w", newline="") as handle:
    writer = csv.DictWriter(handle, fieldnames=fields)
    writer.writeheader()
    writer.writerows(rows)
temporary.replace(OUT)
print(f"Updated {OUT.relative_to(ROOT)} from {len(rows)} validated L2 points.")
