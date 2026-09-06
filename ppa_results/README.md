# OADM PPA Result Index

This directory contains current results and historical experiment records.
Use `csv_usage_index.csv` as the explicit allowlist: only `usage=current` rows
are current result tables. Historical CSVs are not current PPA sources even
where their old prose says "canonical" or "best". Their hashes are recorded
so changes after the refresh are detectable.

## September 5 Current-Data Audit

`scripts/refresh_current_oadm_tables.py` regenerates the selected tables from
the existing DC/PT reports and checks fixed DIV, MUL, and integrated gate logs.
The arithmetic-sharing source/report hashes and RTL/model/gate evidence were
also rechecked. This is a result refresh, not a new synthesis or simulation run.

- Fixed standalone DIV: elaboration-time LEVEL, residual/w_n drops 18/18 at
  L0 and 16/16 at L1-L3. Areas: 516.96/1130.40/1484.64/1865.52 um2.
- Selected standalone MUL: balanced residual drops 16/14/12/10, analytic
  compensation retained. Areas: 516.60/948.60/1317.60/1645.92 um2.
- Fixed integrated DIV+MUL: areas 957.96/1696.68/2106.72/2663.64 um2.
- Runtime selection remains the existing 10/14 control (3174.12 um2).
  Isolated runtime alternatives have not silently replaced it.
- Today's input masking and explicitly narrowed datapath experiment is not
  promoted. Existing internal residual/w_n truncation remains part of OADM.

`div_only_vs_pace_hier_compile_10ns.csv` now includes the existing common
10,000-vector accuracy results alongside current PPA and ADP. The specialized
DIV output equivalence permits retaining this dataset; no error values are
borrowed from a different sampling population.

`oadm_fixed_current_ppa_accuracy_10ns.csv` joins current standalone and shared
PPA with the arithmetic-sharing 100,000-pair uniform dataset. Shared and
standalone outputs matched bitwise in that experiment. Integrated area/power
is repeated by mode for convenience, not summed or split between modes.
Sampled maximum errors are not formal worst-case bounds. This dataset must
not be mixed with the PACE, PLSAD, or SIMDive populations for accuracy claims.

`divmul_arithmetic_sharing_hier_compile_10ns.csv` is the measured one-wrapper
B/C comparison; `divmul_arithmetic_sharing_hierarchy_10ns.csv` gives inclusive
hierarchical areas. B-to-C area savings are 5.94/19.64/23.44/22.89%.
The older A-sum-to-C table remains a separate area-sum reference, not a
matched-throughput baseline or a measurement of arithmetic sharing alone.

The local manuscript still hard-codes older standalone DIV and sharing
numbers (for example 764.28 um2 at DIV L0); it does not import these CSVs.
Refreshing CSVs does not update those LaTeX tables or existing figure binaries.
The manuscript was not edited by this data-only audit.

## Common PPA Boundary

Unless a row explicitly says that it is a sensitivity or historical point,
the local comparison boundary is:

- TSMC65 typical CCS standard-cell library.
- 10 ns virtual clock and no pipeline registers.
- Zero clock uncertainty and 20 ps input/output delay.
- `INVD0` input driver and 0.004 output load.
- Input-only maximum capacitance and fanout constraints.
- Hierarchy-preserving ordinary `compile`, followed by `set_max_area 0` and
  `optimize_netlist -area`. No `ungroup`, explicit flattening, or
  `compile_ultra` is allowed.
- PrimeTime vectorless probability 0.5 and 0.1 input toggles per 10 ns.

Approximate FP32 DIV and MUL rows use the shared
`PACE/common/FP_DIV_WRAPPER_32.v:fp32_normal_finite_wrapper`: identical sign,
exponent, mantissa extraction, normalization packing, and 32-bit I/O, with
only normalized finite operands in scope. `FP_DIV_WRAPPER_32` is retained as a
PACE-compatible DIV adapter around that implementation. OADM root-opt DIV,
PACE, QIAD, FaNZeD, TruncApp, LEAD, and root-opt MUL were all freshly
synthesized after this unification. The exact DesignWare and selectable full
OADM rows remain separate architectural baselines and are labeled as such.

PPA can be compared structurally only when rows use this common boundary.
Accuracy values require an additional same-vector and same-interface check.

## Current Hierarchy-Preserving CSVs

September 4 fixed-DIV refresh: L0-L3 now point to
`experiments/fixed_div_level_specialization` (elaboration-time `LEVEL`), with
areas 516.96/1130.40/1484.64/1865.52 um2. The master/root tables contain the
actual specialized top names and raw report paths. PACE/PLSAD comparison PPA
and sharing ratios use these replacements; their original accuracy datasets
are unchanged. `scripts/collect_hier_compile_results.py` reproduces this selection.
Runtime and integrated DIV+MUL measurements are unchanged.

Sharing area savings are now 7.31/18.39/24.82/24.14% for L0-L3. The denominator
is the sum of two standalone units including their FP32 wrappers, not a
measured unshared one-wrapper selectable top. Vectorless power sums are not
matched-workload energy measurements; the shared unit performs one operation
at a time. The separate PACE difference-truncation and plain-MUL/OAM ablations
remain in their isolated experiment directories, not substituted for these rows.

The September 3 rerun replaces the explicit-flatten/`compile_ultra` PPA
numbers as the current comparison boundary. The authoritative tables are:

- `hier_compile_master_10ns.csv`: all 42 retained points, report paths,
  hierarchy/cell counts, and machine-checkable pass status.
- `exact_baselines_hier_compile_10ns.csv`: exact MUL, DIV, and selectable
  DIV+MUL.
- `root_opt_hier_compile_10ns.csv`: root-opt DIV L0-L3, runtime DIV+MUL, and
  fixed-level integrated DIV+MUL L0-L3.
- `mul_root_opt_hier_compile_10ns.csv`: all 12 MUL root-opt variants.
- `div_only_vs_pace_hier_compile_10ns.csv`: root-opt OADM DIV L0-L3 against
  PACE L1-L4 under one wrapper and mapping boundary.
- `priorwork_hier_compile_10ns.csv`: QIAD, FaNZeD, TruncApp, LEAD, and the
  PLSAD-derived m=4/6/8 reconstructions.
- `plsad_vs_oadm_hier_compile_10ns.csv`: PLSAD-derived m=4/6/8 and OADM
  fixed DIV L0-L3 with accuracy recomputed on the same 10,000 operand pairs.
- `divmul_sharing_ablation_hier_compile_10ns.csv`: current root-opt DIV-only
  plus balanced MUL-only versus the fixed-level integrated OADM hardware.
- `amlib_oam_vs_oadm_mul_hier_compile_10ns.csv`: unmodified AM-Lib OAM
  mantissa cores against the current balanced OADM MUL-only view, all using
  the shared normal-finite FP32 wrapper.

Of the 42 retained points, 41 are valid combinational DC/PT results. The
SIMDive-derived wrapper is retained in the master audit with status
`check_timing_failed;sequential_present`: ordinary `compile` preserves 23
RTL-inferred latches, so it is excluded from strict combinational comparison.
Changing its RTL to remove those latches would violate the rule that only the
mapping policy changes in this rerun.

The unsuffixed CSVs described below are the previous explicit-flatten campaign.
They remain provenance and accuracy-selection records, but their PPA columns
must not be mixed with the current hierarchy-preserving tables.

## Previous Explicit-Flatten CSVs

### `exact_baselines_10ns_nopipe.csv`

The three DesignWare exact references: standalone FP32 MUL, standalone FP32
DIV, and the unshared selectable FP32 DIV+MUL block. It records latency,
throughput implied by the 10 ns boundary, area, power, and energy per operation.
The selectable row is the valid exact baseline for full OADM DIV+MUL.

### `div_only_vs_pace.csv`

The strict DIV-only OADM/PACE comparison. OADM L0-L3 use the selected root-opt
centered-residual normal-finite FP32 wrappers and are paired with PACE L1-L4.
The file contains same-vector error metrics, canonical PPA, percentage
differences, and gate-regression notes. These root-opt points apply LSB
truncation to internal
precision and calibrate the quantized reciprocal coefficients, so they are not
bit-exact to the pre-root-opt OADM baselines. PACE is DIV-only and must not be
compared directly with the area of a full selectable OADM DIV+MUL unit.

### `priorwork_comparison_10ns.csv`

Local DIV-only context for PACE, QIAD, FaNZeD, TruncApp, and the combinational
LEAD unroll. It contains accuracy, PPA, ADP, source identity, and wrapper/gate
validation notes. These are local reproductions under the common mapping
boundary, not transplanted PPA numbers from the original papers. Every row now
uses the shared `fp32_normal_finite_wrapper`; QIAD's earlier full-special-case
result was superseded by its normal-finite rerun. QIAD remains
in this CSV even though it is omitted from the ADP plot to preserve plot scale.

### `simdive_original_fp32.csv`

Results for the **SIMDive-derived SISD32 FP32 wrapper** in MUL and DIV modes.
Both rows describe the same selectable synthesized unit. The valid current PPA
uses the author mode=01 data path source specialization under hierarchy-
preserving ordinary `compile`; the as-received all-mode RTL remains a negative
audit row in `hier_compile_master_10ns.csv`. OADM and SIMDive accuracy now use
the same 10,000 input pairs. DIV still includes a Q8 quotient adapter, so this
is not a native FP32 SIMDive implementation.

## Selection and Audit CSVs

### `divmul_best_by_level.csv`

Current selected fixed OADM L0-L3 and runtime L0-L3 full units, with actual
top names, report paths, configuration, PPA and ADP. Superseded pre-root-opt
centered-index/residual selections were replaced during the September 5 audit.
PACE is not included because it is not a selectable DIV+MUL competitor.

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

### `pace_flatten_sensitivity_10ns.csv`

Methodology audit comparing the older hierarchy-preserving, flatten-only, and
flatten-plus-area-optimization PACE mappings at L1-L4. It documents why
mapping policy materially changes PPA. Its explicit-flatten recommendation was
superseded by the September 3 hierarchy-preserving ordinary-`compile` rerun.

## Previous Flow Reproduction

The following commands reproduce the previous explicit-flatten campaign and
its accuracy studies; they are retained for provenance:

```text
qsim_rtl/simdive_original/run_accuracy.sh
qsim_rtl/simdive_original/run_canonical_gate_miter.sh
qsim_rtl/amlib_oam_compare/run_accuracy.sh
qsim_rtl/l2_divopt/run_equiv.sh
dc/l2_divopt/run_all.sh
qsim_rtl/l2_divopt/run_gate_miters.sh
scripts/update_l2_divopt_results.py
make -C qsim_rtl/root_opt run
make -C qsim_rtl/root_opt crosscheck
bash qsim_rtl/root_opt/run_gate_miter.sh
python3 scripts/validate_fixed_level_root_results.py
.venv/bin/python python/mul_root_opt_search.py --points 500
bash qsim_rtl/mul_root_opt/run_accuracy.sh
bash dc/mul_root_opt/run_all.sh
bash qsim_rtl/mul_root_opt/run_gate_miter.sh
.venv/bin/python scripts/collect_mul_root_opt_results.py
.venv/bin/python scripts/update_unified_wrapper_results.py
```

Reproduce the current mapping campaign with:

```text
bash dc/hier_compile_10ns/run_all.sh
.venv/bin/python scripts/collect_hier_compile_results.py
bash qsim_rtl/root_opt/run_fixed_divmul_equiv.sh
GATE_DC_ROOT="$PWD/dc/hier_compile_10ns/outputs/root_div" \
  GATE_LOG="$PWD/qsim_rtl/root_opt/hier_compile_gate_miter.log" \
  bash qsim_rtl/root_opt/run_gate_miter.sh
GATE_DC_ROOT="$PWD/dc/hier_compile_10ns/outputs/mul_root" \
  GATE_LOG="$PWD/qsim_rtl/mul_root_opt/hier_compile_gate_miter.log" \
  bash qsim_rtl/mul_root_opt/run_gate_miter.sh
bash qsim_rtl/root_opt/run_fixed_divmul_gate_miter.sh
bash qsim_rtl/hier_compile_gate/run_gate_miters.sh
```

Refresh all current OADM selection/comparison exports, including the usage
index, without rerunning hardware tools:

```text
.venv/bin/python scripts/refresh_current_oadm_tables.py
```

Raw DC and PT evidence is under `dc/hier_compile_10ns/outputs/` and
`pt_dc/hier_compile_10ns/reports/`. The collector requires every report and
netlist, checks for black boxes and sequential cells, verifies hierarchy is
retained, and records setup/check-timing status instead of silently dropping
invalid points.

## Removed Obsolete CSVs

- `csd_scale_experiment_10ns.csv`: an August negative experiment superseded by
  the selected residual implementations; its conclusion remains in
  `agent.md` and the final-opt optimization records.
- `div_only_vs_pace_flattened_exploratory.csv`: temporary duplicate removed
  when the common explicit-flatten policy became canonical.
- `pt_dc/pace_oadm_compare/comparison.csv`: stale hierarchy-mismatched summary.
- `root_opt_results_10ns.csv`, `fixed_level_root_opt_10ns.csv`, and
  `mul_root_opt_results_10ns.csv`: old mapping-policy summaries superseded by
  the hierarchy-preserving root-opt tables.
- `canonical_refresh_10ns.csv`, `divmul_sharing_ablation_10ns.csv`, and
  `amlib_oam_vs_oadm_mul_10ns.csv`: pre-truncation tables whose sharing evidence
  was removed after the current integrated root-opt rerun.
- `div_only_explicit_flatten_10ns.csv`: duplicate detailed table containing
  stale pre-unification PPA; current report paths and validation are carried by
  `div_only_vs_pace.csv` and `priorwork_comparison_10ns.csv`.

Most historical raw reports remain timeline evidence. The obsolete
pre-truncation sharing reports were explicitly deleted so they cannot be mistaken
for current integrated OADM results.
