# RTL Status and Source of Truth

This file records which RTL is current on the `root_opt` branch. Do not infer
status from file timestamps: several older implementations are intentionally
retained for reproduction and ablation studies.

## Current OADM RTL

| Purpose | Current RTL | Tops in active results | Status |
|---|---|---|---|
| Precision-pruned DIV-only L0-L3 | `root_opt/oadm_root_opt.v` | `oadm_fixed_l0_div_root_opt` through `oadm_fixed_l3_div_root_opt` | Latest fixed-level DIV implementation and source of `ppa_results/root_opt_hier_compile_10ns.csv` |
| Precision-pruned runtime DIV+MUL | `root_opt/oadm_root_opt.v` | `oadm_runtime_root_opt` | Latest runtime root-pruning experiment; not interchangeable with fixed-level PPA |
| Precision-pruned fixed DIV+MUL L0-L3 | `root_opt/oadm_fixed_divmul_root_opt.v` | `oadm_fixed_l*_divmul_root_opt` | Current integrated OADM hardware; shares the plane multipliers and matches the selected DIV and balanced MUL views bit for bit |
| Precision-pruned MUL-only L0-L3 | `mul_root_opt/oadm_mul_root_opt.v` | `oadm_fixed_l*_mul_root_opt_accuracy`, `oadm_fixed_l*_mul_root_opt`, `oadm_fixed_l*_mul_root_opt_aggressive` | Latest fixed-level MUL experiment and source of `ppa_results/mul_root_opt_hier_compile_10ns.csv` |
| Normal-finite FP32 shell | `../PACE/common/FP_DIV_WRAPPER_32.v` | `fp32_normal_finite_wrapper` | Shared wrapper used by current OADM DIV, OADM MUL, PACE, and normalized prior-work comparisons |

The fixed DIV root-opt settings currently used in the CSV are:

| Level | Residual drop | Scale drop | Coefficient format |
|---|---:|---:|---|
| L0 | 18 | 18 | Q0.7 `{59}` |
| L1 | 16 | 16 | Q0.7 `{83,42}` |
| L2 | 16 | 16 | Q0.8 `{203,136,97,73}` |
| L3 | 16 | 16 | Q0.8 `{227,182,149,124,105,90,78,68}` |

For MUL root-opt, the suffix identifies the retained design point:

| Top suffix | L0-L3 residual drops | Intended use |
|---|---|---|
| `_accuracy` | `12,10,8,6` | Accuracy-preserving comparison |
| no suffix | `16,14,12,10` | Balanced root-pruning point |
| `_aggressive` | `18,16,14,12` | Area-oriented point |

## Historical Baseline Dependencies

The superseded pre-pruning DIV/MUL baseline is not a single standalone file.
Its historical source list is defined by `dc/canonical_refresh/run_all.sh` and
uses:

```text
rtl/csa3.v
rtl/pipeline_sweep/oadm_pipe_cut.v
rtl/pipeline_sweep/oadm_dm_pipe.v
rtl/nopipe/oadm_dm_nopipe.v
rtl/nopipe/oadm_dm_fixed_nopipe.v
rtl/divopt/oadm_multilevel_rounding_lut.v
rtl/divopt/oadm_lowlevel_plane_direct.v
rtl/divopt/oadm_multilevel_plane_direct.v
rtl/divopt/oadm_fixed_plane_centered.v
rtl/divopt/oadm_multilevel_opt.v
rtl/canonical_refresh/oadm_mul_wrappers.v
PACE/common/FP_DIV_WRAPPER_32.v
```

The obsolete pre-pruning sharing reports and CSV were removed. This source
list remains only for non-sharing historical reproduction; it is not a current
paper-facing OADM implementation.

The root-opt campaigns have self-contained source lists:

```text
# DIV and runtime root-opt
PACE/common/FP_DIV_WRAPPER_32.v
rtl/divopt/oadm_experiment_variants.v
rtl/root_opt/oadm_root_opt.v

# MUL-only root-opt
PACE/common/FP_DIV_WRAPPER_32.v
rtl/mul_root_opt/oadm_mul_root_opt.v

# Fixed integrated DIV+MUL root-opt
PACE/common/FP_DIV_WRAPPER_32.v
rtl/root_opt/oadm_fixed_divmul_root_opt.v
```

Their current hierarchy-preserving flow is `dc/hier_compile_10ns/run_all.sh`.
The older dedicated scripts use the previous explicit-flatten policy.

## Current Reference RTL

These files are active reference implementations, not the newest OADM design:

| Directory or file | Use |
|---|---|
| `exact/exact_fp32_nopipe.v` | Current exact FP32 no-pipeline MUL, DIV, and DIV+MUL baseline |
| `pace_original/pace_fp32_l1.v` through `pace_fp32_l4.v` | Local tops around the author-provided PACE mantissa RTL |
| `simdive_original/simdive_original_fp32_wrapper.v` | Current local FP32 wrapper around original SIMDive integer RTL |
| `simdive_original_compat/shifter_out_mul_div_compat.v` | Compatibility module required by the original SIMDive flow |
| `canonical_refresh/oadm_mul_wrappers.v` | Fixed-level MUL-only tops for the pre-pruning OADM baseline |

PACE and SIMDive also depend on author RTL outside this directory. Their full
source lists are recorded in `dc/canonical_refresh/run_all.sh` and the
dedicated comparison flows.

## Historical or Experimental RTL

The following code remains useful for provenance, regression, or negative
results, but it should not be selected as the latest OADM implementation:

| Path | Meaning |
|---|---|
| `oadm_dm.v`, `oadm_core.v`, `recip_lut.v`, `sa_scale.v` | Original runtime pipelined OADM |
| `L0/` through `L4/` and `fixed/` | Original fixed-level seven-cycle OADM variants |
| `nopipe/` | Earlier no-pipeline wrappers; some files remain dependencies of the canonical baseline |
| `pipeline_sweep/` | Pipeline-boundary experiments; helper modules are still reused by the canonical source list |
| `divopt/oadm_fixed_l2_div_opt.v`, `oadm_fixed_l3_div_opt.v`, `oadm_l3_plane_direct.v`, `oadm_l3_plane_factored.v`, and `oadm_rounding_error_lut.v` | Superseded DIV optimization candidates |
| `divopt/oadm_experiment_variants.v` | Experiment collection; still a dependency of `root_opt`, but its standalone tops are not the final fixed DIV rows |
| `oadm_levels_opt/` | Eq. 10/11 sharing experiment; bit-exact but worse PPA, retained as a negative result |
| `oadm_sharing_ablation/` | Dedicated sharing-ablation wrappers |
| `paper_repro/` | Paper-reproduction wrappers, not the latest root-opt RTL |
| `exact/exact_fp32_7stage.v` | Legacy pipelined exact baseline; do not mix with the 10 ns no-pipeline tables |
| `simdive/` | Reconstructed SIMDive experiment; the current original-source comparison uses `simdive_original/` instead |

## Result-to-RTL Rule

Before changing or reporting a PPA row, trace it in this order:

```text
CSV row -> top module -> flow source list -> DC netlist/report -> PT report
```

The current hierarchy-preserving 10 ns result indexes are:

```text
ppa_results/hier_compile_master_10ns.csv
ppa_results/root_opt_hier_compile_10ns.csv
ppa_results/mul_root_opt_hier_compile_10ns.csv
ppa_results/div_only_vs_pace_hier_compile_10ns.csv
ppa_results/priorwork_hier_compile_10ns.csv
ppa_results/divmul_sharing_ablation_hier_compile_10ns.csv
ppa_results/exact_baselines_hier_compile_10ns.csv
```

Do not combine them with legacy 1.5 ns pipelined results or replace a top with
a similarly named implementation without rerunning RTL regression, DC, and PT.
