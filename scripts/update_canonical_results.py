#!/usr/bin/env python3
import csv
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DC = ROOT / "dc/canonical_refresh/outputs_10ns"
PT = ROOT / "pt_dc/canonical_refresh/reports_10ns"
PPA = ROOT / "ppa_results"


def first(pattern, path):
    text = path.read_text(errors="replace")
    match = re.search(pattern, text, re.MULTILINE)
    if not match:
        raise RuntimeError(f"missing {pattern!r} in {path}")
    return match.group(1)


def point(tag, top):
    dc_dir = DC / tag
    pt_dir = PT / tag
    dc_report = dc_dir / f"{top}.dc.rpt"
    timing = pt_dir / f"{top}.pt.max_delay.rpt"
    dc_timing = dc_dir / f"{top}.dc.critical_path.rpt"
    power = pt_dir / f"{top}.pt.power.rpt"
    check = pt_dir / f"{top}.pt.check_timing.rpt"
    violations = pt_dir / f"{top}.pt.max_delay.violations.rpt"
    netlist = dc_dir / f"{top}.nl.v"
    for path in (dc_report, dc_timing, timing, power, check, violations, netlist):
        if not path.is_file() or path.stat().st_size == 0:
            raise RuntimeError(f"missing canonical result: {path}")
    dc_text = dc_report.read_text(errors="replace")
    if "Number of sequential cells:                 0" not in dc_text:
        raise RuntimeError(f"non-combinational result: {dc_report}")
    if not re.search(r"Number of macros/black boxes:\s+0", dc_text):
        raise RuntimeError(f"macro or black box in {dc_report}")
    if len(re.findall(r"^module\s", netlist.read_text(errors="replace"), re.M)) != 1:
        raise RuntimeError(f"netlist is not fully flat: {netlist}")
    if "check_timing succeeded." not in check.read_text(errors="replace"):
        raise RuntimeError(f"check_timing failed: {check}")
    if "VIOLATED" in violations.read_text(errors="replace"):
        raise RuntimeError(f"timing violation: {violations}")
    area = float(first(r"Total cell area:\s+([0-9.]+)", dc_report))
    delay = float(first(r"data arrival time\s+([0-9.]+)", timing))
    dc_delay = float(first(r"data arrival time\s+([0-9.]+)", dc_timing))
    watts = float(first(r"Total Power\s+=\s+([0-9.eE+-]+)", power))
    return {
        "tag": tag,
        "top": top,
        "area": area,
        "delay": delay,
        "dc_delay": dc_delay,
        "power": watts * 1000.0,
        "adp": area * delay,
        "dc": dc_report.relative_to(ROOT).as_posix(),
        "pt": pt_dir.relative_to(ROOT).as_posix(),
    }


def write_csv(path, fields, rows):
    temporary = path.with_suffix(path.suffix + ".tmp")
    with temporary.open("w", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=fields)
        writer.writeheader()
        writer.writerows(rows)
    temporary.replace(path)


def fmt(value, digits=6):
    return f"{value:.{digits}f}"


points = []
exact = {}
for kind in ("mul", "div", "divmul"):
    top = f"exact_fp32_{kind}_nopipe"
    exact[kind] = point(f"exact/{kind}", top)
    points.append(exact[kind])

simdive = point("simdive/simdive_original_fp32_wrapper",
                 "simdive_original_fp32_wrapper")
points.append(simdive)

sharing = {}
for level in range(4):
    sharing[level] = {}
    for mode in ("full", "div", "mul"):
        top = (f"oadm_fixed_l{level}_opt" if mode == "full" else
               f"oadm_fixed_l{level}_div_opt" if mode == "div" else
               f"oadm_fixed_l{level}_mul_canonical")
        sharing[level][mode] = point(
            f"sharing/L{level}_centered_residual/{mode}", top)
        points.append(sharing[level][mode])

index_l0 = point("variant_audit/L0_centered_index/full", "oadm_fixed_l0_opt")
points.append(index_l0)

amlib = {}
for level in range(4):
    amlib[level] = point(f"amlib_oam/L{level}", "top")
    points.append(amlib[level])

common_note = ("TSMC65 typical CCS; 10 ns virtual clock; no pipeline; zero "
               "uncertainty; 20 ps I/O delay; INVD0 input driver; 0.004 "
               "output load; input-only max capacitance/fanout; explicit "
               "flatten; set_max_area 0; optimize_netlist -area; PT "
               "vectorless probability 0.5 and 0.1 toggles per 10 ns")

write_csv(
    PPA / "canonical_refresh_10ns.csv",
    ["tag", "top", "area_um2", "pt_delay_ns", "pt_power_mw", "adp_um2_ns",
     "dc_report", "pt_report_dir", "flow_note"],
    [{"tag": p["tag"], "top": p["top"], "area_um2": fmt(p["area"]),
      "pt_delay_ns": fmt(p["delay"], 5), "pt_power_mw": fmt(p["power"], 7),
      "adp_um2_ns": fmt(p["adp"]), "dc_report": p["dc"],
      "pt_report_dir": p["pt"], "flow_note": common_note} for p in points],
)

exact_rows = []
for kind, label in (("mul", "MUL"), ("div", "DIV"),
                    ("divmul", "DIV+MUL selectable")):
    p = exact[kind]
    exact_rows.append({
        "scope": "Exact baseline",
        "design": ("DesignWare exact combined" if kind == "divmul"
                   else "DesignWare exact standalone"),
        "mode": label, "clock_period_ns": "10.0", "pipeline_cycles": 0,
        "latency_ns": fmt(p["delay"], 5), "throughput_mops": "100.0",
        "area_um2": fmt(p["area"]), "total_power_mw": fmt(p["power"], 7),
        "total_energy_pj_per_op": fmt(p["power"] * 10.0, 6),
        "source": f"{p['dc']}; {p['pt']}",
        "measurement_note": common_note,
    })
write_csv(PPA / "exact_baselines_10ns_nopipe.csv", list(exact_rows[0]), exact_rows)

accuracy_text = (ROOT / "qsim_rtl/simdive_original/verilator_canonical.log").read_text()
gate_log = ROOT / "qsim_rtl/simdive_original/gate_vector_check.log"
if "SIMDIVE_CANONICAL_GATE_VECTOR_CHECK PASS: 20000 vectors" not in gate_log.read_text():
    raise RuntimeError("SIMDive canonical gate-vector check did not pass")
sim_metrics = {}
for mode in ("MUL", "DIV"):
    match = re.search(rf"SIMDIVE_ORIGINAL_FP32 {mode} MAE=([0-9.]+) "
                      rf"MRED=([0-9.]+) RMSE=([0-9.]+)", accuracy_text)
    if not match:
        raise RuntimeError(f"missing SIMDive {mode} accuracy")
    sim_metrics[mode] = match.groups()
sim_rows = []
for mode in ("MUL", "DIV"):
    mae, mred, rmse = sim_metrics[mode]
    note = ("SIMDive author 32-bit integer core plus local FP32 wrapper; normal "
            "finite inputs only; PPA uses the canonical common flow")
    if mode == "DIV":
        note += "; DIV includes a Q8 quotient adapter and is not native FP32 SIMDive"
    sim_rows.append({
        "design": f"SIMDive-derived integer-core FP32 wrapper ({mode})",
        "implementation": "SIMDive author 32-bit integer RTL plus local FP32 wrapper",
        "scope": "DIV+MUL FP32 wrapper", "accuracy_cases": 10000,
        "mae": mae, "mred": mred, "rmse": rmse,
        "area_um2": fmt(simdive["area"]),
        "dc_delay_ns": fmt(simdive["dc_delay"], 5),
        "pt_delay_ns": fmt(simdive["delay"], 5),
        "pt_power_mw": fmt(simdive["power"], 7),
        "adp_um2_ns": fmt(simdive["adp"]),
        "source": (f"{simdive['dc']}; {simdive['pt']}; "
                   "qsim_rtl/simdive_original/verilator_canonical.log; "
                   "qsim_rtl/simdive_original/gate_vector_check.log"),
        "notes": note + "; 20000-vector Verilator-RTL-to-gate vector check passed",
    })
write_csv(PPA / "simdive_original_fp32.csv", list(sim_rows[0]), sim_rows)

sharing_rows = []
for level in range(4):
    full, div, mul = (sharing[level][key] for key in ("full", "div", "mul"))
    separate = div["area"] + mul["area"]
    saved = separate - full["area"]
    sharing_rows.append({
        "scope": "DIV+MUL sharing", "level": f"L{level}",
        "rtl_variant": "centered_residual",
        "div_only_area_um2": fmt(div["area"]),
        "div_only_delay_ns": fmt(div["delay"], 5),
        "div_only_power_mw": fmt(div["power"], 7),
        "mul_only_area_um2": fmt(mul["area"]),
        "mul_only_delay_ns": fmt(mul["delay"], 5),
        "mul_only_power_mw": fmt(mul["power"], 7),
        "separate_sum_area_um2": fmt(separate),
        "shared_divmul_area_um2": fmt(full["area"]),
        "shared_divmul_delay_ns": fmt(full["delay"], 5),
        "shared_divmul_power_mw": fmt(full["power"], 7),
        "area_saved_um2": fmt(saved),
        "area_saved_pct": fmt(100.0 * saved / separate, 2),
        "source": (f"{full['dc']}; {div['dc']}; {mul['dc']}; "
                   f"{(PT / full['tag']).relative_to(ROOT).as_posix()}"),
        "measurement_note": ("Full, DIV-only, and MUL-only use the same "
                             "centered-residual RTL snapshot and canonical flow"),
    })
write_csv(PPA / "divmul_sharing_ablation_10ns.csv", list(sharing_rows[0]), sharing_rows)

metric_re = re.compile(
    r"METRICS level=(\d+) vectors=(\d+) mismatches=(\d+) max_bit_delta=(\d+) "
    r"amlib_mae=([0-9.eE+-]+) oadm_mae=([0-9.eE+-]+) "
    r"amlib_rmse=([0-9.eE+-]+) oadm_rmse=([0-9.eE+-]+) "
    r"amlib_mre=([0-9.eE+-]+) oadm_mre=([0-9.eE+-]+) "
    r"amlib_max_abs=([0-9.eE+-]+) oadm_max_abs=([0-9.eE+-]+)")
oam_rows = []
for level in range(4):
    log = ROOT / f"qsim_rtl/amlib_oam_compare/logs_canonical/l{level}.log"
    match = metric_re.search(log.read_text())
    if not match:
        raise RuntimeError(f"missing OAM/OADM metrics in {log}")
    (_, vectors, mismatches, max_delta, am_mae, od_mae, am_rmse, od_rmse,
     am_mre, od_mre, am_max, od_max) = match.groups()
    for design, p, mae, rmse, mre, max_abs, variant in (
        ("AM-Lib OAM", amlib[level], am_mae, am_rmse, am_mre, am_max,
         "unmodified upstream OAM partial-product RTL"),
        ("OADM MUL-only", sharing[level]["mul"], od_mae, od_rmse, od_mre,
         od_max, "centered-residual selected-level plane"),
    ):
        oam_rows.append({
            "comparison_scope": "AM-Lib OAM vs OADM MUL-only",
            "level": f"L{level}", "design": design,
            "implementation_variant": variant,
            "area_um2": fmt(p["area"]), "delay_ns": fmt(p["delay"], 5),
            "power_mw": fmt(p["power"], 7),
            "ppa_source": f"{p['dc']}; {p['pt']}",
            "accuracy_source": log.relative_to(ROOT).as_posix(),
            "accuracy_vectors": vectors, "pair_mismatch_count": mismatches,
            "pair_max_bit_delta": max_delta, "mae": mae, "rmse": rmse,
            "mre": mre, "max_abs_error": max_abs,
            "comparison_note": ("Same-vector normalized finite MUL accuracy; "
                                "same canonical PPA flow; near-identical error "
                                "statistics but not bit-exact"),
        })
write_csv(PPA / "amlib_oam_vs_oadm_mul_10ns.csv", list(oam_rows[0]), oam_rows)

print(f"Updated canonical CSVs from {len(points)} validated PPA points.")
