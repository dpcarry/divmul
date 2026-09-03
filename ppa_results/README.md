# OADM PPA Result Index

This directory contains the current paper-facing results, supporting selection
tables, and mapping-policy audits. Every retained CSV has a defined purpose;
files that were superseded or only duplicated newer data have been removed.

## Common PPA Boundary

Unless a row explicitly says that it is a sensitivity or historical point,
the local comparison boundary is:

- TSMC65 typical CCS standard-cell library.
- 10 ns virtual clock and no pipeline registers.
- Zero clock uncertainty and 20 ps input/output delay.
- `INVD0` input driver and 0.004 output load.
- Input-only maximum capacitance and fanout constraints.
- Explicit `ungroup -all -flatten`, `set_max_area 0`, and effective
  `optimize_netlist -area` mapping.
- PrimeTime vectorless probability 0.5 and 0.1 input toggles per 10 ns.

PPA can be compared structurally only when rows use this common boundary.
Accuracy values require an additional same-vector and same-interface check.

## Current Paper-Facing CSVs

### `canonical_refresh_10ns.csv`

Master audit table for the 21 freshly synthesized canonical points. It contains
exact MUL/DIV/DIV+MUL, the SIMDive-derived wrapper, centered-residual OADM
full/DIV-only/MUL-only L0-L3 views, the full-unit L0 centered-index audit, and
AM-Lib OAM L0-L3. Each row records area, PT delay, PT power, ADP, and the DC/PT
evidence paths. Use this file to verify that a value came from the canonical
flow; use the narrower tables below when writing a specific comparison.
The strict DIV-only L2 row was subsequently superseded by the validated
fixed-L2 optimization in `div_only_l2_optimization_10ns.csv`; the original
21-point master row remains an audit record of the pre-optimization snapshot.

### `exact_baselines_10ns_nopipe.csv`

The three DesignWare exact references: standalone FP32 MUL, standalone FP32
DIV, and the unshared selectable FP32 DIV+MUL block. It records latency,
throughput implied by the 10 ns boundary, area, power, and energy per operation.
The selectable row is the valid exact baseline for full OADM DIV+MUL.

### `divmul_sharing_ablation_10ns.csv`

The structural sharing experiment for L0-L3. Every row uses centered-residual
RTL and compares a separately synthesized DIV-only plus MUL-only area sum with
one selectable DIV+MUL implementation. Delay and power for each tied view are
also included. Do not substitute the L0 centered-index or L3
subtractor-free-residual Pareto points into this table.

### `div_only_vs_pace.csv`

The strict DIV-only OADM/PACE comparison. OADM L0-L3 use centered-residual
normal-finite FP32 wrappers and are paired with PACE L1-L4; L2 uses the
bit-exact fixed-level and reduced-scale specialization documented below. The file contains
same-vector error metrics, canonical PPA, percentage differences, and gate
regression notes. PACE is DIV-only and must not be compared directly with the
area of a full selectable OADM DIV+MUL unit.

### `priorwork_comparison_10ns.csv`

Local DIV-only context for PACE, QIAD, FaNZeD, TruncApp, and the combinational
LEAD unroll. It contains accuracy, PPA, ADP, source identity, and wrapper/gate
validation notes. These are local reproductions under the common mapping
boundary, not transplanted PPA numbers from the original papers. QIAD remains
in this CSV even though it is omitted from the ADP plot to preserve plot scale.

### `simdive_original_fp32.csv`

Results for the **SIMDive-derived integer-core FP32 wrapper** in MUL and DIV
modes. Both rows describe the same selectable synthesized unit; mode-specific
accuracy is listed separately. Its local PPA is structurally comparable with
OADM under the canonical flow. Error is qualitative context only because the
current OADM and SIMDive runs use different vector sequences, and DIV includes
a Q8 quotient adapter. This is not a native FP32 SIMDive implementation.

### `amlib_oam_vs_oadm_mul_10ns.csv`

L0-L3 comparison between the unmodified AM-Lib OAM source snapshot at commit
`cc3864baead2584a94f0e7111e8d73d923fa3b35` and the centered-residual OADM
MUL-only views used in the sharing table. PPA uses the same canonical flow and
accuracy uses 200,006 common vectors. The error statistics are nearly
identical, but outputs are not bit-exact; mismatch count and maximum bit delta
are therefore retained explicitly.

## Selection and Audit CSVs

### `root_opt_results_10ns.csv`

Experimental results from the `root_opt` branch. It records a precision-pruned
runtime DIV+MUL candidate against the current runtime centered-residual point,
and a tuned fixed-L2 DIV-only candidate against both the current fixed L2 and
PACE L4. Runtime and strict DIV-only scopes are deliberately separate. The
supporting accuracy CSV, independent model cross-check, final-netlist gate
miter, formulas, and raw DC/PT paths are documented in
`rtl/root_opt/README.md`. These rows are not paper-facing selections yet.

### `divmul_best_by_level.csv`

Compact paper-facing selection index for full OADM L0-L3 and the runtime
L0-L3 unit. It preserves the distinction between the full-unit L0
centered-index area/delay point and the centered-residual L0 used by the
sharing table. It also keeps centered-residual L3 as the area/power point.
PACE columns are structural DIV-only references, not full-unit competitors.

### `divmul_pareto_candidates.csv`

Full DIV+MUL Pareto candidates that remain useful under different objectives.
It records both L0 centered-index and centered-residual, the L2
factored-midpoint alternative, and the two distinct L3 points:
centered-residual for area/power and subtractor-free residual for delay. This
file is a design-selection record, not a table in which every row shares one
RTL family or one generation date.

### `div_only_l3_pareto.csv`

DIV-only L3 optimization history containing original, factored-midpoint,
centered-residual, and centered-index implementations. It is retained because
it identifies the current centered-residual area/power winner and remains
useful for the next DIV optimization phase. It must not be mixed with the full
DIV+MUL L3 points, which use a different top-level scope.

### `div_only_l2_optimization_10ns.csv`

Fresh fixed-L2 DIV-only optimization campaign. It compares the former generic
centered-residual implementation with fixed-level midpoint algebra, a
range-specialized normalizer, unsigned and reduced-width reciprocal scaling,
manual shift-add forms, and post-scale correction. The ordinary specialized
multiply is the selected delay-balanced point; the signed reduced-width scale
is retained as the area/power point; the reciprocal shift-add form is retained only as the
fastest, higher-cost delay point. All variants are bit-exact to the previous
L2 output over 500,064 RTL vectors, and both selected Pareto points pass
20,003-vector gate miters. The unsigned reduced-width alternative maps to the
same area and delay with marginally higher vectorless power.

### `oadm_l0_variant_explicit_flatten_10ns.csv`

Focused DIV-only L0 comparison between centered residual and centered index
under explicit flattening. Centered residual wins area, delay, and power in
this DIV-only scope. This does not contradict the full DIV+MUL L0 result, where
centered index has slightly lower area and delay but slightly higher power.

### `div_only_explicit_flatten_10ns.csv`

Detailed source table behind `div_only_vs_pace.csv`. It includes all OADM and
PACE level rows, the non-selected L0 centered-index candidate, full report
paths, accuracy metrics, and gate-check status. Keep it for audit and
reproduction; use `div_only_vs_pace.csv` for the concise paper comparison.

### `pace_flatten_sensitivity_10ns.csv`

Methodology audit comparing legacy hierarchy-preserving, flatten-only, and
flatten-plus-area-optimization PACE mappings at L1-L4. It documents why
mapping policy materially changes PPA and why the final cross-design tables use
the aligned explicit-flatten policy. Legacy rows are sensitivity evidence and
must not be copied into current paper-facing comparisons.

## Reproduction

Run `dc/canonical_refresh/run_all.sh`, followed by:

```text
qsim_rtl/simdive_original/run_accuracy.sh
qsim_rtl/simdive_original/run_canonical_gate_miter.sh
qsim_rtl/amlib_oam_compare/run_accuracy.sh
scripts/update_canonical_results.py
qsim_rtl/l2_divopt/run_equiv.sh
dc/l2_divopt/run_all.sh
qsim_rtl/l2_divopt/run_gate_miters.sh
scripts/update_l2_divopt_results.py
```

The CSV generator refuses to update its five generated tables if a required
report is missing, hierarchical, sequential, contains a macro or black box,
fails PrimeTime `check_timing`, or has a maximum-delay violation. Canonical raw
reports are under `dc/canonical_refresh/outputs_10ns/` and
`pt_dc/canonical_refresh/reports_10ns/`.

## Removed Obsolete CSVs

- `csd_scale_experiment_10ns.csv`: an August negative experiment superseded by
  the selected residual implementations; its conclusion remains in
  `agent.md` and the final-opt optimization records.
- `div_only_vs_pace_flattened_exploratory.csv`: temporary duplicate removed
  when the common explicit-flatten policy became canonical.
- `pt_dc/pace_oadm_compare/comparison.csv`: stale hierarchy-mismatched summary.

Historical raw reports are intentionally not deleted. They remain evidence for
the research timeline but are not authoritative paper data.
