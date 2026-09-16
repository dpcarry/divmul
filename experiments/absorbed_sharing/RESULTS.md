# Sharing after Reciprocal Absorption: Results

All three implementations at each level produce the same DIV and MUL outputs.
Each design passed 1020508 RTL/model/reference checks and 61670 gate checks.
All rows use the common normalized-finite FP32 wrapper and the same 10 ns ordinary-compile DC/PT flow.
Power is vectorless, with mode probability 0.5 and the same activity policy on all inputs.

| Level | Structure | Area (um2) | Delay (ns) | Power (uW) | ADP |
|---|---|---:|---:|---:|---:|
| L0 | separate_native_mul | 1133.64 | 1.86732 | 46.065 | 2116.87 |
| L0 | separate | 1122.84 | 1.86732 | 44.950 | 2096.70 |
| L0 | shared | 1377.72 | 2.43243 | 51.070 | 3351.21 |
| L1 | separate_native_mul | 1972.44 | 2.37201 | 81.073 | 4678.65 |
| L1 | separate | 1829.16 | 2.39216 | 75.460 | 4375.64 |
| L1 | shared | 1821.60 | 2.66897 | 64.695 | 4861.80 |
| L2 | separate_native_mul | 2347.20 | 2.49718 | 86.335 | 5861.38 |
| L2 | separate | 2171.52 | 2.46753 | 81.109 | 5358.29 |
| L2 | shared | 2161.44 | 2.82485 | 53.233 | 6105.74 |
| L3 | separate_native_mul | 2824.56 | 2.79533 | 104.356 | 7895.58 |
| L3 | separate | 2938.32 | 3.14983 | 97.005 | 9255.21 |
| L3 | shared | 2703.96 | 3.25107 | 55.596 | 8790.76 |

## Net Sharing Benefit

Positive area/power/ADP savings indicate improvement; positive delay change indicates a regression.

| Level | Baseline | Area saved (%) | Power saved (%) | Delay change (%) | ADP saved (%) |
|---|---|---:|---:|---:|---:|
| L0 | separate | -22.70 | -13.62 | 30.26 | -59.83 |
| L0 | separate_native_mul | -21.53 | -10.86 | 30.26 | -58.31 |
| L1 | separate | 0.41 | 14.27 | 11.57 | -11.11 |
| L1 | separate_native_mul | 7.65 | 20.20 | 12.52 | -3.91 |
| L2 | separate | 0.46 | 34.37 | 14.48 | -13.95 |
| L2 | separate_native_mul | 7.91 | 38.34 | 13.12 | -4.17 |
| L3 | separate | 7.98 | 42.69 | 3.21 | 5.02 |
| L3 | separate_native_mul | 4.27 | 46.72 | 16.30 | -11.34 |

## Accuracy on the Paired 200k Inputs

| Level | DIV MRED (%) | DIV RMSE | MUL MRED (%) | MUL RMSE |
|---|---:|---:|---:|---:|
| L0 | 4.35160 | 0.055941 | 3.13320 | 0.083571 |
| L1 | 1.09522 | 0.015981 | 0.76158 | 0.020839 |
| L2 | 0.35683 | 0.005105 | 0.18883 | 0.005221 |
| L3 | 0.25773 | 0.003430 | 0.04716 | 0.001307 |

## Interpretation

separate uses independent table-based cores and only shares normalization/wrapping.
separate_native_mul retains the original balanced MUL arithmetic instead of its constant table.
shared uses one coefficient/mode decode and one pair of multipliers plus the common signed sum.
The shared arithmetic is sized for the wider MUL residuals. DIV no longer owns a post-plane coefficient multiplier.
Net savings include all mode selection, width alignment, table, adder, normalization and synthesis effects.
Do not interpret these figures as the area of exactly two removed multipliers.
Netlist checks confirm separate core instances versus one shared core, and one wrapper in every design.
There is no added operand isolation. A workload/isolation study is needed before making application-energy claims.
The experiment does not claim an exhaustive or formal equivalence proof for all FP32 inputs.
versus_old_shared.csv compares overall PPA with the old shared design; DIV accuracy differs, so it is not an equal-output ablation.
No production RTL, manuscript, or canonical CSV is replaced.
