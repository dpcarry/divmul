# NLMS application results

| Design | Steady output NMSE (dB) | Steady NMSD (dB) | Final NMSD (dB) | Convergence iteration | Diverged seeds | RTL fallback rate |
|---|---:|---:|---:|---:|---:|---:|
| Exact | -38.591 +/- 0.336 | -44.506 +/- 0.388 | -44.387 | 139.8 | 0 | 0.000000% |
| STDM L0 | -25.052 +/- 2.051 | -30.236 +/- 2.145 | -29.910 | 141.7 | 0 | 0.150420% |
| STDM L1 | -35.001 +/- 1.052 | -40.941 +/- 1.209 | -40.495 | 139.1 | 0 | 0.150760% |
| STDM L2 | -38.066 +/- 0.325 | -43.998 +/- 0.383 | -44.109 | 139.2 | 0 | 0.150400% |
| STDM L3 | -38.322 +/- 0.341 | -44.205 +/- 0.391 | -44.277 | 139.1 | 0 | 0.150400% |

Convergence is the first iteration at which the 100-sample moving-average NMSD is below -20 dB.
Steady NMSD is averaged over the final 20% of each run.
RTL fallback means that an operation outside the normal-finite input/output scope was evaluated with exact FP32 arithmetic and counted.
The measured workload ratio is 49 MUL operations per DIV operation.
All recorded fallbacks had an exact-zero operand; no nonzero unsupported operand or nonnormal result was encountered.
