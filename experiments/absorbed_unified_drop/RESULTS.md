# Unified residual drop: results

Two groups, four fixed levels each, and separate/shared structures at identical arithmetic precision.
mul_drop uses 16/14/12/10; div_drop uses 18/16/16/16 for both operations.
S=7/6/5/4 for both operations; F=S+23-D. Reciprocals/slopes are not recalibrated.
MUL compensation is recomputed for D. DIV constant rounding follows the new F.
All values below are whole DIV+MUL blocks with one common FP32 wrapper.
PT power is vectorless, not VCD/SAIF measured activity. No operand isolation is added.

| Group | Level | D | Structure | Area (um2) | Delay (ns) | Power (uW) | ADP |
|---|---|---:|---|---:|---:|---:|---:|
| mul_drop | L0 | 16 | separate | 1302.48 | 2.02475 | 53.457 | 2637.20 |
| mul_drop | L0 | 16 | shared | 1369.08 | 2.37550 | 54.608 | 3252.25 |
| div_drop | L0 | 18 | separate | 1048.32 | 1.88201 | 41.850 | 1972.95 |
| div_drop | L0 | 18 | shared | 1145.16 | 2.25940 | 44.688 | 2587.37 |
| mul_drop | L1 | 14 | separate | 2076.84 | 2.47789 | 90.623 | 5146.18 |
| mul_drop | L1 | 14 | shared | 1812.96 | 2.64341 | 69.043 | 4792.40 |
| div_drop | L1 | 16 | separate | 1724.40 | 2.29517 | 71.039 | 3957.79 |
| div_drop | L1 | 16 | shared | 1531.08 | 2.47295 | 54.744 | 3786.28 |
| mul_drop | L2 | 12 | separate | 2625.84 | 2.91543 | 99.376 | 7655.45 |
| mul_drop | L2 | 12 | shared | 2157.48 | 2.75951 | 55.056 | 5953.59 |
| div_drop | L2 | 16 | separate | 1872.00 | 2.37473 | 68.043 | 4445.49 |
| div_drop | L2 | 16 | shared | 1562.04 | 2.45344 | 50.700 | 3832.37 |
| mul_drop | L3 | 10 | separate | 3558.24 | 3.13459 | 108.734 | 11153.62 |
| mul_drop | L3 | 10 | shared | 2756.16 | 3.33875 | 54.038 | 9202.13 |
| div_drop | L3 | 16 | separate | 2414.16 | 2.42864 | 75.157 | 5863.13 |
| div_drop | L3 | 16 | shared | 1946.16 | 2.58508 | 38.018 | 5030.98 |

## Shared relative to matched Separate

Positive savings are improvements; positive delay changes are regressions.

| Group | Level | Area saved (%) | Power saved (%) | Delay change (%) | ADP saved (%) |
|---|---|---:|---:|---:|---:|
| mul_drop | L0 | -5.11 | -2.15 | 17.32 | -23.32 |
| mul_drop | L1 | 12.71 | 23.81 | 6.68 | 6.87 |
| mul_drop | L2 | 17.84 | 44.60 | -5.35 | 22.23 |
| mul_drop | L3 | 22.54 | 50.30 | 6.51 | 17.50 |
| div_drop | L0 | -9.24 | -6.78 | 20.05 | -31.14 |
| div_drop | L1 | 11.21 | 22.94 | 7.75 | 4.33 |
| div_drop | L2 | 16.56 | 25.49 | 3.31 | 13.79 |
| div_drop | L3 | 19.39 | 49.42 | 6.44 | 14.19 |

## Accuracy on the same 200k input pairs

| Group | Level | DIV MRED (%) | DIV RMSE | MUL MRED (%) | MUL RMSE |
|---|---|---:|---:|---:|---:|
| old split-drop shared | L0 | 4.35160 | 0.055941 | 3.13320 | 0.083571 |
| mul_drop | L0 | 4.31138 | 0.055247 | 3.13320 | 0.083571 |
| div_drop | L0 | 4.35160 | 0.055941 | 3.24531 | 0.085589 |
| old split-drop shared | L1 | 1.09522 | 0.015981 | 0.76158 | 0.020839 |
| mul_drop | L1 | 1.07932 | 0.015785 | 0.76158 | 0.020839 |
| div_drop | L1 | 1.09522 | 0.015981 | 0.79032 | 0.021378 |
| old split-drop shared | L2 | 0.35683 | 0.005105 | 0.18883 | 0.005221 |
| mul_drop | L2 | 0.30405 | 0.004416 | 0.18883 | 0.005221 |
| div_drop | L2 | 0.35683 | 0.005105 | 0.26873 | 0.007135 |
| old split-drop shared | L3 | 0.25773 | 0.003430 | 0.04716 | 0.001307 |
| mul_drop | L3 | 0.16004 | 0.002013 | 0.04716 | 0.001307 |
| div_drop | L3 | 0.25773 | 0.003430 | 0.19006 | 0.005042 |

## Shared relative to previous split-drop Shared

Negative changes are reductions. Changed precision means this is not a same-output ablation.

| Group | Level | Area change (%) | Delay change (%) | Power change (%) | ADP change (%) |
|---|---|---:|---:|---:|---:|
| mul_drop | L0 | -0.63 | -2.34 | 6.93 | -2.95 |
| mul_drop | L1 | -0.47 | -0.96 | 6.72 | -1.43 |
| mul_drop | L2 | -0.18 | -2.31 | 3.42 | -2.49 |
| mul_drop | L3 | 1.93 | 2.70 | -2.80 | 4.68 |
| div_drop | L0 | -16.88 | -7.11 | -12.50 | -22.79 |
| div_drop | L1 | -15.95 | -7.34 | -15.38 | -22.12 |
| div_drop | L2 | -27.73 | -13.15 | -4.76 | -37.23 |
| div_drop | L3 | -28.03 | -20.49 | -31.62 | -42.77 |

The previous Shared baseline below is from experiments/absorbed_sharing,
already using absorbed coefficients. It is NOT the manuscript original design.

| Baseline level | Area (um2) | Delay (ns) | Power (uW) | ADP |
|---|---:|---:|---:|---:|
| L0 | 1377.72 | 2.43243 | 51.070 | 3351.21 |
| L1 | 1821.60 | 2.66897 | 64.695 | 4861.80 |
| L2 | 2161.44 | 2.82485 | 53.233 | 6105.74 |
| L3 | 2703.96 | 3.25107 | 55.596 | 8790.76 |

## Validation and scope

Each of 16 designs passed 1020508 RTL/model/reference checks and 61670 functional gate checks.
Separate and Shared outputs agree for every tested group/level/mode.
mul_drop retains previous MUL outputs; div_drop retains previous DIV outputs.
accuracy.csv also contains boundary sets and an independent software-only 200k sample.
Per-cell range checks bound intermediate arithmetic but are not a full formal equivalence proof.
Both structures use identical declared coefficient formats; synthesis can simplify constant bits.
The prior separate implementation used native Q4 MUL coefficients, while the current separate
uses the common S/F format. Old-versus-new separate PPA must not be attributed to drop alone.
A sharing percentage can increase merely because Separate becomes larger. Consult absolute
shared PPA and both mode errors before identifying an improvement.
No paper, canonical RTL/CSV, or parent experiment files are replaced.
