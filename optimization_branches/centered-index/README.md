# Centered Index Shift/Add

This branch builds on centered residual products and expands each midpoint as
`base + step*index`. The residual scale is implemented as fixed shifts/adds plus
a narrower signed residual-by-index product. The transformation is algebraic;
the OADM equations, Q0.7 reciprocal coefficients, correction logic, and FP32
output bits are unchanged.

## Verification

- 200,000 full-FP32 runtime/fixed MUL and DIV comparisons passed bit-exactly.
- L0-L3 all pass PrimeTime setup and hold with the 10 ns constraint.
- DC and PrimeTime use the same TSMC 65 nm typical CCS flow as the baseline and
  centered-residual branch.

## Result

L0 is a useful Pareto point: relative to centered residual, it is 1.8 um2
smaller and 0.17 ns faster, with 1.15% higher vectorless power. L1-L3 show that
explicit shift/add RTL is not automatically better than synthesis of the small
midpoint multiplier; those configurations are retained as measured negative
results rather than recommended implementations. See `results.csv`.
