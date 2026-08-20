# Pipeline payload liveness optimization

This experiment removes provably redundant high bits from the inter-stage
payloads without changing the OADM equations, LUT contents, approximation
levels, FP32 interface, or pipeline schedule. The optimized P6 RTL matched the
NumPy reference bit-for-bit on 1,000 vectors spanning MUL/DIV and L0--L4.

## Runtime-configurable results

All values are pre-layout TSMC 65 nm typical-corner PrimeTime results. Power is
vectorless with input static probability 0.5 and toggle rate 0.1 per cycle.

| Design | Period (ns) | Cycles | Latency (ns) | PT area (um^2) | Setup (ns) | Hold (ns) | PT power (mW) | Energy/op (pJ) |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Original P6 | 1.50 | 6 | 9.00 | 15053.93 | 0.0054 | 0.0271 | 6.6065 | 9.9098 |
| Liveness P6 | 1.50 | 6 | 9.00 | 14206.14 | 0.0042 | 0.0271 | 6.5098 | 9.7647 |
| Original NP | 7.00 | 0 | combinational | 10626.96 | 1.6234 | 0.1559 | 0.84156 | 5.8909 |
| Liveness NP | 7.00 | 0 | combinational | 10262.24 | 1.6268 | 0.1559 | 0.81383 | 5.6968 |

The P6 payload optimization reduces area by 5.63% and vectorless power by
1.46% while retaining 1.5 ns throughput and positive setup/hold slack. Its DC
area consists of 10348.20 um^2 combinational and 3857.76 um^2 sequential area.

NP reduces area by 27.76% relative to optimized P6, but its critical path is
about 5.35 ns instead of a 1.5 ns initiation interval. Its vectorless average
power is lower partly because its activity period is 7 ns; energy/op is the
safer cross-frequency metric and falls from 9.7647 to 5.6968 pJ. NP is the
area/energy point; P6 is the throughput point. A P6 operation has six-cycle,
9.0 ns latency after which one result can complete every 1.5 ns.

## Same-flow PACE accuracy and throughput point

Fixed L3 remains a combined multiplier/divider but fixes the approximation
level at elaboration. It was selected because its divider accuracy is better
than both current OADM L4 and the PACE L4 values. NP and P6 expose the area/
energy and throughput ends of the same fixed-L3 architecture.

| Design | Function | Area (um^2) | Period (critical path), ns | Latency (ns) | Throughput (Mops/s) | Energy/op (pJ) | DIV MAE | DIV MRED | DIV RMSE |
|---|---|---:|---:|---:|---:|---:|---:|---:|---:|
| OADM fixed-L3 P6 | MUL + DIV | 12030.25 | 1.500 (1.48) | 9.000 | 666.7 | 8.8683 | 0.001445 | 0.001426 | 0.001791 |
| OADM fixed-L3 NP | MUL + DIV | 8590.02 | 7.000 (5.33) | 5.33 | 142.9 | 4.7529 | 0.001445 | 0.001426 | 0.001791 |
| PACE L4 replica | DIV only | 3205.08 | 3.430 (3.418) | 3.418 | 291.5 | 2.7114 | about 0.005 | about 0.005 | about 0.007 |

OADM fixed-L3 P6 sustains 2.29x the result rate of the unpipelined PACE L4
replica while its DIV MAE, MRED, and RMSE are lower. This is a throughput claim,
not an end-to-end delay claim: P6 latency is 9 ns versus PACE's 3.418 ns. OADM
does not beat PACE on area, latency, or energy/op. Average mW is not compared
across these rows because their activity periods differ. The comparison must
also state that OADM includes MUL mode, whereas PACE is divider-only. Raw paper
area/power from UMC 40 nm must not be mixed with these same-flow TSMC65 values.

## Rejected candidate

DIV-only operand isolation was bit-exact but was not retained. At P6 it raised
area from 14206.14 to 14279.58 um^2 and power from 6.5098 to 6.5168 mW. At NP it
reduced power to 0.79911 mW but raised area to 10276.66 um^2; this point was
dominated for the primary P6 target and still did not beat PACE L4 power.

Machine-readable values are in `liveness_results.csv`. DC outputs are under
`../../dc/pipeline_sweep/outputs_liveness`, and PT reports are under
`reports_liveness`.
