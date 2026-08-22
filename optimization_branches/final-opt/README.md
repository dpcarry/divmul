# Final Opt

This branch starts from `centered-residual` and retains only an exact,
synthesis-validated residual recentering optimization.

For fixed levels, subtracting the midpoint from the mantissa's in-interval
field is an offset-binary-to-two's-complement conversion. Inverting that
field's MSB produces the identical signed residual without an explicit wide
subtraction. The OADM formulas, Q0.7 reciprocal table, correction logic, FP32
interface, and accuracy are unchanged.

## Verification

- 200,000 full-FP32 runtime/fixed MUL and DIV comparisons passed bit-exactly.
- Fixed L0-L3 DC setup passed at the common 10 ns comparison constraint.
- Fixed L3 PrimeTime setup and hold passed.
- L0-L2 and runtime synthesize to their existing centered-residual metrics.

## Retained result

For fixed L3, PrimeTime delay improves by 3.30% (4.98826 to 4.82341 ns).
Area rises by 0.12% (4767.48 to 4773.24 um^2), and vectorless power rises by
0.38% (0.229574 to 0.230443 mW). This is retained as a timing-oriented Pareto
point, not claimed as an across-the-board PPA reduction.

## Rejected experiments

- Narrowing the RTL normalizer mux from 29 to 23 bits produced the identical
  synthesized L3 area and timing because DC already removed the unused bits.
- Splitting `(value * coefficient) >> 7` into high and low products remained
  bit-exact but increased L3 area from 4767.48 to 4985.64 um^2 for only about
  0.02 ns of DC delay improvement, so it was reverted.

Raw generated reports are under
`dc/multilevel_opt/outputs_final_opt_residual_wiring_period10/` and
`pt_dc/multilevel_opt/reports/final_opt_residual_wiring_l3/`.
