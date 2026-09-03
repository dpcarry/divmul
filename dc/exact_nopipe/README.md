# Combinational exact FP32 baseline

This flow is the exact baseline for the same comparison class as the PACE and
OADM DIV-only tables: no clock port, no registers, a 10 ns virtual clock, 20 ps
input/output delays, and the same output load. It instantiates combinational
Synopsys DesignWare `DW_fp_mult` and `DW_fp_div` operators.

To make exact-versus-full-OADM PPA symmetric, DC flattens the wrapper and uses
the same area-high-effort mapping policy as `dc/multilevel_opt`.

The three top levels are intentionally separate:

* `exact_fp32_mul_nopipe`: exact MUL-only.
* `exact_fp32_div_nopipe`: exact DIV-only.
* `exact_fp32_divmul_nopipe`: both exact datapaths plus the mode mux.

Run all three from this directory:

```bash
./run_all.sh
```

PrimeTime reports are generated from `../../pt_dc/exact_nopipe` after DC
finishes. This baseline replaces neither the older 1.5 ns pipelined study nor
its activity-based power numbers; it is the comparable combinational baseline.
