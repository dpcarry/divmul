# Plain MUL versus Original OAM

Completed fixed-level comparison; common normal-finite FP32 wrapper; no pipeline.
TSMC65, 10 ns, ordinary compile, no flatten/compile_ultra, vectorless PT power.
Accuracy below: identical 100,000 uniform normalized pairs. See accuracy.csv for separate boundary/signed tests.

| Design | Area (um2) | Delay (ns) | Power (uW) | MRED (%) | RMSE | Sample max RE (%) |
|---|---:|---:|---:|---:|---:|---:|
| plain_mul_l0 | 1028.88 | 2.29807 | 45.724 | 3.1289192 | 0.083513303 | 24.80856 |
| amlib_oam_l0_fp32_common | 1084.32 | 2.23543 | 50.252 | 3.1289192 | 0.083513303 | 24.80856 |
| plain_mul_l1 | 1768.32 | 2.89246 | 81.798 | 0.7606031 | 0.020876797 | 6.17032 |
| amlib_oam_l1_fp32_common | 1780.20 | 2.55488 | 88.439 | 0.7606031 | 0.020876797 | 6.17033 |
| plain_mul_l2 | 2190.24 | 3.21030 | 105.918 | 0.1879579 | 0.005205677 | 1.52673 |
| amlib_oam_l2_fp32_common | 2596.68 | 2.73722 | 146.290 | 0.1879579 | 0.005205677 | 1.52673 |
| plain_mul_l3 | 2487.60 | 3.27015 | 133.314 | 0.0471121 | 0.001304603 | 0.37381 |
| amlib_oam_l3_fp32_common | 3249.36 | 2.87060 | 190.625 | 0.0471121 | 0.001304602 | 0.37381 |

## Model and RTL Checks

104304 vectors per level: 100000 uniform, 2304 boundary-grid, 2000 signed/safe-exponent.
Both independent mathematical models match their RTL on every vector.
Common-wrapper OAM matches upstream top on every vector.
Gate comparisons cover 5304 vectors per design; all eight DC/PT checks pass.
L0 plain/OAM outputs are bit-identical; L1/L2/L3 differ by at most 1/2/2 ULP in these tests.
These differences are reproduced by the upstream complemented-tail integer model, not ignored.
No claim of formal equivalence or exhaustive worst-case verification.

Analytic continuous-uniform plane RMSE is 2^(-2L)/12 before output truncation:
L0 0.0833333333; L1 0.0208333333; L2 0.0052083333; L3 0.0013020833.
The measured RMSE agrees within sampling variation.

Existing 46 DIV configurations were independently remeasured using integer error ratios:
100000 pairs each, maximum discrepancy from saved CSV metrics below 1e-12.
This validates error arithmetic for these samples, not Fig.8 reproduction fidelity.
