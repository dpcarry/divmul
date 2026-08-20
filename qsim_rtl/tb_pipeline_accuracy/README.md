# P6 RTL accuracy campaign

This testbench measures the current runtime-configurable P6 RTL directly. It
uses 10,000 deterministic random normalized FP32 mantissa pairs plus seven
directed boundary cases for each MUL/DIV mode and each level L0--L3. Every
level sees the same vectors within the RTL campaign. The random seed is 6321.

```bash
make run
```

The run writes `accuracy_summary.csv` and prints the same MAE, MRED, absolute
RMSE, relative RMSE, and maximum relative error values to the transcript.

`make crosscheck` generates 1,000 predictions from the chunked NumPy grid model
and checks every output bit against the P6 RTL before the exhaustive software
campaign is used.

The reciprocal-square coefficient is Q0.7. Runtime and fixed-level hardware
only support L0-L3; the fourth correction and L4 coefficient table are absent.
