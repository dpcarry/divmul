# Centered Residual Products

This branch rewrites each fixed-level tangent plane around its interval
midpoint. Instead of multiplying each 24-bit mantissa by a midpoint, it forms
signed residuals and uses level-specific 23/22/21/20-bit residual products for
L0/L1/L2/L3. The identity is exact before the original truncation, and the
Q0.7 reciprocal coefficients and rounding-correction logic are unchanged.

Runtime-configurable RTL remains on the baseline datapath because variable
residual widths would require extra mux/sign-extension logic. Fixed levels use
the centered datapath.

## Verification

- 200,000 full-FP32 runtime/fixed MUL and DIV comparisons passed bit-exactly.
- All reported designs meet setup and hold under the 10 ns virtual-clock flow.
- DC and PrimeTime use the same TSMC 65 nm typical CCS library and vectorless
  input activity assumptions as the baseline.

## Result

L0 and L1 reduce both area and power. L2 trades 0.49% more area for 5.42% lower
power and 0.06 ns lower critical delay. The exact values are in `results.csv`.
