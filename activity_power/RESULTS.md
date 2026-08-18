# Activity-based PrimeTime power results

Power comes from gate-level VCD activity over 10,000 continuously issued
operations after 20 warm-up cycles. All runs use the same deterministic
uniform-random normalized FP32 encoding sequence. Runtime P6 and fixed-L4
operate at 1.5 ns; legacy exact baselines are reported at their timing-clean
2.0 ns PrimeTime period. Compare energy/op across unequal periods rather than
treating their average mW as an equal-throughput comparison.

| Family | Mode | Level | Period (ns) | Area (um2) | Dynamic (mW) | Leakage (mW) | Total (mW) | Energy/op (pJ) |
|---|---|---:|---:|---:|---:|---:|---:|---:|
| runtime | MUL | L0 | 1.50 | 15053.76 | 10.366544 | 0.071645 | 10.438190 | 15.657285 |
| runtime | MUL | L1 | 1.50 | 15053.76 | 10.700303 | 0.071848 | 10.772150 | 16.158225 |
| runtime | MUL | L2 | 1.50 | 15053.76 | 11.090382 | 0.071892 | 11.162280 | 16.743420 |
| runtime | MUL | L3 | 1.50 | 15053.76 | 11.314137 | 0.071953 | 11.386090 | 17.079135 |
| runtime | MUL | L4 | 1.50 | 15053.76 | 11.583352 | 0.071989 | 11.655340 | 17.483010 |
| runtime | DIV | L0 | 1.50 | 15053.76 | 10.080401 | 0.071801 | 10.152200 | 15.228300 |
| runtime | DIV | L1 | 1.50 | 15053.76 | 10.349416 | 0.071986 | 10.421400 | 15.632100 |
| runtime | DIV | L2 | 1.50 | 15053.76 | 10.738895 | 0.072035 | 10.810930 | 16.216395 |
| runtime | DIV | L3 | 1.50 | 15053.76 | 10.965091 | 0.072095 | 11.037190 | 16.555785 |
| runtime | DIV | L4 | 1.50 | 15053.76 | 11.240921 | 0.072134 | 11.313060 | 16.969590 |
| fixed_l4 | MUL | L4 | 1.50 | 14513.76 | 11.403788 | 0.070406 | 11.474190 | 17.211285 |
| fixed_l4 | DIV | L4 | 1.50 | 14513.76 | 10.990455 | 0.070568 | 11.061020 | 16.591530 |
| exact_standalone | MUL | Exact | 2.00 | 7615.44 | 5.394875 | 0.039448 | 5.434323 | 10.868646 |
| exact_standalone | DIV | Exact | 2.00 | 29730.24 | 20.972375 | 0.138008 | 21.110380 | 42.220760 |
| exact_combined | MUL | Exact | 2.00 | 37401.12 | 26.085834 | 0.176597 | 26.262430 | 52.524860 |
| exact_combined | DIV | Exact | 2.00 | 37401.12 | 26.088963 | 0.176575 | 26.265540 | 52.531080 |

## Key comparisons

- Runtime OADM occupies 15053.76 um2, 59.75% less than exact combined divmul and 59.69% less than the sum of standalone exact MUL and DIV.
- Runtime L4 MUL energy is +60.86% versus standalone exact MUL and -66.71% versus exact combined MUL mode.
- Runtime L4 DIV energy is -59.81% versus standalone exact DIV and -67.70% versus exact combined DIV mode.
- Runtime configurability adds 3.72% area, 1.58% L4 MUL energy, and 2.28% L4 DIV energy over fixed L4.
- Selecting L4 instead of L0 raises runtime energy/op by 11.66% for MUL and 11.43% for DIV.

The runtime rows are the primary publication results. Fixed-L4 quantifies
runtime-configurability overhead. Exact standalone and combined rows are
baselines; the combined exact unit keeps both arithmetic units active because
its mode input only selects the output.
