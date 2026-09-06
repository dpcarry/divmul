# Completed Results

Accuracy uses the same 200,000 uniform random normalized significand pairs.
Candidate selection matches MRED and RMSE; it does not require lower MAE or signed bias.
All seven candidates passed RTL/model and gate comparisons on 21,129 vectors each.
DC/PT: ordinary compile, hierarchy preserved, common FP32 wrapper, TSMC65, 10 ns.

| Design | MRED (%) | RMSE | MAE | Area (um2) | Delay (ns) | Power (uW) | Sample max RE (%) |
|---|---:|---:|---:|---:|---:|---:|---:|
| input_div_b3_bias1 | 3.29484 | 0.042981 | 0.033908 | 419.04 | 2.12277 | 16.733 | 13.026 |
| input_div_b5_bias1 | 0.82896 | 0.010770 | 0.008496 | 714.60 | 3.93083 | 34.869 | 3.599 |
| input_div_b7_bias1 | 0.20697 | 0.002689 | 0.002120 | 1108.44 | 6.26881 | 64.027 | 0.907 |
| oadm_div_l0 | 4.27611 | 0.056344 | 0.042214 | 516.96 | 1.75780 | 24.683 | 31.085 |
| oadm_div_l1 | 1.07966 | 0.016162 | 0.011381 | 1130.40 | 2.70339 | 66.154 | 9.170 |
| oadm_div_l2 | 0.36621 | 0.005317 | 0.003822 | 1484.64 | 2.73617 | 75.052 | 2.894 |
| oadm_div_l3 | 0.27913 | 0.003467 | 0.002751 | 1865.52 | 3.08149 | 83.412 | 1.644 |
| input_mul_b3_bias1 | 2.93475 | 0.077828 | 0.063369 | 399.60 | 1.29376 | 16.256 | 12.556 |
| input_mul_b5_bias1 | 0.73242 | 0.019470 | 0.015836 | 639.72 | 1.75723 | 28.479 | 2.988 |
| input_mul_b7_bias1 | 0.18328 | 0.004866 | 0.003961 | 924.12 | 2.08209 | 44.818 | 0.734 |
| input_mul_b9_bias1 | 0.04589 | 0.001218 | 0.000992 | 1264.32 | 2.33063 | 65.788 | 0.189 |
| oadm_mul_l0 | 3.12292 | 0.083291 | 0.062582 | 516.60 | 1.37323 | 21.440 | 24.714 |
| oadm_mul_l1 | 0.75935 | 0.020876 | 0.015660 | 948.60 | 1.85617 | 38.866 | 6.252 |
| oadm_mul_l2 | 0.18979 | 0.005247 | 0.003943 | 1317.60 | 2.14132 | 57.210 | 1.525 |
| oadm_mul_l3 | 0.04725 | 0.001306 | 0.000983 | 1645.92 | 2.47074 | 76.404 | 0.375 |

## Matched Comparisons

| OADM reference | Candidate | Area change (%) | ADP change (%) | Power change (%) |
|---|---|---:|---:|---:|
| oadm_div_l0 | input_div_b3_bias1 | -18.94 | -2.11 | -32.21 |
| oadm_div_l1 | input_div_b5_bias1 | -36.78 | -8.08 | -47.29 |
| oadm_div_l2 | input_div_b7_bias1 | -25.34 | 71.05 | -14.69 |
| oadm_div_l3 | input_div_b7_bias1 | -40.58 | 20.88 | -23.24 |
| oadm_mul_l0 | input_mul_b3_bias1 | -22.65 | -27.12 | -24.18 |
| oadm_mul_l1 | input_mul_b5_bias1 | -32.56 | -36.16 | -26.72 |
| oadm_mul_l2 | input_mul_b7_bias1 | -29.86 | -31.80 | -21.66 |
| oadm_mul_l3 | input_mul_b9_bias1 | -23.18 | -27.54 | -13.89 |

Boundary-grid accuracy is in `accuracy.csv`. On that distribution, MUL b=7/9
has worse average MRED/RMSE than OADM L2/L3. Maxima are sampled, not formal bounds.
These results concern standalone fixed MUL/DIV, not runtime configurability or sharing.
TruncApp provenance and the relevant PACE Figure 8 discussion are in `../README.md`.
