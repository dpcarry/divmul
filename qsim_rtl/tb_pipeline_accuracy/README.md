# P6 RTL accuracy campaign

This testbench measures the current runtime-configurable P6 RTL directly. It
uses 10,000 deterministic random normalized FP32 mantissa pairs plus seven
directed boundary cases for each MUL/DIV mode and each level L0--L4. Every
level sees the same vectors within the RTL campaign. The random seed is 6321.

```bash
make run
```

The run writes `accuracy_summary.csv` and prints the same MAE, MRED, absolute
RMSE, relative RMSE, and maximum relative error values to the transcript.

L4 improves multiplier accuracy over L3, but Q0.8 reciprocal-square
quantization makes L4 division less accurate than L3. The independent Python
ideal-coefficient model continues to improve at L4, isolating the regression
to coefficient quantization rather than the fourth tangent-plane correction.
