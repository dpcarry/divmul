# OADM DIV and truncated integer divider comparison

This isolated experiment generates a Figure-8-style ADP/RMSE comparison.
It does not reproduce PACE's DesignWare implementation or its UMC40nm PPA.
No original result, paper, or official CSV is overwritten.

Completed: all three new DC/PT points passed report checks; six direct
netlists passed 20,000-vector RTL/gate comparisons; all ten designs were
evaluated on 100,000 shared inputs. At the same retained input widths,
half-step compensation lowers RMSE by about 2.7% but increases ADP by
17.7%-24.9%. It is not a free accuracy improvement. OADM L0/L1 are dominated
in ADP/RMSE by measured direct-divider points on this distribution; OADM
L2/L3 trade lower ADP for higher RMSE against the measured b=7 baselines.
These findings do not assert behavior between measured points or on other
input distributions, and do not compare individual area/delay objectives.

## Configurations

- OADM: current source-specialized fixed DIV L0-L3, with residual/w_n
  truncation 18/18 (L0) and 16/16 (L1-L3), and existing reciprocal tables.
  These are four selected points, NOT four per-level truncation sweeps.
- Direct divider: retain b=3,5,7 input fraction bits, with either zero or
  half-bin compensation added independently to both normalized inputs.
- The direct core uses exact unsigned integer division of the reconstructed
  operands. Its quotient is floor-rounded to b+2 fractional bits before
  normalization and FP32 packing. Thus BOTH input and quotient precision are
  reduced; this is not a full-precision IEEE FP32 or verified DesignWare
  baseline. Adding compensation does not remove quotient rounding error.
- Bias is fixed at half the input quantization interval, not fitted to the
  reference output. OADM DIV uses its existing reciprocal calibration;
  the bias/no-bias legend refers only to the direct divider controls.

All PPA uses the common normal-finite FP32 shell, TSMC65 typical CCS, 10 ns,
INVD0 input drive, 0.004 load, ordinary compile plus area optimization,
no flatten/ungroup/compile_ultra, and vectorless PT power. Direct bias1 and
OADM PPA are reused from verified reports; only the three bias0 points are
new syntheses. This is a standalone fixed-DIV comparison, not runtime hardware.

## Validation and outputs

All ten designs are re-evaluated using the same 100,000 uniform normalized
input pairs from the independent audit (seed 90817263). Accuracy is computed
from actual packed RTL outputs against x/y, without the old arithmetic model.
Each direct output is additionally checked against an independent reference.
All six direct netlists are compared with RTL on 20,000 common vectors.
Existing OADM gate validation belongs to the source-specialization campaign.
Report collection rejects timing violations, failed check_timing, black boxes,
sequential cells, synthesis errors, or a flattened synthesis command.
Sample maxima are not proven worst-case error bounds.

`comparison.csv` carries configuration, error metrics, area, delay, power,
ADP, and raw report paths. `report_sha256.json` fingerprints consumed reports.
`adp_rmse.pdf` / `.png` use logarithmic ADP and linear RMSE, like PACE Figure 8.
`adp_rmse_log_rmse.pdf` / `.png` additionally use logarithmic RMSE to separate
the high-accuracy points. Connecting lines only join the measured b values;
they do not assert interpolated results. No Pareto-optimality claim is made.

Suggested caption:

> Area-delay product versus quotient RMSE for selected fixed-level OADM
> dividers and reduced-precision exact integer-division baselines, with and
> without half-step input compensation. Baseline labels b denote retained
> input fraction bits; quotient precision is b+2 fractional bits. OADM uses
> residual/w_n truncation of 18/18 at L0 and 16/16 at L1-L3. All designs share
> the normal-finite FP32 interface and the same 10 ns synthesis constraints.
> RMSE is measured on 100,000 common uniform input pairs in [1,2).

Run from the research root:

```sh
python3 experiments/div_truncation_figure/prepare.py
bash experiments/div_truncation_figure/run_check.sh
bash experiments/div_truncation_figure/run_ppa.sh
bash experiments/div_truncation_figure/run_check.sh gate
.venv/bin/python experiments/div_truncation_figure/collect_plot.py
```
