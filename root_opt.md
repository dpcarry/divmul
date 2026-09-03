# OADM Root-Level Precision Optimization

## Status and Scope

This document records the `root_opt` branch experiments as of 2026-09-02. It
is the paper-writing handoff for the fixed-level DIV-only precision-pruned
implementations in `rtl/root_opt/oadm_root_opt.v` and their supporting search,
accuracy, synthesis, and PrimeTime evidence.

The optimized L0-L3 points are elaboration-time fixed-level characterizations.
They are not the current runtime-selectable DIV+MUL implementation. The runtime
top `oadm_runtime_root_opt` still uses one common pruning configuration
(`RESIDUAL_DROP=10`, DIV `SCALE_DROP=14`, and Q0.7 coefficients) while keeping
the level and operation selectors live. Do not substitute the fixed-level PPA
numbers for runtime-unit PPA.

The fixed variants retain the OAD partition, midpoint, centered-residual
tangent plane, reciprocal-square DIV scaling, and FP32 normalizer/packer. They
change internal fixed-point precision and retune the quantized scale
coefficients. They are therefore new accuracy-PPA Pareto implementations, not
bit-exact rewrites of the pre-optimization fixed-level baselines.

## From the OAD Equation to the Hardware

For the selected level-`n` cell, let the midpoint be `(k_x^n,k_y^n)` and define

```text
r_x = x - k_x^n,
r_y = y - k_y^n.
```

The centered divider plane numerator is

```text
w_n = k_x^n*k_y^n + k_y^n*r_x - k_x^n*r_y.
```

The quotient approximation requires a second, divider-only scaling stage:

```text
d_hat_n = w_n / (k_y^n)^2 = w_n*C_n,
C_n = 1/(k_y^n)^2.
```

Thus, `w_n` is not yet the final quotient. `SCALE_DROP` comes from the hardware
implementation of `w_n*C_n`; it is not a new theoretical OAD term.

The precision-pruned fixed hardware is more accurately written as

```text
r'_x = T_Dr(r_x),
r'_y = T_Dr(r_y),
w'_n = k_x^n*k_y^n + k_y^n*r'_x - k_x^n*r'_y,
w''_n = T_Ds(w'_n),
d_hat_hw = w''_n*C'_n.
```

`T_D(v) = floor(v/2^D)*2^D` clears `D` low fixed-point bits while preserving
the binary-point position. Arithmetic right shift gives the required floor
behavior for negative signed residuals.

### Internal Bit Width

Bit width is the number of binary signals used to represent an internal value.
The FP32 ports remain 32 bits and each normalized mantissa is still unpacked as
24 bits. Precision pruning only reduces the operands used by internal
arithmetic.

In the original fixed centered-plane RTL, the natural signed residual width is
`23-n` bits at level `n`: 23, 22, 21, and 20 bits for L0-L3. The corresponding
residual-by-midpoint product widths are 29, 28, 27, and 26 bits because the
positive midpoint uses a 6-bit signed operand. Every product is then
sign-extended into the common 29-bit `plane_exact` container.

The root-opt plane first sign-extends every level's residual into a common
23-bit container and then selects `residual[22:D_r]`. Its nominal multiplier
operand width is therefore `23-D_r`. At L1-L3, some of those retained high bits
are repeated sign-extension bits rather than independent numerical
information; synthesis can remove the redundancy. For example, L3 with
`D_r=16` has a nominal 7-bit operand but only four independent residual bits:
the natural L3 residual bits `[19:16]` plus three copies of its sign bit.

The common `w_n`/`plane_exact` RTL container is 29-bit signed Q23 for every
level. Under the normal-finite DIV mantissa range, `w_n` is nonnegative and
below 4, so only the 25 bits `[24:0]` carry numerical value; `[28:25]` are
redundant range/sign-extension zeros. With `SCALE_DROP=D_s`, only
`plane_full[24:D_s]` enters the reciprocal-scale product, so its active and
independent width is `25-D_s` bits. If the coefficient has `B` fractional bits,
the RTL computes

```text
floor(w'_n/2^D_s) * C_int * 2^(D_s-B),
```

which restores the original fixed-point position by wiring zeros into the low
bits. No divider or variable shifter is introduced because all shifts are
elaboration-time constants.

`RESIDUAL_DROP` and `SCALE_DROP` therefore act at different boundaries:

```text
r_x,r_y -- RESIDUAL_DROP --> plane w'_n
        -- SCALE_DROP --> reciprocal coefficient product --> normalize/pack
```

## Quantization-Aware Coefficient Calibration

For Q0.B, the LUT stores an unsigned integer `C_int` and the represented value
is `C_int/2^B`. Division by `2^B` is only a binary-point convention/fixed shift;
there is no hardware divider.

The integer nearest to `2^B/(k_y^n)^2` minimizes coefficient-only reciprocal
error, but it need not minimize final divider error. The final error is

```text
e = C*w - x/y.
```

If `C_0=1/(k_y^n)^2` and `e_0=C_0*w-x/y`, changing the coefficient by `delta`
gives

```text
E[e^2] = E[e_0^2] + 2*delta*E[e_0*w] + delta^2*E[w^2],
delta_opt = -E[e_0*w]/E[w^2].
```

Consequently, a slightly less accurate standalone reciprocal coefficient can
reduce total error by compensating correlated tangent-plane, truncation,
normalization, and packing error. This is error cancellation at the complete
datapath level, not a claim that the retuned integer is a closer representation
of the reciprocal square.

L0 illustrates the distinction. Its theoretical midpoint is `k_y=3/2`, so

```text
1/(k_y)^2 = 4/9 = 0.444444...,
57/128 = 0.4453125,
59/128 = 0.4609375.
```

`57` is closer to `4/9`, while `59` gave lower packed-output MSE for the pruned
L0 datapath. It may worsen the exact midpoint while improving the integrated
error across the complete L0 cell. In the paper, call this end-to-end or
quantization-aware coefficient calibration, not ordinary reciprocal rounding.

An exhaustive Q0.7 check subsequently evaluated all integer codes `1...127`
for the selected L0 `RESIDUAL_DROP=18`, `SCALE_DROP=18` datapath over a
500-by-500 uniform mantissa grid. The global packed-output RMSE minimum remains
`C=59`: RMSE is 0.056632643, compared with 0.071185786 for the nearest
midpoint-reciprocal code `C=57`. The metric dependence should be stated
explicitly: `C=58` minimizes MAE and MRED, while `C=59` minimizes the MSE/RMSE
objective used by coefficient tuning. Evidence:
`python/l0_q07_coefficient_sweep.py`,
`python/results_root_opt/l0_q07_coefficient_sweep.csv`, and
`paper_hardware/pictures/l0_q07_coefficient_sweep.{pdf,png}`.

The residual and scale drops were selected by a discrete architecture sweep,
not by claiming a closed-form optimum. For every level the sweep enumerated
residual drops `{6,8,...,20}`, scale-input drops `{8,10,...,20}`, and Q0.7/Q0.8
coefficient formats. Coefficients were retuned for every candidate, packed
FP32 MAE/MRED/RMSE were measured over 250,000 grid pairs, candidates exceeding
a 10% increase in any metric were rejected, and the remaining low-cost points
were taken to RTL and canonical DC/PT. At L0, residual drop 20 violates the
accuracy bound. With residual drop 18, scale drop 20 in Q0.7 also violates it;
Q0.8 barely remains feasible but raises MRED by 9.86%. The selected
`18/18/Q0.7` point keeps much greater accuracy margin while retaining the
smaller Q0.7 scale multiplier.

The search objective was packed-output MSE over a uniform normalized-mantissa
grid. The selected points were then checked on a separate 10,000-vector random
set. "Best" therefore means best among the searched integer coefficients for
this hardware configuration, sampling domain, and objective; it is not a
distribution-independent global claim.

## Selected Fixed-Level Configurations

```text
       original natural residual       root-opt residual operand       w_n before scale       root-opt scale operand
level  bits  original product bits     drop  nominal  independent      container/effective    drop  retained   format
L0      23            29                18       5          5             29 / 25          18       7       Q0.7
L1      22            28                16       7          6             29 / 25          16       9       Q0.7
L2      21            27                16       7          5             29 / 25          16       9       Q0.8
L3      20            26                16       7          4             29 / 25          16       9       Q0.8
```

Interpretation of the table:

- `original natural residual bits` is the level-specific two's-complement
  width before root-opt pruning.
- `original product bits` includes the 6-bit signed midpoint operand.
- `nominal` is the declared root-opt multiplier operand width after pruning.
- `independent` excludes duplicated sign-extension bits at L1-L3.
- `w_n container/effective` distinguishes the common 29-bit signed Q23 RTL
  bus from the 25 bits that can vary for a normal DIV mantissa.
- `retained` is the width of `plane_full[24:SCALE_DROP]` entering the final
  reciprocal-coefficient multiplier.

Thus the exact information removal is:

```text
L0: residual 23 -> 5 independent bits (18 low bits removed);
    w_n 25 effective -> 7 bits (18 low bits removed).
L1: residual 22 -> 6 independent bits (16 low bits removed);
    w_n 25 effective -> 9 bits (16 low bits removed).
L2: residual 21 -> 5 independent bits (16 low bits removed);
    w_n 25 effective -> 9 bits (16 low bits removed).
L3: residual 20 -> 4 independent bits (16 low bits removed);
    w_n 25 effective -> 9 bits (16 low bits removed).
```

The discarded bits are low-significance fractional information. The FP32
input/output widths, sign, exponent, level partition, midpoint coordinates, and
binary-point positions are unchanged.

The selected coefficient tables, ordered by increasing denominator interval,
are

```text
L0: {59}/128
L1: {83,42}/128
L2: {203,136,97,73}/256
L3: {227,182,149,124,105,90,78,68}/256
```

The denominator mappings are

```text
L0: [1,2)
L1: [1,3/2), [3/2,2)
L2: [1,5/4), [5/4,3/2), [3/2,7/4), [7/4,2)
L3: eight intervals with midpoints 17/16,19/16,...,31/16
```

### L0

L0 uses one plane over the whole normalized mantissa domain. Its model error is
much larger than the contribution of low residual bits, so it tolerates the
most aggressive pruning: a 5-bit residual operand and a 7-bit scale operand.
The Q0.7 coefficient changes from the nearest theoretical integer `57` to the
end-to-end calibrated integer `59`.

### L1

L1 has two denominator intervals and two coefficients. Seven residual bits and
a 9-bit scale operand preserve sufficient accuracy. The lower-`y` coefficient
changes from theoretical Q0.7 rounding `82` to calibrated `83`; the upper
coefficient remains `42`.

### L2

The first selected L2 root-opt point used `RESIDUAL_DROP=10`,
`SCALE_DROP=14`, and Q0.8 `{203,136,97,73}`. It retained a 13-bit residual
operand and an 11-bit scale operand to push L2 accuracy beyond PACE L4. Its PPA
was 1555.200006 um^2, 3.42979 ns, and 0.0827526 mW.

This was an over-constrained design choice. The intended comparison ladder is
OADM L0/PACE L1, OADM L1/PACE L2, OADM L2/PACE L3, and OADM L3/PACE L4. L2
does not need to be deliberately oversized to target PACE L4.

The revised L2 uses `RESIDUAL_DROP=16`, `SCALE_DROP=16`, and the same Q0.8
table. Its 10,000-vector errors are still slightly lower than the same-vector
PACE L4 errors, while its area falls below L3. This revised point supersedes
the earlier 10/14 point.

### L3

L3 has eight smaller cells. The local residual range is smaller, so retaining
seven residual bits is sufficient even though the coefficient selector has
eight entries. It uses Q0.8 because coefficient quantization becomes more
visible as tangent-plane error falls.

## Why the Initial L2 Was Larger Than L3

The initial anomaly was caused by arithmetic width, not by the number of
partitions. The former L2 used approximately two 13-by-6 residual products and
an 11-by-8 scale product. L3 used approximately two 7-by-6 residual products
and a 9-by-8 scale product. Those wider L2 arithmetic cones cost more than the
extra four L3 coefficient selections.

After changing L2 from 10/14 to 16/16, L2 and L3 have the same nominal product
widths, while L2 has only four coefficient entries. The expected area ordering
is restored.

## Final Accuracy and PPA

The current fixed-level root-opt results are

```text
level  MAE          MRED         RMSE         area um^2    delay ns  power mW
L0     0.042490737  0.042625992  0.056921209   422.640006  1.98545   0.0179954
L1     0.011530309  0.010870842  0.016338037   783.360005  2.62745   0.0392231
L2     0.003852507  0.003674431  0.005367505  1058.400006  2.64548   0.0533156
L3     0.002748346  0.002775435  0.003482566  1382.400002  2.91930   0.0730775
```

Relative to the pre-root-opt fixed OADM baselines, the PPA changes are

```text
level  area change  delay change  power change
L0       -65.57%      -39.22%       -74.42%
L1       -62.07%      -25.86%       -63.08%
L2       -60.01%      -35.92%       -66.52%
L3       -59.24%      -36.18%       -61.70%
```

The final `qsim_rtl/root_opt/root_opt_accuracy.csv` drives OADM L0-L3 and PACE
L1-L4 with the same 10,000 normalized-mantissa pairs. PACE L4 gives MAE
0.003896897, MRED 0.003833633, and RMSE 0.006065880; both revised OADM L2 and
OADM L3 are lower on all three metrics for that vector set. Do not extend this
statement to unrelated SIMDive vectors; the established SIMDive boundary
remains qualitative because its wrapper uses a Q8 quotient adapter and the
existing data are not same-vector.

## Fairness Boundary and Reproduction

All current root-opt PPA points use

```text
TSMC65 tcbn65gplustc_ccs, NCCOM typical corner
DC U-2022.12-SP7
PT U-2022.12-SP5
10 ns virtual clock, no pipeline
0 clock uncertainty
INVD0 input driver
0.02 ns input and output delay
0.004 output load
input max capacitance 0.005 and max fanout 4
ungroup -all -flatten
set_max_area 0
compile_ultra -area_high_effort_script
optimize_netlist -area
PT vectorless probability 0.5 and toggle rate 0.1 per period
```

The pre-root-opt L0, L1, and L3 baselines were rerun through the exact current
canonical scripts under `dc/root_opt/fairness_rerun_10ns/` and
`pt_dc/root_opt/fairness_rerun_10ns/`. They reproduced their recorded area,
delay, and power exactly. The L2 baseline had already been generated directly
by the same canonical scripts. All checked designs have zero black boxes, zero
remaining hierarchical cells, and successful PrimeTime `check_timing`.

The fixed-level comparison scope is DIV-only normal-finite FP32. All current
OADM, PACE, and reproduced-prior-work points instantiate the same
`fp32_normal_finite_wrapper`, so sign/exponent handling and result packing are
part of every measured netlist. The optimized designs therefore do not obtain
PPA savings from a different special-value boundary.

## Validation Evidence

- Main RTL: `rtl/root_opt/oadm_root_opt.v`
- Search: `python/fixed_level_root_search.py`
- Sweep evidence: `python/results_root_opt/fixed_level_sweep.csv`
- Integer model: `python/root_opt_crosscheck.py`
- Accuracy harness: `qsim_rtl/root_opt/tb_root_opt.sv`
- Accuracy results: `qsim_rtl/root_opt/root_opt_accuracy.csv`
- Model/RTL result: `qsim_rtl/root_opt/transcript`, 1,000 vectors, pass
- RTL/netlist result: `qsim_rtl/root_opt/gate_miter.log`, 20,002 normal-finite
  vectors per DUT, pass
- DC/PT runner: `dc/root_opt/run_all.sh`
- Canonical DC: `dc/canonical_refresh/module.tcl`
- Canonical PT: `pt_dc/canonical_refresh/pt.tcl`
- DC reports/netlists: `dc/root_opt/outputs_10ns/`
- PT reports: `pt_dc/root_opt/reports_10ns/`
- Paper-facing result table: `ppa_results/fixed_level_root_opt_10ns.csv`
- Evidence validator: `scripts/validate_fixed_level_root_results.py`

The validator passes after the revised L2 run and checks CSV values against
the raw accuracy, DC, PT, hierarchy, black-box, timing, model, and gate-miter
evidence.

## Paper-Writing Rules

Use these descriptions:

- "centered-residual fixed-level tangent-plane implementation"
- "internal precision pruning" or "low-significance-bit pruning"
- "quantization-aware/end-to-end coefficient calibration"
- "reciprocal-scale operand pruning" for `SCALE_DROP`
- "fixed-level elaboration-time PPA characterization"

Avoid these claims:

- Do not say `59/128` is a more accurate representation of `4/9`.
- Do not call the new fixed variants bit-exact to the old fixed variants.
- Do not imply that `SCALE_DROP` is part of the theoretical OAD derivation.
- Do not use fixed-level PPA as runtime-selectable-unit PPA.
- Do not call the SIMDive-derived integer-core FP32 wrapper native FP32
  SIMDive or rank its current error numerically against OADM.

The central interpretation is that OAD supplies the partitioned tangent-plane
structure, while root-opt co-designs the internal fixed-point precision and
quantized reciprocal scale for the final packed FP32 error target.
