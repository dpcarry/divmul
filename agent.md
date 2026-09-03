# OADM Research Handoff

## Project Goal

This project implements and evaluates OADM, a runtime-configurable shared
approximate FP32 divider--multiplier. The central claim is architectural, not
that OADM wins every DIV-only PPA metric: OAD division and OAM multiplication
have related tangent-plane expressions, so one core can share FP unpack/pack,
mantissa partitioning, residual formation, plane evaluation, and level-wise
refinement. The DIV mode adds a reciprocal-square scale.

The target paper is a hardware paper comparing OADM with exact DIV+MUL, PACE,
and selected prior divider work under a common local TSMC65 DC/PT flow.

## Current Paper

- Main source: `paper_hardware/oadm_divmul_10ns.tex`
- Paper figures: `paper_hardware/pictures/`
- Main PPA result directory: `ppa_results/`
- The workspace root is not a Git worktree, so do not assume a branch name or
  run destructive Git cleanup here. Locate the actual worktree before using
  Git commands.

The paper currently contains:

- A concise OAD/OAM derivation and its relation to the shared datapath.
- A contribution list emphasizing runtime DIV/MUL and L0--L3 configuration,
  centered-residual implementation, sharing, and fair comparison boundaries.
- Related work organized by divider family and citing PACE, FaNZeD, LEAD,
  CADE, QIAD, PLSAD, SIMDive, and related sources.
- Circuit implementation figures, full DIV+MUL exact comparison, mode-tied
  sharing ablation, strict DIV-only OADM/PACE comparison, and prior-work
  context.
- A new `SIMDive-Derived Integer-Core FP32-Wrapper Context` subsection and
  table. It deliberately calls the experiment a wrapper-derived context, not
  a native FP32 SIMDive reproduction.

No local `pdflatex` or `chktex` executable was available at the last check.
Compile in Overleaf or a TeX-enabled environment before submission.

## OADM Design and Current Results

### Scope

- OADM is a piecewise tangent-plane/surface-fitting FP32 divider-multiplier.
- It supports operation selection (DIV/MUL) and levels L0--L3 at runtime.
- Fixed-level variants are synthesis characterizations of the same RTL, not
  separate algorithms.
- Current centered-residual implementation uses a quantized reciprocal-square
  coefficient for DIV. Normal finite arithmetic is the principal evaluation
  boundary; subnormals are flushed rather than gradually normalized.

### Full Selectable DIV+MUL PPA

All values below use the local TSMC65 typical CCS flow, no pipeline, 10-ns
virtual clock, explicit flattening, effective `optimize_netlist -area`, and PT
vectorless activity.

| Design | Area (um^2) | PT delay (ns) | PT power (mW) |
| --- | ---: | ---: | ---: |
| OADM L0 | 1929.96 | 4.26 | 0.088917 |
| OADM L1 | 3240.00 | 4.40 | 0.146527 |
| OADM L2 | 3974.40 | 4.83 | 0.186768 |
| OADM L3 centered residual | 4767.48 | 4.98826 | 0.229574 |
| OADM L3 subtractor-free | 4773.24 | 4.82341 | 0.230443 |
| OADM runtime L0--L3 | 5114.88 | 5.28936 | 0.232348 |
| Exact selectable DIV+MUL | 20558.16 | 9.93421 | 1.656330 |

Important identity notes:

- The full-unit L0 point above is the `centered_index` implementation from
  `divmul_best_by_level.csv`: 1929.96 um^2, 4.26 ns, 0.088917 mW.
- The sharing-ablation L0 point below is a different `centered_residual`
  implementation: 1931.76 um^2. Do not collapse these two L0 rows into one
  implementation or mix their labels.
- L3 deliberately keeps two PPA points: `centered_residual` is the area/power
  point (4767.48 um^2, 4.98826 ns, 0.229574 mW), while
  `subtractor_free_residual` is the delay point (4773.24 um^2, 4.82341 ns,
  0.230443 mW). The paper must preserve that distinction.

Sources:

- `ppa_results/divmul_best_by_level.csv`
- `ppa_results/exact_baselines_10ns_nopipe.csv`
- Paper table `tab:full`

### Mode-Tied Sharing Ablation

The selectable core is compared against the sum of separately synthesized
DIV-only and MUL-only views. This is the evidence for structural sharing.

| Level | Separate DIV+MUL (um^2) | Shared selectable (um^2) | Saving |
| --- | ---: | ---: | ---: |
| L0 centered residual | 2485.80 | 1931.76 | 22.29% |
| L1 centered residual | 3962.88 | 3240.00 | 18.24% |
| L2 centered residual | 4877.28 | 3974.40 | 18.51% |
| L3 centered residual | 6137.28 | 4767.48 | 22.32% |

Absolute saved area grows with level (554.04, 722.88, 902.88, 1369.80 um^2).
The percentage is not monotonic because the denominator also includes
operation-specific logic such as DIV scaling.

Source: `ppa_results/divmul_sharing_ablation_10ns.csv` and paper
`tab:sharing`.

### Strict DIV-Only OADM/PACE Comparison

This is the valid direct PACE comparison: PACE has no multiplier mode, so do
not compare PACE area with full OADM DIV+MUL area.

| OADM / PACE | OADM MRED | PACE MRED | OADM RMSE | PACE RMSE |
| --- | ---: | ---: | ---: | ---: |
| L0 / PACE L1 | 0.042928 | 0.026218 | 0.069134 | 0.045861 |
| L1 / PACE L2 | 0.011202 | 0.014993 | 0.019606 | 0.022565 |
| L2 / PACE L3 | 0.008365 | 0.005652 | 0.009490 | 0.009354 |
| L3 / PACE L4 | 0.003205 | 0.003834 | 0.004595 | 0.006066 |

L3 DIV-only: 3373.20 um^2, 4.07998 ns, 0.195428 mW versus PACE L4:
2786.04 um^2, 3.70799 ns, 0.132822 mW. OADM L3 has lower MRED/RMSE, while
PACE remains smaller, faster, and lower power.

Source: `ppa_results/div_only_vs_pace.csv`.

## PACE and Other Prior Work

### Locally Reproduced PACE DIV-Only PPA

| PACE level | Area (um^2) | PT delay (ns) | PT power (mW) | MRED |
| --- | ---: | ---: | ---: | ---: |
| L1 | 668.88 | 2.04272 | 0.0257034 | 0.026218 |
| L2 | 1259.64 | 3.10953 | 0.0539869 | 0.014993 |
| L3 | 1853.28 | 3.42280 | 0.0896898 | 0.005652 |
| L4 | 2786.04 | 3.70799 | 0.1328220 | 0.003834 |

The local PACE RTL is author-provided and is a fair DIV-only FP32 comparator
under the same synthesis/timing boundary. Do not use the PACE paper's UMC40
numbers directly as comparable ASIC data.

### Prior-Work Comparison CSV

- `ppa_results/priorwork_comparison_10ns.csv` contains PACE, QIAD, FaNZeD,
  TruncApp, and LEAD under local wrappers/constraints.
- Read the `notes` column carefully. Each prior work has its own source and
  interface limitations.
- QIAD/FaNZeD/TruncApp/LEAD are DIV-only contexts. They must not be used to
  claim a full DIV+MUL advantage.

## SIMDive: Important Current State

### What SIMDive Is

The paper is `2011.01148v1.pdf`: *SIMDive: Approximate SIMD Soft
Multiplier-Divider for FPGAs with Tunable Accuracy* (GLSVLSI 2020).

- It is an integer Mitchell-based, variable-precision FPGA architecture.
- Its 8/16/32-bit values are integer lane widths, not IEEE-754 FP formats.
- The authors explicitly present FP mantissa multiplication/division as future
  work. It is not an FP32 prior design.
- The author sources are in `LeAp_SIMDive, RAPID/SIMDive Version/`.

### Local SIMDive-Derived FP32 Experiment

Files:

- Wrapper RTL: `rtl/simdive_original/simdive_original_fp32_wrapper.v`
- Original author N=32 core: `LeAp_SIMDive, RAPID/SIMDive Version/SIMD_32_16_8/src/`
- Synthesis compatibility module: `rtl/simdive_original_compat/shifter_out_mul_div_compat.v`
- RTL accuracy testbench: `qsim_rtl/simdive_original/tb_simdive_original_fp32.sv`
- Gate vector testbench: `qsim_rtl/simdive_original/tb_simdive_gate_vectors.sv`
- Deterministic Verilator harness: `qsim_rtl/simdive_original/verilator_main.cpp`
- DC script/results: `dc/canonical_refresh/module.tcl`,
  `dc/canonical_refresh/outputs_10ns/simdive/`
- PT script/results: `pt_dc/canonical_refresh/pt.tcl`,
  `pt_dc/canonical_refresh/reports_10ns/simdive/`
- Results: `ppa_results/simdive_original_fp32.csv` and
  `ppa_results/simdive_original_fp32.md`

The wrapper handles sign/exponent/normalization only for normal finite FP32.
For DIV it shifts the 24-bit mantissa left by eight positions before the
integer core, returning a Q8 quotient before repacking. It flushes zero and
uses a documented non-IEEE fallback for subnormals/non-finite values.

Results, all for one runtime-selectable DIV/MUL wrapper:

| Metric | DIV | MUL |
| --- | ---: | ---: |
| MAE | 0.008370335 | 0.018707268 |
| MRED | 0.007972016 | 0.008792073 |
| RMSE | 0.011515267 | 0.024883815 |

Canonical PPA: 2217.240035 um^2, DC delay 5.11000 ns, PT delay 5.09242 ns,
PT power 0.0683891 mW, ADP 11291.117499 um^2 ns.

Validation completed:

- Original author RTL plus wrapper was simulated with a deterministic
  10,000-vector normal-mantissa harness.
- The TSMC65 gate-level netlist passed a 20,000-vector check against expected
  outputs generated by the two-state Verilator RTL simulation.
- DC and PT completed successfully under the same local 10-ns flow.
- The author source connects a 32-bit expression to a 31-bit `shifter_out`
  port. The compatibility module makes the simulator's effective truncation
  explicit for DC. It was rechecked against the author-source harness and
  produced exactly the same displayed DIV/MUL error statistics.

### SIMDive Comparison Boundary

It is acceptable only as a clearly labeled, supplementary
`SIMDive-derived integer-core FP32 wrapper` context. It must not be called
native FP32 SIMDive or used as a direct published-FP32 comparison.

PPA is structurally comparable to full OADM DIV+MUL because it uses the same
local TSMC65 DC/PT flow. Error is only qualitative until OADM is rerun on the
identical deterministic SIMDive vector sequence: both tests use positive
normal mantissas in `[1,2)`, but the current sequences differ and the wrapper
has Q8 DIV quantization.

Do not directly reuse `qsim_rtl/simdive_original/verilator_main.cpp` as an
OADM harness: its DUT header/top are SIMDive-specific. For same-vector error,
reuse its LCG vector-generation rule to emit a common vector file, or write a
parameterized/common harness that drives OADM L0--L3 and the SIMDive-derived
wrapper separately.

Useful high-level comparison:

- SIMDive-derived wrapper area is 2217.24 um^2 under the canonical flat flow.
- Its PT delay is 5.09242 ns and vectorless power is 0.0683891 mW.
- Its DIV MRED is around the OADM L2 range; its MUL MRED is around the OADM L1
  range, with the test-sequence/Q8 caveat above.

The obsolete, hand-written pre-source approximation had a 992.52-um^2 result.
It is not author RTL and must not be used; its mixed-boundary aggregate was
deleted during the canonical refresh.

## Research Timeline and Evidence Map

This timeline records the major research turns that led to the current paper
boundary. It is intentionally descriptive rather than a list of final claims:
many steps produced useful negative evidence or comparison rules rather than
paper-table rows.

1. Initial OADM/OAM/OAD architecture framing.
   The project started from the OAD/OAM tangent-plane relation and the goal of
   one configurable divider--multiplier, not two unrelated units behind a mux.
   `Reference.md` records the OADM working manuscript, OAM, PACE, RAPID,
   SIMDive, constant-multiplier, CSA, and layout-aware arithmetic references,
   plus which ideas became current RTL, retained experiments, or rejected
   lessons.
   Evidence: `Reference.md`, especially sections 1--11 and "Citation and
   Claiming Rules".

2. Early pipelined/runtime exploration.
   The RAPID-inspired study swept runtime and fixed-level OADM pipelines
   (NP and P2--P7, then P6 at 1.5 ns). It established throughput/timing tradeoffs
   and showed that pipeline depth is an architectural operating point, not a
   free latency or area improvement. Gate-level regressions passed for the
   pipeline variants, but these results are no longer the main table for the
   10-ns no-pipeline hardware paper.
   Evidence: `dc/pipeline_sweep/README.md`,
   `dc/pipeline_sweep/RESULTS.md`, `pt_dc/pipeline_sweep/README.md`,
   `qsim_dc/pipeline_sweep/RESULTS.md`.

3. Activity-based power campaign for the older P6 boundary.
   Gate-level VCD/PT-PX power was run for runtime P6, fixed L4, and exact
   DesignWare baselines at a common 1.5-ns issue period. This supports the
   historical P6 energy story but does not replace the current 10-ns
   vectorless no-pipeline comparison. Current paper power claims should remain
   vectorless PT unless a new workload/VCD/SAIF campaign is run for the current
   no-pipeline netlists.
   Evidence: `activity_power/README.md`, `activity_power/RESULTS.md`,
   `activity_power/results.csv`.

4. Q0.7 L0--L3 scope reset.
   The project removed L4 from the current runtime/fixed hardware boundary,
   changed the runtime level port to L0--L3, and used Q0.7 reciprocal-square
   coefficients. Earlier Q0.9 L0--L4 work remains useful history, including
   the reciprocal-width lesson that Q0.8 made L4 regress behind L3, but the
   current paper is Q0.7 L0--L3.
   Evidence: `0123_README.md`, `dc/0123/README.md`,
   `pt_dc/0123/README.md`, `python/results_pace_grid/README.md`,
   `python/results_pace_grid/RECIP_WIDTH_ANALYSIS.md`.

5. No-pipeline comparison boundary.
   The paper moved from pipelined P6-style comparisons to combinational
   no-pipeline OADM with virtual-clock timing. This made latency equal the
   PrimeTime critical path and avoided mixing one-result-per-cycle pipeline
   throughput with combinational delay. Early Q0.7 no-pipeline runs used a
   7-ns boundary; final paper-facing results use the common 10-ns DC/PT flow.
   Evidence: `nopipe_README.md`, `dc/0123_nopipe/README.md`,
   `pt_dc/0123_nopipe/README.md`, `pt_dc/nopipe_fixed/README.md`.

6. PACE reproduction and fair DIV-only mapping.
   PACE author RTL was synthesized locally as fixed-level, combinational,
   DIV-only FP32 wrappers. A timing-matched paper-delay experiment showed that
   local TSMC65 absolute area cannot be compared directly with the PACE paper's
   UMC40 numbers. The final fair comparison maps OADM L0--L3 to PACE L1--L4
   under the same local flow and normalized-finite DIV-only wrapper.
   Evidence: `dc/pace_original/README.md`,
   `pt_dc/pace_original/README.md`, `pt_dc/pace_original/RESULTS.md`,
   `pt_dc/pace_original/PAPER_TARGET_RESULTS.md`,
   `pt_dc/pace_oadm_compare/README.md`,
   `ppa_results/div_only_vs_pace.csv`.

7. Fixed-L3 DIV-only optimization and PACE-I/O cone isolation.
   The DIV-only L3 study replaced recursive plane evaluation with a direct
   plane plus exact correction logic, removed unreachable cases, and produced
   PACE-compatible OADM wrappers. The full-semantics candidate and PACE-I/O
   candidate are different comparison objects; only the PACE-I/O cone is a
   fair direct comparator to PACE. The remaining PACE gap was attributed to
   real algorithmic cost, especially OADM's reciprocal-scale datapath, not just
   local Boolean cleanup.
   Evidence: `dc/0123_divopt/README.md`,
   `pt_dc/pace_oadm_compare/README.md`,
   `pt_dc/pace_oadm_compare/optimization_results.csv`.

8. Direct-plane multilevel full-unit optimization.
   The no-pipeline full DIV+MUL flow compared original recursive RTL with
   direct-plane implementations for fixed L0--L2 and runtime L0--L3. The
   optimized flow was bit-exact to the original and kept the same Q0.7
   coefficients and FP32 boundary. It produced the runtime 5164.20-um^2,
   5.21085-ns, 0.241349-mW direct-plane result, which remains the faster
   runtime point but is no longer the area/power-selected runtime best.
   Evidence: `dc/multilevel_opt/README.md`,
   `dc/multilevel_opt/results.csv`, `dc/multilevel_opt/outputs_final_opt/`,
   `pt_dc/multilevel_opt/reports/`.

9. Centered-residual fixed-level optimization.
   The centered-residual branch rewrote fixed-level tangent planes around
   interval midpoints, reducing residual product widths while remaining
   bit-exact. It produced current full-unit L1/L2 area/power points and the L3
   centered-residual area/power point. Runtime RTL stayed on the baseline
   datapath because variable residual widths would introduce mux and
   sign-extension overhead.
   Evidence: `optimization_branches/centered-residual/README.md`,
   `optimization_branches/centered-residual/results.csv`,
   `ppa_results/divmul_pareto_candidates.csv`,
   `ppa_results/divmul_best_by_level.csv`.

10. Runtime centered-residual full-unit selection.
   A later final_opt experiment added `oadm_runtime_centered_residual_opt`,
   validated its selected-level plane against the direct runtime plane by
   sampled Verilator co-simulation, and synthesized/analyzed it under the same
   10-ns no-pipeline DC/PT boundary. The new runtime point is 5114.88 um^2,
   5.28936 ns, and 0.232348 mW: lower area and vectorless PT power than the
   direct runtime, but slightly slower. It is now the runtime area/power point
   used in `divmul_best_by_level.csv` and Table `tab:full`.
   Evidence:
   `rtl/divopt/oadm_experiment_variants.v`,
   `qsim_rtl/divopt/runtime_centered_equiv_wrapper.v`,
   `qsim_rtl/divopt/verilator_runtime_centered_wrapper_main.cpp`,
   `dc/multilevel_opt/outputs_runtime_centered_residual_experiment_10ns/`,
   `pt_dc/multilevel_opt/reports/runtime_centered_residual_experiment/`.

10. Centered-index L0 and subtractor-free L3 Pareto points.
    The selected full-unit L0 winner is the `centered_index` point, while the
    selected sharing-ablation L0 row is `centered_residual`; keep these labels
    separate. For L3, centered residual remains the area/power point, and
    subtractor-free residual is retained as the delay point after showing a
    3.30% delay improvement for only 0.12% area and 0.38% power cost.
    Evidence: `ppa_results/divmul_best_by_level.csv`,
    `ppa_results/divmul_pareto_candidates.csv`,
    `optimization_branches/final-opt/README.md`,
    `optimization_branches/final-opt/results.csv`.

11. Rejected or non-winning arithmetic optimizations.
    Several plausible arithmetic rewrites were tested and not promoted to
    final claims: direct Eq. 10/11 transform needed bit-level compensation and
    did not replace the best RTL; RSCM/serial/balanced shift-add/CSD-style
    coefficient scaling lost to the inferred small multiplier; a hand-written
    CSA plane blocked useful DC arithmetic optimization; narrowing the
    normalizer mux synthesized identically; splitting the scale product raised
    area for negligible delay; exact-CSD scaling remained bit-exact but worsened
    L3 and runtime PPA. These should be written only as design lessons or
    negative results, not as final implementation contributions.
    Evidence: `Reference.md` sections 1, 5, 6, 7, 10, and 11;
    `optimization_branches/final-opt/README.md` and
    `optimization_branches/final-opt/results.csv`. The redundant standalone
    CSD experiment CSV was removed from `ppa_results` during result cleanup.

12. Sharing-ablation boundary tightened.
    Early sharing studies compared full pipelined OADM against separate
    divider and upstream OAM multiplier blocks or isolated mantissa cores, which
    were useful but not the final paper boundary. The current paper-facing
    sharing ablation re-elaborates the current no-pipeline RTL with operation
    mode tied to DIV or MUL and compares their separate sum against one
    selectable full OADM DIV+MUL block. It measures structural sharing under
    matched RTL/flow, but its L0 implementation is `centered_residual`, not the
    full-table `centered_index` L0 point.
    Evidence: `dc/separate_area/README.md`,
    `dc/oadm_sharing_ablation/README.md`,
    `ppa_results/divmul_sharing_ablation_10ns.csv`,
    `dc/multilevel_opt/outputs_sharing_10ns/`.

13. Exact DesignWare baseline boundary.
    Older exact baselines used seven-cycle pipelined DesignWare blocks at the
    1.5-ns throughput boundary. The current exact baseline is a combinational
    no-pipeline DesignWare MUL, DIV, and unshared selectable DIV+MUL block under
    the same 10-ns flow as OADM. The exact selectable row is the correct full
    DIV+MUL comparator because it contains both exact datapaths and a mode mux.
    Evidence: `dc/exact_baseline/README.md`,
    `dc/exact_baseline/COMPARISON.md`,
    `pt_dc/exact_baseline/RESULTS_1P5.md`,
    `dc/exact_nopipe/README.md`, `pt_dc/exact_nopipe/README.md`,
    `ppa_results/exact_baselines_10ns_nopipe.csv`.

14. Prior-work DIV-only context.
    PACE, QIAD, FaNZeD/INZeD, TruncApp, and LEAD were assembled under local
    wrappers where possible. The notes column is part of the result: QIAD,
    FaNZeD/INZeD, TruncApp, and LEAD are DIV-only contexts with different
    source/wrapper limits. LEAD's supplied two-phase RTL was also checked
    against a combinational unroll. None of these rows can support a full
    DIV+MUL claim.
    Evidence: `ppa_results/priorwork_comparison_10ns.csv`,
    `worktrees/qiad-repro/`, `worktrees/fanzed-prior-rtl/`,
    `worktrees/truncapp-repro/`, `worktrees/lead-repro/`,
    `ppa_results/paper_reconstruction_fp32_div.md`.

15. SIMDive source-based wrapper and obsolete reconstruction.
    Before author RTL was integrated, a hand-written paper-derived SIMDive-like
    reconstruction produced a 992.52-um^2 row. That row is obsolete and must not
    be used. The usable experiment instantiates the authors' N=32 integer core
    inside a local normal-finite FP32 wrapper, with an explicit compatibility
    module for the original 32-to-31-bit `shifter_out` truncation. Its PPA is
    structurally comparable only after OADM is synthesized under the same
    mapping policy. Its error is qualitative context only
    until OADM and the wrapper use the same generated vector set; DIV also has
    the Q8 quotient adapter caveat.
    Evidence: `ppa_results/simdive_original_fp32.md`,
    `ppa_results/simdive_original_fp32.csv`,
    `rtl/simdive_original/simdive_original_fp32_wrapper.v`,
    `rtl/simdive_original_compat/shifter_out_mul_div_compat.v`,
    `dc/simdive_original/outputs_fair_10ns/`,
    `pt_dc/simdive_original/reports_fair_10ns/`.

16. Current paper-facing result index and fair boundaries.
    `ppa_results/README.md` is the current paper-facing index: full OADM
    DIV+MUL versus unshared exact DIV+MUL, strict OADM DIV-only versus PACE
    DIV-only, mode-tied sharing ablation for structural sharing, bounded
    prior-work context, and bounded SIMDive-derived wrapper context. This is
    why the paper separates comparison questions rather than presenting one
    merged leaderboard.
    Evidence: `ppa_results/README.md`,
    `paper_hardware/oadm_divmul_10ns.tex`, `paper_hardware/pictures/`.

17. September 2 hierarchy-mapping fairness correction.
    The former strict DIV-only OADM/PACE CSV was not fair despite matching the
    process, constraints, and PT activity model: its OADM L0--L2 source flow
    (`dc/multilevel_opt/module.tcl`) and L3 source flow
    (`dc/0123_divopt/module.tcl`) explicitly used `ungroup -all -flatten` plus
    area-oriented optimization, while the local PACE/QIAD/FaNZeD/TruncApp/LEAD
    flows use `compile_ultra -no_autoungroup`. Those values were temporarily
    retained as an exploratory CSV, then deleted by the canonical rebuild in
    item 19 because they must not be used for cross-design conclusions. New scripts
    `dc/multilevel_opt/module_fair_hier.tcl` and
    `dc/0123_divopt/module_fair_hier.tcl` retain hierarchy and generated fresh
    DC netlist/SDC/report and PT report for OADM DIV-only L0--L2 and the
    centered-residual L3 at 10 ns. The corrected rows in
    `ppa_results/div_only_vs_pace.csv` are L0 1326.240013 um2 / 3.40399 ns /
    0.0745712 mW; L1 2343.600011 / 4.22670 / 0.1227980; L2 2760.839988 /
    4.38578 / 0.1674260; L3 3501.000019 / 4.24280 / 0.1952910. RTL and
    accuracy did not change. Its L0 `oadm_fixed_l0_div_paceio_opt` top uses
    the level-0 centered-index-equivalent plane; the name only reflects the
    PACE-I/O normal-finite wrapper, and the CSV records it as
    `centered_index_plane_paceio`. At that stage the paper used these rows;
    the old flattened OADM figures `divider_tradeoff.png` and
    `priorwork_adp.png` were removed from the TeX pending regeneration.
    Full OADM DIV+MUL versus exact remains internally matched because both
    sides intentionally use the same flattened area-oriented flow. The
    sharing ablation was internally matched because all of its views used the
    same hierarchy-preserving flow. Item 19 supersedes this temporary policy.
    Historical evidence: `dc/multilevel_opt/outputs_fair_hier_10ns/`,
    `dc/0123_divopt/outputs_fair_hier_10ns/`,
    `pt_dc/pace_oadm_compare/reports/oadm_*_fair_hier/`,
    `ppa_results/div_only_vs_pace.csv`.

18. Final-opt labels in strict DIV-only comparison.
    The PACE-I/O L0 wrapper uses the centered-index-equivalent L0 plane; L1
    and L2 use the centered-residual plane. The former L3 strict row used the
    older specialized `oadm_fixed_l3_div_opt_centered_paceio`, whose plane has
    explicit residual subtraction. This did not represent the final-opt L3
    implementation. A fresh hierarchy-preserving DC/PT run of
    `oadm_fixed_l3_div_paceio_opt` instead instantiated
    `oadm_fixed_plane_centered_LEVEL3`, where residuals are formed by
    offset-binary MSB inversion without a wide subtractor. Its results are
    3608.280015 um2, 4.57617 ns, and 0.2044340 mW. It is bit-exact to the
    centered-residual L3 accuracy RTL, but it is a separate generic PACE-I/O
    experiment, not a replacement for the selected specialized centered L3
    point. At that stage the strict table retained the 3501.000019-um2
    specialized centered-residual top; item 19 supersedes this mapping policy.
    Do not infer the full-unit final-opt 4.82341-ns
    result from this experiment: it is a different selectable DIV+MUL wrapper
    and PPA boundary.

19. September 2 canonical explicit-flatten rebuild supersedes the temporary
    hierarchy-preserving correction in items 17--18. The project adopted one
    mapping policy for all local structural PPA comparisons: TSMC65 typical
    CCS, 10 ns, no pipeline, input-only capacitance/fanout constraints,
    `ungroup -all -flatten`, `set_max_area 0`, `compile_ultra`, and the effective
    `optimize_netlist -area` pass. PrimeTime uses input probability 0.5 and 0.1
    toggles per 10 ns. Fresh DC/PT runs cover exact MUL/DIV/DIV+MUL, the
    SIMDive-derived integer-core FP32 wrapper, centered-residual OADM sharing
    views for L0--L3, a separate L0 centered-index full-unit audit, and upstream
    AM-Lib OAM L0--L3. All 21 netlists are combinational, single-module,
    macro-free standard-cell mappings with successful PT timing checks and no
    max-delay violation. Formal CSVs are regenerated only after these checks.
    The obsolete hierarchy-preserving comparison CSV and exploratory duplicate
    were deleted. L0 centered-residual remains the DIV-only area/delay/power
    winner, but full L0 remains a Pareto tradeoff: centered-index is smaller and
    faster, while centered-residual uses less power. The formal sharing table
    intentionally uses centered-residual at all four levels so every row is one
    implementation family; L3 subtractor-free remains only a delay Pareto point.
    The SIMDive fresh flat netlist passed a 20,000-vector cross-simulator check:
    Verilator generated two-state RTL expected outputs and Questa checked the
    gate netlist. A direct four-state RTL/gate miter is unsuitable because the
    author RTL contains incomplete-assignment and width semantics that produce
    simulator-dependent values; this limitation must remain explicit.
    Evidence: `dc/canonical_refresh/`, `pt_dc/canonical_refresh/`,
    `ppa_results/canonical_refresh_10ns.csv`,
    `ppa_results/divmul_sharing_ablation_10ns.csv`,
    `ppa_results/exact_baselines_10ns_nopipe.csv`,
    `ppa_results/simdive_original_fp32.csv`,
    `ppa_results/amlib_oam_vs_oadm_mul_10ns.csv`,
    `third_party/amlib_oam/PROVENANCE.md`.

20. September 2 fixed-L2 DIV-only specialization and literature-guided search.
    The former strict L2 point instantiated the generic multilevel centered-
    residual datapath and was slower than the separately specialized L3 point.
    A dedicated L2 implementation now fixes midpoint numerators to
    `Mx=9+2*ix` and `My=9+2*iy`, expands the midpoint constant as
    `81+18(ix+iy)+4ix*iy`, forms the centered residual by local-MSB inversion,
    and removes unreachable normalizer branches using the L2 output range.
    Its ordinary constant-multiply form is the selected delay-balanced point at
    2587.32 um2 / 3.87981 ns / 0.158764 mW. A proved plane bound
    `0.984374... < w < 3.984375` permits removal of two always-zero Q23 plane
    bits before reciprocal scaling. Its signed constant-multiply mapping is
    retained as the area/power point at 2539.44 um2 / 4.19835 ns / 0.155159 mW;
    the unsigned mapping has identical area/delay and 0.155236 mW power.
    Relative to the former 2715.12 um2 / 4.47307 ns / 0.161405 mW L2 point,
    the selected ordinary specialization improves area by 4.71%, delay by
    13.26%, and power by 1.64% without changing output bits.
    Manual midpoint shift-add, post-scale correction, and their combination
    were dominated. Manual reciprocal-scale shift-add reached 3.71415 ns but
    increased area to 3020.40 um2 and power to 0.182965 mW, so it is retained
    only as a delay Pareto point. This result also explains the former L2/L3
    delay inversion: L3 had fixed-level algebra and range-specialized
    normalization while L2 did not.

    The online and local-paper search screened piecewise power-of-two
    reciprocal construction (PACE), curve-fitted and piecewise-linear quotient
    surfaces (the NEWCAS curve-fitting divider and PLSAD), quadratic reciprocal
    fitting (QIAD),
    Taylor-series reciprocal refinement (SAADI-EC), Mitchell/log-domain
    transforms and correction LUTs (SIMDive, RAPID, LEAD, and ILAFD), operand
    truncation (TruncApp), and approximate restoring-subtractor cells. These
    are useful algorithm-level alternatives, but each changes the current OAD
    error function, precision, latency model, or architectural family. They
    were therefore not presented as bit-exact optimizations. The adopted
    changes are the subset compatible with the existing selected-plane output:
    level constant propagation, centered residual recoding, analytical range
    pruning, and proven active-width reduction.

    Evidence: `rtl/divopt/oadm_fixed_l2_div_opt.v`,
    `qsim_rtl/l2_divopt/tb_l2_specialized_equiv.sv`,
    `qsim_rtl/l2_divopt/rtl_equiv.log`,
    `qsim_rtl/l2_divopt/tb_l2_specialized_gate_miter.sv`,
    `qsim_rtl/l2_divopt/*.gate.log`, `dc/l2_divopt/outputs_10ns/`,
    `pt_dc/l2_divopt/reports_10ns/`,
    `ppa_results/div_only_l2_optimization_10ns.csv`, `PACE.pdf`, `QIAD.pdf`,
    `SAADI-EC_A_Quality-Configurable_Approximate_Divider_for_Energy_Efficiency.pdf`,
    `LEAD.pdf`, `ILAFD.pdf`, `RAPID.pdf`, and `2011.01148v1.pdf`.

21. September 2 root-level precision-pruning experiment. The paper-ready state
    was checkpointed as commit `403673b` on branch `paper_ready`, and branch
    `root_opt` was created from that exact commit. The new runtime candidate
    retains runtime DIV/MUL and L0--L3 selection, the same mantissa partitions,
    midpoint coordinates, and centered local tangent planes. It removes ten
    residual LSBs before each residual-by-midpoint product and, for DIV, removes
    fourteen plane LSBs before the Q0.7 reciprocal-square multiplication. The
    correction/rounding LUT was removed after experiments showed that it
    obstructed synthesis simplification while barely affecting aggregate
    error. On the same explicit-flatten, area-optimized 10 ns flow, runtime PPA
    changes from 5114.880036 um2 / 5.28936 ns / 0.2323480 mW to
    2990.520020 um2 / 4.34479 ns / 0.1236310 mW: reductions of 41.53%, 17.86%,
    and 46.79%, respectively. Across common 10,000-vector DIV/MUL L0--L3 tests,
    the largest increase in MAE, MRED, or RMSE is 6.96% (DIV L3 RMSE), within
    the requested 10% bound.

    A separate strict DIV-only L2 candidate uses the same precision pruning and
    a quantization-aware four-entry Q0.8 reciprocal-square table
    `{203,136,97,73}`. It keeps four L2 y intervals rather than adding L3
    partitions. Its PPA is 1555.200006 um2 / 3.42979 ns / 0.0828411 mW, and its
    common-vector MAE/MRED/RMSE are 0.003100417 / 0.002892013 / 0.004394511.
    Relative to local PACE L4, it is 44.18% smaller, 7.50% faster, and 37.63%
    lower power while reducing those three error metrics by 20.44%, 24.56%,
    and 27.55%. This is a promising experimental point, not yet a paper-table
    replacement.

    The final RTL passed an independent Python integer-model cross-check on
    1,000 vectors and an RTL-versus-final-DC-netlist miter on 20,005 vectors per
    DUT. Both synthesized designs are combinational, flattened, macro-free,
    pass PrimeTime `check_timing`, and have no maximum-delay violations.
    Evidence: `rtl/root_opt/`, `python/root_opt_search.py`,
    `python/root_opt_crosscheck.py`, `python/results_root_opt/`,
    `qsim_rtl/root_opt/`, `dc/root_opt/outputs_10ns/`,
    `pt_dc/root_opt/reports_10ns/`, and
    `ppa_results/root_opt_results_10ns.csv`.

## Tool and License Notes

- In the Codex restricted environment, Synopsys/Siemens license-host DNS can
  fail even though the user's MobaXterm SSH session has licenses.
- The successful DC/PT and ModelSim runs required an execution context that
  can reach the license server. This is an agent sandbox-network issue, not a
  broken project license.
- Do not report a run as completed merely because a command started. Confirm
  the output report files and extract area, timing, and total power.

## Unfinished / Recommended Next Work

1. Run OADM L0--L3 DIV and MUL accuracy on the same vector set as the
   SIMDive-derived wrapper. Reuse the LCG vector-generation rule from
   `qsim_rtl/simdive_original/verilator_main.cpp`, but do not use that file as
   an OADM harness because its DUT header/top are SIMDive-specific. Generate a
   common vector file or write a parameterized/common harness for both DUTs.
2. If retaining SIMDive in the paper, keep it in the dedicated bounded-context
   subsection; do not merge it into the strict PACE DIV-only table or claim it
   is a native FP32 competitor.
3. Compile the paper in Overleaf/TeX and inspect table placement, especially
   `tab:simdive`, which is a wide `table*`.
4. Before submission, consider VCD/SAIF workload power and placed-and-routed
   extracted PPA. Current power is fair vectorless PT activity, not workload
   energy signoff.
5. Preserve the distinction between fixed-level PPA points and the L0--L3
   runtime top: fixed levels let synthesis remove unused branches; the runtime
   result includes selection hardware.

## Claims to Avoid

- Do not say OADM is the first approximate DIV+MUL. SIMDive is earlier, though
  it is integer/FPGA/Mitchell/SIMD rather than OADM's FP32 tangent plane.
- Do not claim PACE is a fair full DIV+MUL PPA comparator; it is DIV-only.
- Do not claim local SIMDive results reproduce native FP32 SIMDive.
- Do not mix paper PPA numbers from other technologies/constraints with local
  TSMC65 DC/PT results.
- Do not claim complete IEEE-754 coverage for OADM or the SIMDive wrapper
  without separate special-value/subnormal evaluation.
