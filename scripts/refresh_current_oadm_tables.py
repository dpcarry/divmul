#!/usr/bin/env python3
"""Refresh selected OADM tables without promoting input-truncation experiments."""
import hashlib
import json
from pathlib import Path

import collect_hier_compile_results as collector

ROOT = collector.ROOT
PPA = collector.PPA
SHARING = ROOT / "experiments/arithmetic_sharing"


def rows(path):
    return collector.load(path)[1]


def write(name, data):
    collector.write(PPA / name, list(data[0]), data)


def main():
    for name in ("source_sha256.json", "sha256.json"):
        for path, expected in json.loads((SHARING / name).read_text()).items():
            assert hashlib.sha256((ROOT / path).read_bytes()).hexdigest() == expected, path
    for path, marker in (
        ("qsim_rtl/root_opt/hier_compile_gate_miter.log", "ROOT_OPT_GATE_MITER PASS"),
        ("qsim_rtl/mul_root_opt/hier_compile_gate_miter.log", "MUL_ROOT_OPT_GATE_MITER PASS"),
        ("qsim_rtl/root_opt/fixed_divmul_hier_gate_miter.log", "FIXED_DIVMUL_ROOT_OPT_GATE PASS"),
    ):
        log = (ROOT / path).read_text()
        assert marker in log and "Errors: 0" in log and "MISMATCH" not in log, path
    collector.main()
    master_rows = rows(PPA / "hier_compile_master_10ns.csv")
    master = {r["top"]: r for r in master_rows}
    for p in master_rows:
        dc_dir = (ROOT / p["dc_report"]).parent
        for suffix in (".nl.v", ".syn.sdc"):
            assert (dc_dir / (p["top"] + suffix)).is_file(), p["top"]
    # The as-received and source-specialized runs share a top name.
    simdive = next(p for p in master_rows
                   if p["tag"] == "simdive/sisd32_specialized")
    for r in rows(PPA / "simdive_original_fp32.csv"):
        for target, source in (("area_um2", "area_um2"), ("pt_delay_ns", "delay_ns"),
                               ("pt_power_mw", "power_mw")):
            assert abs(float(r[target]) - float(simdive[source])) < 1e-6
    selected = []
    for level in [0, 1, 2, 3, None]:
        top = (f"oadm_fixed_l{level}_divmul_root_opt" if level is not None
               else "oadm_runtime_root_opt")
        p = master[top]
        assert p["status"] == "pass"
        selected.append(dict(
            scope="DIV+MUL", oadm_level=f"L{level}" if level is not None else "runtime_L0_L3",
            top=top, area_um2=p["area_um2"], critical_delay_ns=p["delay_ns"],
            power_mw=p["power_mw"],
            adp_um2_ns=f'{float(p["area_um2"])*float(p["delay_ns"]):.6f}',
            status=p["status"], dc_report=p["dc_report"], pt_report_dir=p["pt_report_dir"],
            mapping=p["mapping"],
            configuration=("fixed DIV residual/w_n 18/18 at L0; 16/16 at L1-L3; "
                           "balanced MUL residual 16/14/12/10; calibrated DIV; MUL bias"
                           if level is not None else
                           "runtime residual/w_n 10/14; original Q0.7 table; no MUL bias")))
    write("divmul_best_by_level.csv", selected)

    for source, target in (
        ("comparison.csv", "divmul_arithmetic_sharing_hier_compile_10ns.csv"),
        ("hierarchy.csv", "divmul_arithmetic_sharing_hierarchy_10ns.csv"),
    ):
        data = rows(SHARING / source)
        for r in data:
            r["source_csv"] = f"experiments/arithmetic_sharing/{source}"
            r["ppa_source"] = "experiments/arithmetic_sharing/ppa.csv"
        write(target, data)

    combined = []
    for a in rows(SHARING / "accuracy.csv"):
        if a["dataset"] != "uniform_100k":
            continue
        level = int(a["level"])
        for view, top in (
            ("standalone", f"oadm_fixed_l{level}_div_specialized" if a["mode"] == "DIV"
             else f"oadm_fixed_l{level}_mul_root_opt"),
            ("integrated", f"oadm_fixed_l{level}_divmul_root_opt"),
        ):
            p = master[top]
            combined.append(dict(view=view, top=top, level=a["level"], mode=a["mode"],
                dataset="arithmetic_sharing/uniform_100k", cases=a["cases"],
                mred=a["mred"], rmse=a["rmse"], sampled_max_relative=a["max_relative"],
                area_um2=p["area_um2"], delay_ns=p["delay_ns"], power_mw=p["power_mw"],
                adp_um2_ns=f'{float(p["area_um2"])*float(p["delay_ns"]):.6f}',
                accuracy_source="experiments/arithmetic_sharing/accuracy.csv",
                dc_report=p["dc_report"], pt_report_dir=p["pt_report_dir"], status=p["status"]))
    write("oadm_fixed_current_ppa_accuracy_10ns.csv", combined)

    current = {
        "hier_compile_master_10ns.csv", "exact_baselines_hier_compile_10ns.csv",
        "root_opt_hier_compile_10ns.csv", "mul_root_opt_hier_compile_10ns.csv",
        "div_only_vs_pace_hier_compile_10ns.csv", "priorwork_hier_compile_10ns.csv",
        "plsad_vs_oadm_hier_compile_10ns.csv", "divmul_sharing_ablation_hier_compile_10ns.csv",
        "amlib_oam_vs_oadm_mul_hier_compile_10ns.csv", "simdive_original_fp32.csv",
        "divmul_best_by_level.csv", "divmul_arithmetic_sharing_hier_compile_10ns.csv",
        "divmul_arithmetic_sharing_hierarchy_10ns.csv", "oadm_fixed_current_ppa_accuracy_10ns.csv",
    }
    index = []
    for path in sorted(PPA.glob("*.csv")):
        if path.name == "csv_usage_index.csv":
            continue
        usage = ("current" if path.name in current else "supporting_sweep_not_selected"
                 if path.name == "runtime_drop_sweep_10ns.csv" else "historical_not_for_current_ppa")
        index.append(dict(csv=path.name, usage=usage,
                          sha256=hashlib.sha256(path.read_bytes()).hexdigest()))
    write("csv_usage_index.csv", index)
    assert len(current) == sum(r["usage"] == "current" for r in index)
    print(f"Verified {len(current)} current CSVs; {len(combined)} fixed accuracy/PPA rows; "
          "input truncation/width experiments excluded; runtime control unchanged.")


if __name__ == "__main__":
    main()
