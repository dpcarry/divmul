# Pipeline-depth results

All configurations implement the same FP32 approximation family. Runtime
designs accept L0--L4 and MUL/DIV selections every cycle; fixed-L4 designs
tie only the level input. Power is vectorless and intended for relative
comparison, not workload-specific signoff.

## runtime

| Depth | Period (ns) | Cycles | Latency (ns) | DC area (um^2) | PT setup (ns) | PT hold (ns) | PT power (mW) | Energy/op (pJ) |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| NP | 7.00 | 0 | - | 10626.84 | 1.6234 | 0.1559 | 0.8416 | 5.891 |
| P2 | 4.00 | 2 | 8.00 | 11355.84 | 0.0141 | 0.0556 | 1.5544 | 6.218 |
| P3 | 2.80 | 3 | 8.40 | 11657.52 | 0.0069 | 0.0271 | 2.2512 | 6.303 |
| P4 | 2.20 | 4 | 8.80 | 13000.32 | 0.0069 | 0.0271 | 3.7033 | 8.147 |
| P5 | 1.80 | 5 | 9.00 | 14448.24 | 0.0055 | 0.0271 | 4.6411 | 8.354 |
| P6 | 1.50 | 6 | 9.00 | 15053.76 | 0.0054 | 0.0271 | 6.6065 | 9.910 |
| P7 | 1.50 | 7 | 10.50 | 15240.24 | 0.0047 | 0.0271 | 6.9452 | 10.418 |

## fixed_l4

| Depth | Period (ns) | Cycles | Latency (ns) | DC area (um^2) | PT setup (ns) | PT hold (ns) | PT power (mW) | Energy/op (pJ) |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| NP | 7.00 | 0 | - | 10556.64 | 1.6181 | 0.1551 | 0.8388 | 5.872 |
| P2 | 4.00 | 2 | 8.00 | 10849.68 | 0.0072 | 0.0969 | 1.5336 | 6.134 |
| P3 | 2.80 | 3 | 8.40 | 11334.96 | 0.0090 | 0.0494 | 2.2046 | 6.173 |
| P4 | 2.20 | 4 | 8.80 | 12524.04 | 0.0037 | 0.0499 | 3.6436 | 8.016 |
| P5 | 1.80 | 5 | 9.00 | 13967.64 | 0.0045 | 0.0396 | 4.6088 | 8.296 |
| P6 | 1.50 | 6 | 9.00 | 14513.76 | 0.0043 | 0.0396 | 6.5178 | 9.777 |
| P7 | 1.50 | 7 | 10.50 | 14682.24 | 0.0054 | 0.0396 | 6.8482 | 10.272 |

NP is combinational, so the table does not assign it a cycle latency.
P2--P7 accept one operation per clock after their pipelines fill.
A zero or slightly negative hold slack remains a violation until fixed; it
is not rounded into a pass in this summary.

## Interpretation

- Runtime P3 is the area/energy knee: 357.1 Mops/s, 11657.52 um^2, and 6.303 pJ/op.
- Runtime P6 is the best 1.5 ns point: 666.7 Mops/s with 9.00 ns fill latency and positive setup/hold slack.
- P6 dominates P7 at the same throughput, reducing area by 1.22%, power by 4.88%, and latency by 14.29%.
- At P6, runtime L0--L4 selection costs 3.72% area and 1.36% power relative to fixed L4.

These are pre-layout typical-corner results. Vectorless power is appropriate
for this controlled architectural sweep, while workload-specific publication
numbers should additionally use VCD/SAIF activity.
