# OADM versus PACE comparison

This directory contains a reproducible, same-flow comparison between the
fixed-level OADM divider and the locally reproduced PACE divider.

## Main results

The canonical machine-readable table is `comparison.csv`. A positive delta
means that OADM is larger, slower, more power hungry, or less accurate than
PACE. A negative error delta means that OADM has lower error.

| OADM / PACE | OADM area (um^2) | PACE area (um^2) | OADM power (mW) | PACE power (mW) | OADM delay (ns) | PACE delay (ns) | OADM MRED | PACE MRED |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| L0 / L1 | 1287.72 | 956.88 | 0.07604 | 0.03913 | 3.1519 | 2.4213 | 0.042928 | 0.026218 |
| L1 / L2 | 2755.80 | 1532.16 | 0.13963 | 0.06333 | 4.0166 | 3.1580 | 0.011202 | 0.014993 |
| L2 / L3 | 2941.92 | 2175.12 | 0.16454 | 0.10655 | 4.3844 | 3.5374 | 0.008365 | 0.005652 |
| L3 / L4 | 3626.64 | 3196.43 | 0.21021 | 0.15422 | 4.4036 | 3.6584 | 0.003205 | 0.003834 |

OADM L1 and L3 have lower MAE, MRED, and RMSE than their mapped PACE levels.
OADM L0 and L2 have higher error; L2 RMSE is close to PACE L3 (+1.46%). PACE
has lower area, power, and critical delay at every mapped level in this run.

## L3 implementation Pareto improvement

`optimization_results.csv` compares the original area winner with three bit-exact
L3 Pareto implementations. The delay-oriented implementation factors the midpoint product
`(17 + 2a)(17 + 2b)` into `289 + 34(a + b) + 4ab`. Under the same explicit
10 ns virtual clock and aligned PrimeTime activity assumptions, the factored
version reduces critical delay by 9.79% and total power by 2.13%, at a 1.42%
cell-area cost. The area/power-oriented implementation centers each mantissa on
its interval midpoint, replacing two 24x5-bit products with bit-exact 20x5-bit
residual products. Relative to the original, it reduces area by 6.99%, delay by
7.07%, and power by 7.03%. All implementations pass setup, and each optimized
implementation passed a 100,008-vector RTL crosscheck with zero mismatches.
An intermediate implementation further factors each residual product using
`midpoint = 17 + 2*index`; it trades some of the centered version's area and
power savings for a shorter delay while remaining smaller than the delay winner.

| Implementation | Area (um^2) | PT delay (ns) | PT power (mW) |
|---|---:|---:|---:|
| Original L3 area winner | 3626.64 | 4.39051 | 0.210208 |
| Factored midpoint L3 | 3678.12 | 3.96043 | 0.205722 |
| Centered residual L3 | 3373.20 | 4.07998 | 0.195428 |
| Centered index-factored L3 | 3594.96 | 4.01110 | 0.202143 |

## Methodology

- Level mapping is OADM L0/L1/L2/L3 to PACE L1/L2/L3/L4 because OADM counts
  the baseline plane as level zero.
- PPA compares combinational, fixed-level, DIV-only FP32 wrappers. The OADM
  wrappers use PACE-compatible normalized finite FP32 I/O; neither side is
  credited with pipeline registers or runtime-level selection hardware.
- Both designs use the same TSMC 65 nm typical CCS library and a 10 ns virtual
  clock. All reported setup paths pass.
- PrimeTime power is vectorless with static probability 0.5 and toggle rate
  0.1 per 10 ns on both designs. These values are comparable estimates, not
  VCD/SAIF activity-based signoff power.
- Error uses the exact same 10,000 normalized positive FP32 operand pairs and
  fixed seed 6321. MRED is a fraction; multiply it by 100 for percent.
- `qsim_rtl/pace_oadm_compare/error_comparison.csv` is the raw error output.
  PrimeTime reports are under `reports/oadm_l*` and `reports/pace_l*`.
- Factored-midpoint reports are under
  `reports/oadm_l3_reduced_midpoint_period10`.
- Centered-residual reports are under `reports/oadm_l3_centered_period10`.
- Centered index-factored reports are under
  `reports/oadm_l3_centered_index_period10`.

## Full shared DIV+MUL context

The complete fixed-level OADM blocks also support multiplication through the
same interface and shared datapath. Their optimized areas are 2137.68 um^2
(L0), 3452.40 um^2 (L1), and 3954.96 um^2 (L2). The runtime-configurable L0-L3
block is 5164.20 um^2. These numbers must not be placed directly against the
PACE DIV-only area as an apples-to-apples divider comparison.
