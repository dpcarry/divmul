# Activity-based PrimeTime power results

Power comes from gate-level VCD activity over 10,000 continuously issued
operations after 20 warm-up cycles. All runs use the same deterministic
uniform-random normalized FP32 encoding sequence. Runtime P6, fixed-L4, and
the exact DesignWare baselines all operate at a common 1.5 ns period, or
666.7 million accepted operations per second after pipeline fill.

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
| exact_standalone | MUL | Exact | 1.50 | 7707.24 | 7.245551 | 0.039844 | 7.285394 | 10.928091 |
| exact_standalone | DIV | Exact | 1.50 | 29797.20 | 27.774749 | 0.138166 | 27.912920 | 41.869380 |
| exact_combined | MUL | Exact | 1.50 | 37568.16 | 34.913433 | 0.177368 | 35.090800 | 52.636200 |
| exact_combined | DIV | Exact | 1.50 | 37568.16 | 34.919774 | 0.177303 | 35.097070 | 52.645605 |

## Key comparisons

- Runtime OADM occupies 15053.76 um2, 59.93% less than exact combined divmul and 59.86% less than the sum of standalone exact MUL and DIV.
- Runtime L4 MUL energy is +59.98% versus standalone exact MUL and -66.79% versus exact combined MUL mode.
- Runtime L4 DIV energy is -59.47% versus standalone exact DIV and -67.77% versus exact combined DIV mode.
- Runtime configurability adds 3.72% area, 1.58% L4 MUL energy, and 2.28% L4 DIV energy over fixed L4.
- Selecting L4 instead of L0 raises runtime energy/op by 11.66% for MUL and 11.43% for DIV.

The runtime rows are the primary publication results. Fixed-L4 quantifies
runtime-configurability overhead. Exact standalone and combined rows are
baselines; the combined exact unit keeps both arithmetic units active because
its mode input only selects the output.
