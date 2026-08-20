# L4 reciprocal-width analysis

The former Q0.8 L4 divider regressed behind L3 even though the fourth
correction reduced the tangent-plane approximation error. The 16 L4 LUT
addresses and midpoint constants were correct; the limiting error was the
`1/256` coefficient step, which was larger than the residual L4 plane error.

The full 10000 by 10000 mantissa grid gives:

| L4 coefficient | MAE | MRED | RMSE |
|---|---:|---:|---:|
| Q0.8 | 0.002437372 | 0.002536346 | 0.002844356 |
| Q0.9 | 0.001193850 | 0.001231752 | 0.001417327 |
| Q0.10 | 0.000534098 | 0.000550301 | 0.000624424 |
| Q0.12 | 0.000236667 | 0.000223253 | 0.000343121 |
| Q0.16 | 0.000203072 | 0.000184985 | 0.000341939 |

For reference, L3 Q0.8 produced MAE 0.001444896, MRED 0.001425784, and
RMSE 0.001790518. Q0.9 is therefore the minimum tested width that restores
monotonic L3-to-L4 improvement.

The RTL uses a 9-bit scale for every level. L0-L3 constants are their previous
Q0.8 values shifted left by one, so their output bits remain unchanged; only
L4 gains new Q0.9 midpoint constants. ModelSim matched the NumPy model on all
1000 crosscheck vectors. Raw width-sweep data is in `recip_width_sweep.csv`.

At TSMC 65 nm, the runtime no-pipeline Q0.9 implementation is 9747.06 um2,
5.4129 ns, and 0.70537 mW at the 7 ns vectorless activity assumption. Relative
to Q0.8, the cost is 2.50% area, 1.03% critical-path delay, and 4.07% power.
