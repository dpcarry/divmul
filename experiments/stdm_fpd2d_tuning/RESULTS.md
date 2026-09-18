# Tuning Results

Completed: 31 / 31 candidates. Pending: none.

Common 200k positive normalized pairs. Error columns below are percentages only for MRED.
All published PPA rows passed RTL/model and gate tests plus the common DC/PT checks.
Power is vectorless; sample maximum relative error is not a worst-case proof.

| Design | L | Dx/Dy/W/B | MRED (%) | RMSE | Area (um2) | Delay (ns) | Power (uW) | ADP |
|---|---:|---|---:|---:|---:|---:|---:|---:|
| stdm_tune_00 | 2 | 16/17/17/8 | 0.45342 | 0.006486 | 1355.76 | 2.6359 | 64.77 | 3573.65 |
| stdm_tune_01 | 3 | 16/17/17/7 | 0.51321 | 0.006814 | 1578.24 | 2.9065 | 74.53 | 4587.20 |
| stdm_tune_02 | 2 | 15/16/16/8 | 0.33506 | 0.004948 | 1518.48 | 2.8028 | 76.67 | 4255.98 |
| stdm_tune_03 | 3 | 16/16/17/8 | 0.38611 | 0.004621 | 1779.84 | 2.9568 | 78.14 | 5262.68 |
| stdm_tune_04 | 2 | 15/15/15/8 | 0.30331 | 0.004577 | 1622.16 | 2.8146 | 84.00 | 4565.73 |
| stdm_tune_05 | 3 | 15/16/17/8 | 0.31395 | 0.004004 | 1817.28 | 3.0355 | 79.86 | 5516.43 |
| stdm_tune_06 | 0 | 18/18/18/7 | 4.26502 | 0.056460 | 516.96 | 1.7578 | 24.63 | 908.71 |
| stdm_tune_07 | 1 | 20/20/20/5 | 3.72019 | 0.048153 | 642.60 | 2.0830 | 25.78 | 1338.54 |
| stdm_tune_08 | 2 | 20/20/20/5 | 3.86951 | 0.048368 | 709.20 | 2.0558 | 27.40 | 1457.95 |
| stdm_tune_09 | 3 | 19/19/21/5 | 3.81558 | 0.049910 | 737.28 | 2.1143 | 28.88 | 1558.82 |
| stdm_tune_10 | 1 | 16/16/16/7 | 1.07733 | 0.016165 | 1130.40 | 2.7034 | 66.14 | 3055.91 |
| stdm_tune_11 | 2 | 18/18/18/7 | 0.96620 | 0.012686 | 1206.36 | 2.6183 | 53.97 | 3158.60 |
| stdm_tune_12 | 3 | 18/18/18/7 | 0.96922 | 0.012224 | 1448.64 | 2.6256 | 60.05 | 3803.56 |
| stdm_tune_13 | 3 | 15/16/16/8 | 0.22842 | 0.003044 | 1902.96 | 3.1602 | 85.34 | 6013.73 |
| stdm_tune_00_narrow | 2 | 16/17/17/8 | 0.45342 | 0.006486 | 1347.12 | 2.6508 | 61.61 | 3570.97 |
| stdm_tune_02_narrow | 2 | 15/16/16/8 | 0.33506 | 0.004948 | 1514.16 | 2.6574 | 73.05 | 4023.77 |
| stdm_tune_04_narrow | 2 | 15/15/15/8 | 0.30331 | 0.004577 | 1607.40 | 2.8672 | 79.16 | 4608.72 |
| stdm_tune_05_narrow | 3 | 15/16/17/8 | 0.31395 | 0.004004 | 1696.32 | 2.7509 | 70.69 | 4666.41 |
| stdm_tune_06_narrow | 0 | 18/18/18/7 | 4.26502 | 0.056460 | 538.20 | 1.8131 | 26.13 | 975.80 |
| stdm_tune_10_narrow | 1 | 16/16/16/7 | 1.07733 | 0.016165 | 1318.68 | 2.7141 | 66.90 | 3579.03 |
| stdm_tune_13_narrow | 3 | 15/16/16/8 | 0.22842 | 0.003044 | 1780.56 | 2.8754 | 76.45 | 5119.89 |
| stdm_tune_00_binary | 2 | 16/17/17/8 | 0.45342 | 0.006486 | 1571.76 | 2.9361 | 93.05 | 4614.86 |
| stdm_tune_00_csd | 2 | 16/17/17/8 | 0.45342 | 0.006486 | 1688.76 | 2.8611 | 99.27 | 4831.66 |
| stdm_tune_05_binary | 3 | 15/16/17/8 | 0.31395 | 0.004004 | 2891.16 | 3.1446 | 211.91 | 9091.69 |
| stdm_tune_05_csd | 3 | 15/16/17/8 | 0.31395 | 0.004004 | 2751.12 | 3.1950 | 186.15 | 8789.94 |
| stdm_input_mask6 | 3 | 15/16/17/8 | 0.51247 | 0.006384 | 1759.32 | 3.0399 | 76.27 | 5348.16 |
| stdm_input_mask6_narrow | 3 | 15/16/17/8 | 0.51247 | 0.006384 | 1579.68 | 2.7200 | 63.55 | 4296.68 |
| stdm_input_effective17 | 3 | 17/17/17/8 | 0.51247 | 0.006384 | 1587.24 | 2.5726 | 64.40 | 4083.29 |
| stdm_tune_00_midpoint | 2 | 16/17/17/8 | 0.45342 | 0.006486 | 1242.72 | 2.7144 | 58.35 | 3373.25 |
| stdm_tune_04_midpoint | 2 | 15/15/15/8 | 0.30331 | 0.004577 | 1478.16 | 2.7703 | 75.37 | 4094.95 |
| stdm_tune_05_midpoint | 3 | 15/16/17/8 | 0.31395 | 0.004004 | 1884.24 | 2.7946 | 62.81 | 5265.72 |

## Primary FPD2D Matches

The MILP references are independent paper reconstructions, not author RTL.
Each match requires both MRED and RMSE no worse; minimum measured ADP is then selected.

- fpd2d_8x8_t17_milp: stdm_tune_00_midpoint; ADP +127.87%, area +57.19%, delay +44.96%, power +194.55%.
- fpd2d_8x8_t16_milp: stdm_tune_02_narrow; ADP +135.84%, area +74.09%, delay +35.47%, power +213.79%.
- fpd2d_8x8_t15_milp: stdm_tune_04_midpoint; ADP +113.23%, area +56.90%, delay +35.90%, power +183.34%.

## Scope and Evidence

- Parameters were selected using independent calibration/screen seeds, before the common final 200k comparison.
- `screen.csv` records the numerical search; its cost proxy is not measured area.
- `accuracy_model.csv` separates uniform, independent uniform, grid endpoints, diagonal, signed and cell-boundary inputs.
- `control_model_check.json` checks all four unchanged controls against pre-existing RTL outputs.
- `baseline.csv` and `baseline_sha256.json` freeze references and methodology.
- Per-top RTL, DC netlists, PT reports and gate checks remain in their named folders.
- Production RTL, manuscript and canonical results have not been updated.

## Equivalent Implementation Ablations

Each row below has bit-identical ModelSim RTL and gate outputs to its paired reference.
| Reference | Variant | Area change (%) | Delay change (%) | Power change (%) | ADP change (%) |
|---|---|---:|---:|---:|---:|
| stdm_tune_00 | stdm_tune_00_narrow | -0.64 | +0.57 | -4.87 | -0.07 |
| stdm_tune_02 | stdm_tune_02_narrow | -0.28 | -5.19 | -4.73 | -5.46 |
| stdm_tune_04 | stdm_tune_04_narrow | -0.91 | +1.87 | -5.76 | +0.94 |
| stdm_tune_05 | stdm_tune_05_narrow | -6.66 | -9.38 | -11.48 | -15.41 |
| stdm_tune_06 | stdm_tune_06_narrow | +4.11 | +3.14 | +6.11 | +7.38 |
| stdm_tune_10 | stdm_tune_10_narrow | +16.66 | +0.40 | +1.15 | +17.12 |
| stdm_tune_13 | stdm_tune_13_narrow | -6.43 | -9.01 | -10.41 | -14.86 |
| stdm_tune_00 | stdm_tune_00_binary | +15.93 | +11.39 | +43.67 | +29.14 |
| stdm_tune_00 | stdm_tune_00_csd | +24.56 | +8.54 | +53.27 | +35.20 |
| stdm_tune_05 | stdm_tune_05_binary | +59.09 | +3.59 | +165.35 | +64.81 |
| stdm_tune_05 | stdm_tune_05_csd | +51.39 | +5.25 | +133.10 | +59.34 |
| stdm_input_mask6 | stdm_input_mask6_narrow | -10.21 | -10.52 | -16.68 | -19.66 |
| stdm_input_mask6 | stdm_input_effective17 | -9.78 | -15.37 | -15.57 | -23.65 |
| stdm_tune_00 | stdm_tune_00_midpoint | -8.34 | +2.98 | -9.91 | -5.61 |
| stdm_tune_04 | stdm_tune_04_midpoint | -8.88 | -1.57 | -10.27 | -10.31 |
| stdm_tune_05 | stdm_tune_05_midpoint | +3.68 | -7.94 | -21.34 | -4.54 |

## Search Coverage and Limits

- Coarse/refined search visited 3,885 parameter configurations and retained 5,814 valid objective-selected tables.
- Coarse calibration used 4,096 pairs. Shortlisted configurations were recalibrated on 65,536 pairs and screened on an independent 65,536 pairs.
- Both MSE and MRED coefficient objectives were explored; mixed-objective tables were not exhaustively searched.
- The synthesis shortlist uses a width proxy and is not a proof of a globally minimum-area or minimum-ADP implementation.
- Primary accuracy-matched L2/L3 finalists are inside the initial precision search limits. Coarse high-error low-B configurations reach search boundaries; those regions are not claimed optimal.
- Input masking tested 128 calibrated tables. Where at least level+1 fractional bits remain, masking is exactly equivalent to increasing each residual drop to max(drop, 23-input_bits).
- This follows because the midpoint integer is a multiple of 2^(23-input_bits): floor((M-K)/2^E) can be taken after masking M without changing the result for E >= 23-input_bits.
- Input precision below level+1 was not searched. The midpoint-alignment equivalence does not cover that regime.
- Explicit compact-width, input-mask and constant-multiplication variants were measured separately; matching numerical models alone were never counted as PPA evidence.
- No-drop diagnostics keep Q23 arithmetic and finite B=11 coefficients. They are numerical diagnostics, not exact arithmetic or new measured PPA rows.
- Fresh independent-200k error is model-based; the 343,790 common/boundary/signed RTL cases verify the model. Formal exhaustive equivalence was not performed.
- Maximum relative error is sampled and reported separately for each dataset; it is not an analytic upper bound.
