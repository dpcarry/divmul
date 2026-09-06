# Fixed DIV Aggressive LSB-Truncation Sweep

This experiment is isolated from the current OADM RTL and result tables. It
tests whether the fixed-level divider can discard more residual and complete
`w_n` LSBs while retaining approximately the accuracy of each current point.

The software screen uses a uniform 500 by 500 mantissa grid. Reciprocal
coefficients are recalibrated independently for every `(level, residual_drop,
w_n_drop)` candidate. `within_2pct` and `within_5pct` require all three packed
FP32 metrics (MAE, MRED, and RMSE) to remain within the stated percentage of
the current implementation at that level.

Nothing in this directory replaces `rtl/root_opt/oadm_root_opt.v` or any
current `ppa_results` row unless a candidate passes software screening, RTL
model comparison, gate-level equivalence, Design Compiler, and PrimeTime.

## Result

No replacement point was found. Requiring all MAE, MRED, and RMSE changes to
remain within 2% of the current level leaves only the current configurations.
At a 5% bound, only two more-aggressive candidates survive:

| Level | Configuration | MRED | RMSE | Area (um2) | Delay (ns) | Power (mW) | Outcome |
|---|---|---:|---:|---:|---:|---:|---|
| L0 current | residual 18, `w_n` 18 | 4.1988% | 0.056041 | 764.28 | 2.0095 | 0.03442 | retained |
| L0 candidate | residual 19, `w_n` 18 | 4.3834% | 0.057924 | 819.72 | 2.2687 | 0.03430 | rejected: area and delay regress |
| L1 current | residual 16, `w_n` 16 | 1.0698% | 0.016122 | 1215.72 | 2.6001 | 0.06800 | retained |
| L1 candidate | residual 16, `w_n` 17 | 1.0783% | 0.016601 | 1224.00 | 2.5437 | 0.06137 | rejected: area regresses |

L2 and L3 are accuracy-limited: their least disruptive one-bit-more
candidate increases the worst of MAE/MRED/RMSE by 22.18% and 38.06%,
respectively, before synthesis.

The L0 candidate's two residual-by-midpoint multipliers grow from a combined
239.40 to 278.64 um2 after mapping. The L1 candidate's reciprocal scale
multiplier grows from 363.96 to 377.64 um2. Thus the arithmetic-width proxy is
not monotonic under this DesignWare and standard-cell mapping policy.

Both candidates pass a 10,000-vector independent integer-model/RTL comparison
and a 20,002-vector RTL/gate miter. PrimeTime `check_timing` succeeds, with no
max-delay or min-delay violations. The PPA boundary is identical to the
current hierarchy-preserving 10 ns ordinary-`compile` campaign.

Run the software screen from the research root:

```text
.venv/bin/python experiments/fixed_div_aggressive_sweep/sweep.py --points 500
experiments/fixed_div_aggressive_sweep/run_rtl_crosscheck.sh
experiments/fixed_div_aggressive_sweep/run_ppa.sh
experiments/fixed_div_aggressive_sweep/run_gate_miter.sh
.venv/bin/python experiments/fixed_div_aggressive_sweep/collect_results.py
```
