# Multilevel direct-plane optimization

This isolated flow compares the original no-pipeline full-FP32 OADM against
the exact direct-plane implementation for fixed L0-L2 and runtime-configurable
L0-L3. Both fixed designs retain the runtime `divide_mode` input. The runtime
design retains both `level` and `divide_mode`.

All comparisons use the same TSMC 65 nm library, 10 ns virtual clock, input
driver, input delay, output delay, output load, flattening, and area-high-effort
mapping. The optimized RTL is bit-exact to the original; it does not change the
Q0.7 reciprocal coefficients, FP32 interface, or approximation accuracy.

Run the functional regressions first, then synthesis:

```bash
cd research/qsim_rtl/divopt
make multilevel-plane
make multilevel-full

cd ../../dc/multilevel_opt
bash run_all.sh
```

## Verified results

The direct plane plus minimized rounding correction was checked against the
original recursive RTL for 200,000 internal plane vectors. The complete FP32
optimized top and fixed wrappers were then checked for another 200,000 random
MUL/DIV vectors plus directed special values. Both regressions had zero bit
mismatches.

PrimeTime linked every final netlist, `check_timing` succeeded, and both max-
and min-delay violation reports are empty. With a 10 ns virtual clock and the
same vectorless input activity for every design, the final paired results are:

| Design | Area baseline -> optimized (um2) | PT power baseline -> optimized (mW) | Critical path baseline -> optimized (ns) |
| --- | ---: | ---: | ---: |
| Fixed L0 | 2121.12 -> 2137.68 (+0.78%) | 0.09717 -> 0.09330 (-3.98%) | 4.4649 -> 4.1286 (-7.53%) |
| Fixed L1 | 3933.72 -> 3452.40 (-12.24%) | 0.18457 -> 0.15690 (-14.99%) | 5.2010 -> 4.2653 (-17.99%) |
| Fixed L2 | 5208.48 -> 3954.96 (-24.07%) | 0.24486 -> 0.19748 (-19.35%) | 5.4537 -> 4.8928 (-10.28%) |
| Runtime L0-L3 | 7054.92 -> 5164.20 (-26.80%) | 0.33009 -> 0.24135 (-26.88%) | 6.3512 -> 5.2109 (-17.95%) |

L0 is a Pareto tradeoff rather than an area winner: its original Eq. 6
shift-add plane is already very small. The optimized L0 costs 16.56 um2 while
reducing power and delay. L1, L2, and runtime improve all three metrics.

Canonical synthesis data are in `outputs_fair10_area/` for baselines and
`outputs_final_opt/` for optimized candidates. Canonical PrimeTime reports are
in `../../pt_dc/multilevel_opt/reports/`. `results.csv` contains the machine-
readable summary. The `outputs_lowlevel_shift/` and `outputs_l0_final/`
directories are exploratory runs and are not final results.
