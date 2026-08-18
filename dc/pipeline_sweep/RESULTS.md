# Pipeline-depth results

All configurations implement the same FP32 approximation family. Runtime
designs accept L0--L4 and MUL/DIV selections every cycle; fixed-level designs
tie the level input at elaboration. Power is vectorless and intended for relative
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

## fixed_l0

| Depth | Period (ns) | Cycles | Latency (ns) | DC area (um^2) | PT setup (ns) | PT hold (ns) | PT power (mW) | Energy/op (pJ) |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| NP | 7.00 | 0 | - | 2976.48 | 2.3985 | 0.1559 | 0.2093 | 1.465 |
| P2 | 4.00 | 2 | 8.00 | 3409.92 | 0.4354 | 0.0969 | 0.5121 | 2.049 |
| P3 | 2.80 | 3 | 8.40 | 3853.08 | 0.0092 | 0.0683 | 0.8972 | 2.512 |
| P4 | 2.20 | 4 | 8.80 | 4140.72 | 0.1862 | 0.0674 | 1.4959 | 3.291 |
| P5 | 1.80 | 5 | 9.00 | 4672.44 | 0.0865 | 0.0396 | 1.9807 | 3.565 |
| P6 | 1.50 | 6 | 9.00 | 5010.48 | 0.0076 | 0.0396 | 2.6662 | 3.999 |
| P7 | 1.50 | 7 | 10.50 | 5288.76 | 0.0055 | 0.0396 | 2.9927 | 4.489 |

## fixed_l1

| Depth | Period (ns) | Cycles | Latency (ns) | DC area (um^2) | PT setup (ns) | PT hold (ns) | PT power (mW) | Energy/op (pJ) |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| NP | 7.00 | 0 | - | 4917.96 | 2.0091 | 0.1559 | 0.3842 | 2.689 |
| P2 | 4.00 | 2 | 8.00 | 5479.20 | 0.0150 | 0.0969 | 0.7932 | 3.173 |
| P3 | 2.80 | 3 | 8.40 | 5976.00 | 0.0089 | 0.0683 | 1.3153 | 3.683 |
| P4 | 2.20 | 4 | 8.80 | 6470.64 | 0.0050 | 0.0674 | 2.1942 | 4.827 |
| P5 | 1.80 | 5 | 9.00 | 7404.12 | 0.0034 | 0.0396 | 2.9672 | 5.341 |
| P6 | 1.50 | 6 | 9.00 | 7905.24 | 0.0085 | 0.0396 | 4.0884 | 6.133 |
| P7 | 1.50 | 7 | 10.50 | 8167.32 | 0.0126 | 0.0396 | 4.4169 | 6.625 |

## fixed_l2

| Depth | Period (ns) | Cycles | Latency (ns) | DC area (um^2) | PT setup (ns) | PT hold (ns) | PT power (mW) | Energy/op (pJ) |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| NP | 7.00 | 0 | - | 6698.88 | 1.8615 | 0.1551 | 0.5503 | 3.852 |
| P2 | 4.00 | 2 | 8.00 | 7205.76 | 0.0108 | 0.0969 | 1.0485 | 4.194 |
| P3 | 2.80 | 3 | 8.40 | 8150.76 | 0.0060 | 0.0683 | 1.7067 | 4.779 |
| P4 | 2.20 | 4 | 8.80 | 8791.56 | 0.0068 | 0.0674 | 2.8039 | 6.169 |
| P5 | 1.80 | 5 | 9.00 | 10037.16 | 0.0039 | 0.0396 | 3.7278 | 6.710 |
| P6 | 1.50 | 6 | 9.00 | 10834.92 | 0.0038 | 0.0396 | 5.2142 | 7.821 |
| P7 | 1.50 | 7 | 10.50 | 11089.44 | 0.0059 | 0.0396 | 5.5566 | 8.335 |

## fixed_l3

| Depth | Period (ns) | Cycles | Latency (ns) | DC area (um^2) | PT setup (ns) | PT hold (ns) | PT power (mW) | Energy/op (pJ) |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| NP | 7.00 | 0 | - | 8820.00 | 1.6245 | 0.1551 | 0.6967 | 4.877 |
| P2 | 4.00 | 2 | 8.00 | 9501.12 | 0.0142 | 0.0969 | 1.3246 | 5.298 |
| P3 | 2.80 | 3 | 8.40 | 10078.56 | 0.0106 | 0.0494 | 2.0271 | 5.676 |
| P4 | 2.20 | 4 | 8.80 | 11072.16 | 0.0096 | 0.0512 | 3.3388 | 7.345 |
| P5 | 1.80 | 5 | 9.00 | 12210.84 | 0.0042 | 0.0396 | 4.1477 | 7.466 |
| P6 | 1.50 | 6 | 9.00 | 12852.36 | 0.0038 | 0.0396 | 5.9330 | 8.899 |
| P7 | 1.50 | 7 | 10.50 | 13137.84 | 0.0042 | 0.0396 | 6.2908 | 9.436 |

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

## Fixed-level 1.5 ns comparison

| Level | P6 area (um^2) | P7 area (um^2) | P6 power (mW) | P7 power (mW) | P6/P7 latency (ns) |
|---|---:|---:|---:|---:|---:|
| L0 | 5010.48 | 5288.76 | 2.6662 | 2.9927 | 9.00 / 10.50 |
| L1 | 7905.24 | 8167.32 | 4.0884 | 4.4169 | 9.00 / 10.50 |
| L2 | 10834.92 | 11089.44 | 5.2142 | 5.5566 | 9.00 / 10.50 |
| L3 | 12852.36 | 13137.84 | 5.9330 | 6.2908 | 9.00 / 10.50 |
| L4 | 14513.76 | 14682.24 | 6.5178 | 6.8482 | 9.00 / 10.50 |

## Interpretation

- Runtime P3 is the area/energy knee: 357.1 Mops/s, 11657.52 um^2, and 6.303 pJ/op.
- Runtime P6 is the best 1.5 ns point: 666.7 Mops/s with 9.00 ns fill latency and positive setup/hold slack.
- P6 dominates P7 at the same throughput, reducing area by 1.22%, power by 4.88%, and latency by 14.29%.
- At P6, runtime L0--L4 selection costs 3.72% area and 1.36% power relative to fixed L4.

These are pre-layout typical-corner results. Vectorless power is appropriate
for this controlled architectural sweep, while workload-specific publication
numbers should additionally use VCD/SAIF activity.
