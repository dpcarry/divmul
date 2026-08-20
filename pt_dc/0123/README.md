# Q0.7 L0-L3 PrimeTime results

Run `./run_p6.sh` after `dc/0123/run_p6.sh`. Reports are placed in `reports`.

All values below use the same TSMC 65 nm typical library, 1.5 ns clock, and
vectorless input activity assumptions. P6 has six registered stages, accepts
one operation per cycle after fill, and has 9 ns latency.

| Configuration | Area (um^2) | Setup slack (ns) | Hold slack (ns) | Power (mW) | Energy/op (pJ) |
|---|---:|---:|---:|---:|---:|
| Runtime L0-L3 | 11961.17 | 0.0037 | 0.0271 | 5.8616 | 8.7924 |
| Fixed L0 | 4666.32 | 0.0058 | 0.0396 | 2.7364 | 4.1046 |
| Fixed L1 | 7587.03 | 0.0051 | 0.0396 | 4.0650 | 6.0975 |
| Fixed L2 | 9156.30 | 0.0040 | 0.0396 | 4.9089 | 7.3634 |
| Fixed L3 | 11655.24 | 0.0040 | 0.0396 | 5.8914 | 8.8371 |

`results.csv` contains the same machine-readable values. Setup and hold are
both met for every configuration; power is not activity-annotated signoff
power and should be labeled vectorless in comparisons.
