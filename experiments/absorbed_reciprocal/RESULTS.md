# Absorbed Reciprocal Results

All rows passed RTL/model, DC/PT and gate regression. DIV-only, common FP32 wrapper.
Power is vectorless, not measured application power. Error is evaluated on the same 200k pairs.
Original W truncation is absent in every absorbed variant. Exact means exact coefficient absorption, not exact division.

| Design | MRED (%) | RMSE | Area (um2) | Delay (ns) | Power (uW) | ADP | Max sampled RE (%) |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| abs_l0_control | 4.26502 | 0.056460 | 516.96 | 1.75780 | 24.683 | 908.71 | 31.238 |
| abs_l0_no_w | 4.31735 | 0.056062 | 635.40 | 1.85511 | 28.971 | 1178.74 | 29.863 |
| abs_l0_exact | 4.31735 | 0.056062 | 636.84 | 1.56265 | 29.173 | 995.16 | 29.863 |
| abs_l0_inherited_s7 | 4.35160 | 0.055941 | 627.48 | 1.48428 | 28.870 | 931.36 | 30.586 |
| abs_l1_control | 1.07733 | 0.016165 | 1130.40 | 2.70339 | 66.154 | 3055.91 | 9.158 |
| abs_l1_no_w | 1.09018 | 0.015999 | 1432.08 | 2.66039 | 83.541 | 3809.89 | 8.971 |
| abs_l1_exact | 1.09018 | 0.015999 | 1445.04 | 2.23932 | 65.766 | 3235.91 | 8.971 |
| abs_l1_inherited_s6 | 1.09522 | 0.015981 | 1047.60 | 1.88601 | 46.873 | 1975.78 | 9.113 |
| abs_l2_control | 0.36478 | 0.005315 | 1484.64 | 2.73617 | 75.052 | 4062.23 | 2.911 |
| abs_l2_no_w | 0.34776 | 0.005016 | 1843.92 | 2.73325 | 92.858 | 5039.89 | 2.715 |
| abs_l2_exact | 0.34776 | 0.005016 | 1718.28 | 2.37861 | 61.280 | 4087.12 | 2.715 |
| abs_l2_inherited_s5 | 0.35683 | 0.005105 | 1061.64 | 1.91991 | 32.654 | 2038.25 | 3.114 |
| abs_l3_control | 0.27943 | 0.003482 | 1865.52 | 3.08149 | 83.412 | 5748.58 | 1.644 |
| abs_l3_no_w | 0.24745 | 0.003309 | 2235.96 | 3.10167 | 97.723 | 6935.21 | 1.203 |
| abs_l3_exact | 0.24745 | 0.003309 | 2048.04 | 2.63360 | 60.634 | 5393.72 | 1.203 |
| abs_l3_inherited_s4 | 0.25773 | 0.003430 | 1193.76 | 2.05400 | 28.561 | 2451.98 | 1.400 |

## Relative to Original Controls

| Candidate | Area change (%) | Delay change (%) | Power change (%) | ADP change (%) | Both errors no worse | Fresh-set match |
|---|---:|---:|---:|---:|---|---|
| abs_l0_no_w | 22.91 | 5.54 | 17.37 | 29.72 | False | False |
| abs_l0_exact | 23.19 | -11.10 | 18.19 | 9.51 | False | False |
| abs_l0_inherited_s7 | 21.38 | -15.56 | 16.96 | 2.49 | False | False |
| abs_l1_no_w | 26.69 | -1.59 | 26.28 | 24.67 | False | False |
| abs_l1_exact | 27.83 | -17.17 | -0.59 | 5.89 | False | False |
| abs_l1_inherited_s6 | -7.32 | -30.24 | -29.15 | -35.35 | False | False |
| abs_l2_no_w | 24.20 | -0.11 | 23.72 | 24.07 | True | True |
| abs_l2_exact | 15.74 | -13.07 | -18.35 | 0.61 | True | True |
| abs_l2_inherited_s5 | -28.49 | -29.83 | -56.49 | -49.82 | True | True |
| abs_l3_no_w | 19.86 | 0.65 | 17.16 | 20.64 | True | True |
| abs_l3_exact | 9.78 | -14.53 | -27.31 | -6.17 | True | True |
| abs_l3_inherited_s4 | -36.01 | -33.34 | -65.76 | -57.35 | True | True |

## Same-Output Absorption Ablation

Both sides omit W truncation and retain the original coefficients. All RTL and gate outputs agree bit for bit.

| Level | Area change (%) | Delay change (%) | Power change (%) | ADP change (%) |
|---|---:|---:|---:|---:|
| L0 | 0.23 | -15.77 | 0.70 | -15.57 |
| L1 | 0.90 | -15.83 | -21.28 | -15.07 |
| L2 | -6.81 | -12.98 | -34.01 | -18.90 |
| L3 | -8.40 | -15.09 | -37.95 | -22.23 |

## FPD2D Accuracy-Matched References

FPD2D rows are our independently MILP-optimized reconstruction, not supplied author RTL.
Both MRED and RMSE must be no worse; this does not match worst-case error.

| FPD2D | Lowest-ADP qualifying candidate | Area change (%) | Power change (%) | ADP change (%) |
|---|---|---:|---:|---:|
| fpd2d_8x8_t17_milp | abs_l2_inherited_s5 | 34.29 | 64.84 | 37.69 |
| fpd2d_8x8_t16_milp | abs_l2_inherited_s5 | 22.06 | 40.27 | 19.47 |
| fpd2d_8x8_t15_milp | abs_l3_inherited_s4 | 26.71 | 7.37 | 27.68 |

## Validation and Limitations

RTL cases/design: 343790; gate cases/design: 21043.
The RTL input set covers all 1,024 retained mantissa pairs at L0 and all 16,384 at L1-L3.
Only retained arithmetic codes are exhaustively covered, not the FP32 input space or exact-quotient error extrema.
Boundary, diagonal, signed and fresh independent errors are separately listed in accuracy.csv.
check_math.py also checks an independent Fraction implementation and computes mantissa-domain worst-case relative errors by bin endpoints; see ERROR_NOTES.md.
No formal equivalence, physical placement/routing, or application activity simulation is claimed.
Shared DIV/MUL savings must be remeasured after any integration; these results cannot be applied to the shared block.
Calibration at the original reciprocal precision selected the original integers at all levels; aliases.json records duplicate variants.
absorption_ablation.csv isolates exact absorption against unabsorbed no-W controls with identical outputs.
