# OADM Root-Level Optimization

This directory contains two experimental OADM implementations. They retain the
selected local tangent-plane architecture, but intentionally trade a bounded
amount of fixed-point precision for substantially smaller arithmetic.

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

The optimized implementation discards ten residual LSBs before the two
midpoint products:

```text
r'_x = floor(r_x / 2^10) * 2^10,
r'_y = floor(r_y / 2^10) * 2^10.
```

This changes the dynamic products from approximately 23-by-6 bits to
13-by-6 bits while retaining the same partition, midpoint, and tangent-plane
form. Arithmetic right shift defines the floor operation for negative signed
residuals.

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

`oadm_fixed_l2_div_root_opt` is a strict normal-finite DIV-only L2 point. It
uses the same pruning and a four-entry quantization-aware Q0.8 table:

```text
C = {203, 136, 97, 73}, selected by y[22:21].
```

These coefficients compensate the local tangent plane's systematic
underestimation. They do not add partitions or a refinement level.

## Validation

- `python/root_opt_search.py`: one-million-pair mantissa-grid screening.
- `qsim_rtl/root_opt/root_opt_accuracy.csv`: common 10,000-vector FP32
  baseline/candidate/PACE accuracy comparison.
- `qsim_rtl/root_opt/transcript`: independent Python integer-model versus RTL
  cross-check, 1,000 vectors, zero mismatches.
- `qsim_rtl/root_opt/gate_miter.log`: RTL versus final DC netlist comparison,
  20,005 vectors per DUT, zero mismatches.
- `dc/root_opt/outputs_10ns/` and `pt_dc/root_opt/reports_10ns/`: canonical
  explicit-flatten 10 ns DC/PT evidence.

These are experimental `root_opt` results. They do not modify the paper-ready
branch or replace paper tables until explicitly selected.
