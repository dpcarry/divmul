# Factored Midpoint Product

This branch replaces the fixed-level midpoint product with the exact identity

`(base + step*i)(base + step*j) = base^2 + base*step*(i+j) + step^2*i*j`.

The OADM equations, Q0.7 reciprocal coefficients, correction logic, FP32
interface, and output bits are unchanged. Fixed L0 and L1 already use stronger
constant-specialized implementations, so this transform only changes fixed L2
and L3. The runtime-configurable unit retains the original midpoint multiply;
the factorized runtime mux logic was measured and rejected because it worsened
PPA.

## Verification

- `make multilevel-plane`: 200,000 MUL/DIV plane comparisons passed.
- `make multilevel-full`: 200,000 full-FP32 runtime/fixed comparisons passed.
- Synopsys DC and PrimeTime use TSMC 65 nm typical CCS and a 10 ns virtual
  clock constraint.

## Result

For fixed L2, area decreases by 1.02%, while critical delay and vectorless
power increase slightly. This is retained as an area-oriented Pareto point, not
as a universal PPA winner. See `results.csv` for the exact comparison.
