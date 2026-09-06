# Fixed DIV Asymmetric Residual Sweep

This isolated experiment tests independent LSB truncation of the two centered
residuals in the fixed-level OADM divider. The current `w_n` truncation and
reciprocal-coefficient format remain fixed at each level, while coefficients
are recalibrated for every `(x_residual_drop, y_residual_drop)` pair.

The first stage screens all pairs at least as aggressive as the current
symmetric point on a uniform 500 by 500 mantissa grid. Candidates must then
pass independent-model/RTL comparison, 10 ns ordinary-`compile` DC, PT, and a
gate-level miter before they can be considered replacements.

Nothing in this directory replaces the current RTL or PPA tables.

## Result

The 500 by 500 software screen evaluated 102 `(x_drop, y_drop)` pairs. No
asymmetric candidate keeps MAE, MRED, and RMSE simultaneously within 5% of
the current point. L2 and L3 are especially accuracy-limited: truncating one
additional residual bit increases at least one metric by more than 20% and
30%, respectively.

The closest L0 and L1 candidates were synthesized together with matched
controls implemented through the same elaboration-time fixed-level plane.
This is necessary because comparing against the older fixed top around a
runtime-level plane confounds residual truncation with cross-hierarchy
constant propagation.

| Level | `x_drop` | `y_drop` | C0 | MRED | RMSE | Area (um2) | Delay (ns) | Power (mW) | Outcome |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---|
| L0 control | 18 | 18 | 59 | 4.1988% | 0.056041 | 516.96 | 1.7578 | 0.024662 | matched control |
| L0 | 19 | 18 | 59 | 4.2063% | 0.058984 | 505.44 | 1.7279 | 0.024276 | asymmetric-only: small PPA gain |
| L0 | 18 | 19 | 59 | 4.4957% | 0.057225 | 500.04 | 1.7578 | 0.023272 | rejected: weaker accuracy/PPA tradeoff |
| L0 coefficient control | 18 | 18 | 60 | 4.7354% | 0.056727 | 430.56 | 1.5110 | 0.019302 | coefficient-mapping effect |
| L0 combined | 19 | 18 | 60 | 4.4811% | 0.056400 | 419.04 | 1.4760 | 0.018960 | new Pareto candidate |
| L1 control | 16 | 16 | 83/42 | 1.0698% | 0.016122 | 1130.40 | 2.7034 | 0.066154 | matched control |
| L1 | 17 | 16 | 83/42 | 1.1093% | 0.016898 | 1191.96 | 2.7583 | 0.065547 | rejected: area +5.45% |
| L1 | 16 | 17 | 83/42 | 1.1350% | 0.016451 | 1192.32 | 2.7071 | 0.065561 | rejected: area +5.48% |

At fixed `C0=59`, changing L0 from `(18,18)` to `(19,18)` reduces area by
2.23%, delay by 1.70%, and power by 1.56%. At fixed `C0=60`, the same
asymmetric change reduces area by 2.68%. Therefore asymmetric residual
truncation has a real but modest L0 benefit. Most of the combined point's
18.94% area reduction comes from the synthesis-friendly constant `C0=60`,
not from asymmetric truncation itself.

All eight reported implementations pass a 10,000-vector independent
integer-model/RTL comparison and a 20,002-vector RTL/gate miter. PrimeTime
`check_timing` succeeds for every point, with no max-delay or min-delay
violations. DC uses the same hierarchy-preserving 10 ns ordinary-`compile`
flow, common FP32 normal-finite wrapper, output load, and vectorless PT method
as the current campaign.

Run from the research root:

```text
.venv/bin/python experiments/fixed_div_asymmetric_sweep/sweep.py --points 500
experiments/fixed_div_asymmetric_sweep/run_rtl_crosscheck.sh
experiments/fixed_div_asymmetric_sweep/run_ppa.sh
experiments/fixed_div_asymmetric_sweep/run_gate_miter.sh
.venv/bin/python experiments/fixed_div_asymmetric_sweep/collect_results.py
```
