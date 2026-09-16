# Unified residual precision after reciprocal absorption

Branch: experiment/absorbed-unified-drop, based on 6935c40.
Only this directory is new. Parent experiments, canonical results, and paper
sources are not changed. The worktree directory retains its historical name.

## Two experiments

| Group | L0 drop | L1 drop | L2 drop | L3 drop |
|---|---:|---:|---:|---:|
| mul_drop | 16 | 14 | 12 | 10 |
| div_drop | 18 | 16 | 16 | 16 |

Each group applies the same drop to DIV and MUL. Each level has separate and
shared implementations, for 16 implementations total. No additional native-MUL
PPA variant is introduced in this experiment.

At L0-L3, both modes use slope fractional precision S=7,6,5,4 and constant
fractional precision F=S+23-drop. MUL slopes are represented exactly by
K*2^(S-4); no MUL coefficient rounding is added. DIV reciprocals and slope
integers are inherited unchanged from the absorbed short-coefficient experiment.
DIV constants are rounded at the new F. MUL compensation is recalculated for
the new drop and included exactly in its constant table. There is no new
reciprocal calibration or coefficient search.

Both structures declare the same coefficient and constant widths, sized from
both modes with sign bits. Synthesis is free to remove unused constant bits.
Separate has independent arithmetic cores plus a common output mux, normalizer,
and FP32 wrapper. Shared has one residual recoding, coefficient/mode table,
two multiplications, signed sum, and common normalizer/wrapper. Because drops
are equal, shared has no mode-dependent residual truncation mux.

The two structures must produce identical words for each group/level. mul_drop
preserves the previous MUL results; div_drop preserves the previous DIV results.
Changing drop can change error, including DIV constant rounding through F.
It is not guaranteed that retaining more DIV bits improves error: the inherited
reciprocal coefficients were calibrated for the previous precision.

## Validation

Use the previous 510254 input pairs, including 200k paired random inputs,
boundary grids, signed normal inputs with safe exponents, diagonals, and
residual truncation boundaries. Test both modes, totaling 1020508 RTL checks
per design. Gate simulation uses the previous 30835 pairs, both modes.
An additional seed-20260916 200k random set is evaluated in software only.

RTL is compared with an independent integer model, the prior DIV generator
at the new drop, and the native MUL RTL parameterized with the new drop.
Integer coefficient generation is checked against the original dyadic model.
Per-cell extrema check arithmetic widths and normalization range. Regression
is not an exhaustive or formal FP32 equivalence proof.

DC/PT uses the unchanged TSMC65 typical, hierarchy-preserving ordinary compile,
10 ns combinational flow. No flattening or pipelining is added. PT applies
static probability 0.5 and 0.1 transitions per 10 ns to all inputs including
mode. No VCD/SAIF or operand isolation is added. Power is vectorless estimated
power, not measured workload energy. Simulation compilation caches use /tmp
to avoid duplicating tool databases in the home quota.

## Reproduction

    python experiments/absorbed_unified_drop/prepare.py
    python experiments/absorbed_unified_drop/run.py rtl
    python experiments/absorbed_unified_drop/run.py all
    python experiments/absorbed_unified_drop/collect.py

The parent input files and RTL dependencies are recorded in sources.json.
Compare shared against its same-configuration separate implementation first.
Also compare absolute PPA and both operation errors with the prior split-drop
shared implementation; a larger percentage saving alone is not an improvement.

The old Shared baseline is the absorbed-coefficient split-drop implementation
in experiments/absorbed_sharing, not the manuscript's original Shared design.
