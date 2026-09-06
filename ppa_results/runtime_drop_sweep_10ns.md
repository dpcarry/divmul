# Runtime residual/scale drop sweep

This isolated experiment varies the common runtime datapath parameters without
modifying or replacing the production `oadm_runtime_root_opt` or its existing
10/14 reports.

## Scope and method

- Residual drops: 10, 12, 14, 16, and 18 LSBs.
- Reciprocal-scale drops: 14, 16, and 18 LSBs.
- The runtime level decoder, Q0.7 coefficient LUT, normalizer, and
  `fp32_normal_finite_wrapper` are unchanged; coefficients are not retuned.
- Accuracy uses 250,000 deterministic normal-finite FP32 pairs for every
  MUL/DIV and L0-L3 combination. The plotted accuracy cost is the maximum RMSE
  ratio over these eight operating points relative to runtime 10/14.
- A candidate passes the established accuracy screen only if MAE, MRED, and
  RMSE increase by no more than 10% at every mode and level.
- PPA uses TSMC65, 10 ns, no pipeline, hierarchy-preserving ordinary `compile`,
  `set_max_area 0`, `optimize_netlist -area`, and vectorless PrimeTime.
- The 10/14 sweep wrapper matched the production runtime bit-for-bit over
  2,000,000 mode/level/vector outputs.
- The baseline and six area-RMSE Pareto points passed 20,004-vector gate miters
  with zero mismatches. All 15 DC/PT points have zero sequential cells, zero
  black boxes, and pass setup and hold checks.

## Result

The production 10/14 point is the only candidate that passes the 10% accuracy
screen. The nearest alternative, 12/14, reduces area from 3174.12 to
2943.72 um2 (7.26%) but raises the worst RMSE by 15.94% and the worst of
MAE/MRED/RMSE by 21.83%, both at L3 MUL.

The 14/16 point becomes smaller than the fixed L3 DIV+MUL implementation
(2621.88 versus 2663.64 um2), but its worst RMSE is 2.62x the runtime baseline.
Thus a more aggressive common runtime drop can cross below fixed-L3 area only
by giving up the high-level accuracy that motivates L3.

This result does not rule out a level- and mode-dependent runtime design. It
shows that merely increasing two *common* datapath drops is insufficient:
hardware width is set by the least-aggressive active precision, while L3 MUL
is the first accuracy limiter. A future configurable design would need
mode-dependent residual handling and the fixed-MUL truncation correction, not
only per-level zero insertion.

## Figure

Files:

- `paper_hardware/figures/runtime_drop_sweep.pdf` for paper inclusion.
- `paper_hardware/figures/runtime_drop_sweep.png` for inspection.
- `ppa_results/runtime_drop_sweep_10ns.csv` for PPA and validation provenance.
- `qsim_rtl/runtime_drop_sweep/runtime_drop_accuracy.csv` for all detailed
  mode/level accuracy measurements.

Suggested caption:

> Runtime precision sweep under the common FP32 wrapper and 10-ns
> hierarchy-preserving flow. Curves vary the centered-residual truncation
> while marker/color groups denote reciprocal-scale truncation. Accuracy is
> the worst RMSE ratio across MUL/DIV and L0-L3 relative to the current 10/14
> runtime. Although aggressive truncation reduces area below the fixed-L3
> unit, only 10/14 remains within the 10% per-metric accuracy bound.

