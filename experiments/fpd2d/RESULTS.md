# FPD2D versus current STDM DIV-only

TSMC65 typical CCS, ordinary compile + area optimization, preserved hierarchy, no flatten/ultra.
Same common FP32 wrapper and identical exported 10 ns constraints for every top.
Power is vectorless PrimeTime power, not the paper's 28 nm activity-annotated measurement.
All 14 designs: 333072 RTL checks and identical gate outputs, no timing violations or sequential cells.
Accuracy below uses the same 200000 normalized positive mantissa pairs and complete FP32 outputs.
The other 133072 checks include every t=15 retained input combination at both low-bit extremes and signed exponent cases.

| Design | Configuration | MRED % | Paper MRED % | RMSE | Area um2 | Delay ns | Power uW | ADP um2 ns |
|---|---|---:|---:|---:|---:|---:|---:|---:|
| FPD2D | 2x4,t=19 | 1.91218 | 1.98 | 0.024954 | 474.48 | 1.44184 | 15.137 | 684.12 |
| FPD2D | 2x8,t=18 | 1.16804 | 1.19 | 0.015314 | 573.48 | 1.62174 | 21.942 | 930.04 |
| FPD2D | 2x8,t=17 | 0.95062 | 0.96 | 0.012455 | 653.40 | 1.70406 | 25.467 | 1113.43 |
| FPD2D | 4x8,t=17 | 0.64129 | 0.66 | 0.008102 | 718.20 | 1.83703 | 22.802 | 1319.35 |
| FPD2D | 8x8,t=17 | 0.79160 | 0.54 | 0.018773 | 789.48 | 1.86304 | 21.713 | 1470.83 |
| FPD2D | 8x8,t=16 | 0.68635 | 0.42 | 0.018115 | 862.92 | 1.98172 | 23.456 | 1710.07 |
| FPD2D | 8x8,t=15 | 0.65578 | 0.39 | 0.017936 | 931.68 | 2.00701 | 23.732 | 1869.89 |
| STDM | L0 | 4.26502 |  | 0.056460 | 516.96 | 1.75780 | 24.683 | 908.71 |
| STDM | L1 | 1.07733 |  | 0.016165 | 1130.40 | 2.70339 | 66.154 | 3055.91 |
| STDM | L2 | 0.36478 |  | 0.005315 | 1484.64 | 2.73617 | 75.052 | 4062.23 |
| STDM | L3 | 0.27943 |  | 0.003482 | 1865.52 | 3.08149 | 83.412 | 5748.58 |
| FPD2D_MILP | 8x8,t=17 | 0.52821 | 0.54 | 0.006828 | 790.56 | 1.87255 | 19.809 | 1480.36 |
| FPD2D_MILP | 8x8,t=16 | 0.40958 | 0.42 | 0.005134 | 869.76 | 1.96163 | 23.279 | 1706.15 |
| FPD2D_MILP | 8x8,t=15 | 0.37354 | 0.39 | 0.004636 | 942.12 | 2.03842 | 26.601 | 1920.44 |

## Interpretation

FPD2D uses coefficients printed in Fig. 6. FPD2D_MILP independently solves Algorithm 1 for all 64 tiles.
These are paper-derived reconstructions, not author RTL. Fig. 5 fixes the fused carry-save architecture but not a unique compressor schedule.
The original 8x8 printed table has anomalous cells; see coefficient_audit.json. The independent MILP table is not silently substituted.
Neither set of local errors is asserted to exactly reproduce Table I. No paper PPA is scaled between technologies.
A design with larger error cannot be called better solely because its ADP is lower.
matched_comparison.csv finds minimum-ADP candidates with BOTH MRED and RMSE no worse than each STDM level.
No global Pareto claim or claim about untested partition/precision settings is supported.

## Accuracy-matched comparison

Candidates must have both MRED and RMSE no higher than the STDM control; select the lowest ADP among those candidates.

| STDM | Eligible minimum-ADP candidate | STDM ADP | Candidate ADP | Candidate ADP change % |
|---|---|---:|---:|---:|
| L0 | fpd2d_2x4_t19 | 908.71 | 684.12 | -24.71 |
| L1 | fpd2d_2x8_t17 | 3055.91 | 1113.43 | -63.56 |
| L2 | none among evaluated points | 4062.23 | -- | -- |
| L3 | none among evaluated points | 5748.58 | -- | -- |

An absent eligible candidate means these sampled designs do not reach both error targets; it does not establish that the other architecture cannot reach them.
