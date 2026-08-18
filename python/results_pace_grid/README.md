# PACE-style exhaustive mantissa-grid accuracy

This campaign evaluates 10000 uniformly spaced FP32 mantissas in `[1,2)` for both x and y, forming 100,000,000 pairs per mode and level. The endpoint 2.0 is excluded.

The chunked NumPy model reproduces the current RTL integer corrections, Q0.8 LUT constants, product truncation, and FP32 normalization. It accumulates statistics without storing the full output matrix.

Chunk size: 128; elapsed time: 89.0 seconds.

`pace_comparison.csv` transcribes the PACE Table II MAE, MRED, and RMSE values. PACE reports MRED as a ratio, not a percentage.

The model was checked bit-for-bit against the P6 RTL on 1,000 vectors spanning both modes and all five levels. Regenerate that check with `make crosscheck` in `qsim_rtl/tb_pipeline_accuracy`.

## OADM results

| Mode | Level | MAE | MRED (%) | RMSE | R-RMSE (%) | MaxRE (%) |
|---|---:|---:|---:|---:|---:|---:|
| MUL | L0 | 0.062499993 | 3.121832 | 0.083333328 | 4.556784 | 25.000000 |
| MUL | L1 | 0.015624996 | 0.758946 | 0.020833332 | 1.070232 | 6.250000 |
| MUL | L2 | 0.003906250 | 0.188227 | 0.005208335 | 0.262339 | 1.562500 |
| MUL | L3 | 0.000976563 | 0.046959 | 0.001302085 | 0.065237 | 0.390625 |
| MUL | L4 | 0.000244143 | 0.011734 | 0.000325523 | 0.016287 | 0.097656 |
| DIV | L0 | 0.043580118 | 4.271633 | 0.068373934 | 6.584538 | 33.193115 |
| DIV | L1 | 0.011849005 | 1.104058 | 0.019347039 | 1.680536 | 9.906101 |
| DIV | L2 | 0.004343612 | 0.391751 | 0.006480436 | 0.542320 | 2.905008 |
| DIV | L3 | 0.001444896 | 0.142578 | 0.001790518 | 0.175131 | 0.632052 |
| DIV | L4 | 0.002437372 | 0.253635 | 0.002844356 | 0.301913 | 0.716695 |

## DIV comparison with PACE

| Level | OADM MAE | PACE MAE | OADM MRED | PACE MRED | OADM RMSE | PACE RMSE |
|---|---:|---:|---:|---:|---:|---:|
| L1 | 0.011849 | 0.028 | 0.011041 | 0.026 | 0.019347 | 0.045 |
| L2 | 0.004344 | 0.015 | 0.003918 | 0.014 | 0.006480 | 0.022 |
| L3 | 0.001445 | 0.011 | 0.001426 | 0.011 | 0.001791 | 0.014 |
| L4 | 0.002437 | 0.005 | 0.002536 | 0.005 | 0.002844 | 0.007 |
