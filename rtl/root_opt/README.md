# OADM Root-Level Optimization

This directory contains experimental runtime and fixed-level OADM
implementations. They retain the selected local tangent-plane architecture,
but intentionally trade a bounded amount of fixed-point precision for
substantially smaller arithmetic.

## Fixed-Point Form

Let `m_x` and `m_y` be unsigned Q23 normalized mantissa integers. If the
selected midpoint is `k_x = K_x/16`, its exact Q23 residual is

```text
r_x = m_x - K_x * 2^19,
r_y = m_y - K_y * 2^19.
```

The centered OADM plane, also in Q23, is

```text
W_div = (K_x*K_y)*2^15 + (r_x*K_y)/16 - (r_y*K_x)/16,
W_mul = (K_x*K_y)*2^15 + (r_x*K_y)/16 + (r_y*K_x)/16.
```

The runtime optimized implementation discards ten residual LSBs before the two
midpoint products; fixed-level tops use the independently selected values
listed below:

```text
r'_x = floor(r_x / 2^10) * 2^10,
r'_y = floor(r_y / 2^10) * 2^10.
```

The original natural residual widths are 23, 22, 21, and 20 bits for L0-L3.
The root-opt implementation uses a common 23-bit sign-extended container before
pruning, so the declared post-pruning operand may include redundant sign bits.
For the current fixed points, the independent retained residual information is
5, 6, 5, and 4 bits for L0-L3, respectively. Arithmetic right shift defines
the floor operation for negative signed residuals.

For division, let `C/2^B` be the reciprocal-square coefficient. Instead of
forming the full `W*C` product, the optimized scaler computes

```text
D' = floor(W / 2^14) * C * 2^(14-B).
```

The runtime unit uses the existing Q0.7 tables (`B=7`), reducing the active
scale product from about 25-by-7 bits to 11-by-7 bits. Multiplication bypasses
this divider-only scaler.

## Implementations

`oadm_runtime_root_opt` keeps both DIV/MUL mode selection and runtime L0-L3
selection. It uses ten-bit residual pruning and fourteen-bit DIV scale-input
pruning. The previous correction/rounding LUT is omitted; retaining it blocked
much of the synthesis simplification while changing aggregate error only
slightly.

The four strict normal-finite fixed-level DIV-only tops use independently
selected pruning and quantization-aware coefficient tables:

```text
top                         residual drop  scale drop  coefficients
oadm_fixed_l0_div_root_opt       18            18      Q0.7 {59}
oadm_fixed_l1_div_root_opt       16            16      Q0.7 {83,42}
oadm_fixed_l2_div_root_opt       16            16      Q0.8 {203,136,97,73}
oadm_fixed_l3_div_root_opt       16            16      Q0.8 {227,182,149,124,105,90,78,68}
```

Every level returns `w_n` in a 29-bit signed Q23 container. Normal DIV values
use 25 meaningful bits (`w_n` is nonnegative and below 4); scale pruning keeps
7 of those bits at L0 and 9 bits at L1-L3.

The revised L2 point uses the same arithmetic widths as L3. It supersedes an
earlier `10/14` point that unnecessarily retained extra precision to target
accuracy beyond PACE L4. All levels improve all three measured error statistics
over their pre-root-opt implementations. Coefficient retuning compensates the
complete quantized datapath error; it does not add partitions or a refinement
level.

Under the canonical 10 ns flow, the resulting fixed-level PPA is:

```text
level  area (um2)  PT delay (ns)  PT power (mW)
L0      422.6400      1.98545        0.0179954
L1      783.3600      2.62745        0.0392231
L2     1058.4000      2.64548        0.0533156
L3     1382.4000      2.91930        0.0730775
```

L2 is now smaller than L3 because both use sixteen-bit pruning at the residual
and scale boundaries, while L2 has only four denominator intervals and L3 has
eight. The former L2-greater-than-L3 anomaly belonged to the superseded 10/14
L2 point.

## Validation

- `python/fixed_level_root_search.py`: 250,000-pair per-candidate pruning and
  coefficient sweep.
- `python/root_opt_search.py`: one-million-pair final-candidate screening.
- `qsim_rtl/root_opt/root_opt_accuracy.csv`: common 10,000-vector FP32
  baseline/candidate/PACE accuracy comparison.
- `qsim_rtl/root_opt/transcript`: independent Python integer-model versus RTL
  cross-check, 1,000 vectors, zero mismatches.
- `qsim_rtl/root_opt/gate_miter.log`: all four fixed-level RTL tops versus their
  final DC netlists, 20,002 normal-finite vectors per DUT, zero mismatches.
- `dc/root_opt/outputs_10ns/` and `pt_dc/root_opt/reports_10ns/`: canonical
  explicit-flatten 10 ns DC/PT evidence.

These are experimental `root_opt` results. They do not modify the paper-ready
branch or replace paper tables until explicitly selected.

Run the evidence consistency check from the research root with:

```text
.venv/bin/python scripts/validate_fixed_level_root_results.py
```
