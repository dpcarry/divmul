# Exact FP32 baseline at 1.5 ns

PrimeTime reads the emitted SDC and the hold-clean post-DC netlists from
`../../dc/exact_baseline/outputs_1p5_holdclean`. All three seven-cycle designs
accept one operation per cycle, giving 10.5 ns latency and 666.7 Mops/s
steady-state throughput.

| Design | Area (um2) | Setup slack (ns) | Hold slack (ns) | Timing |
|---|---:|---:|---:|---|
| Exact MUL | 7707.24 | +0.0047 | +0.0271 | MET |
| Exact DIV | 29797.20 | +0.0028 | +0.0271 | MET |
| Exact combined DivMul | 37568.16 | +0.0037 | +0.0271 | MET |

All setup and hold violation reports contain zero violating paths, and
`check_timing` succeeds for every design. Detailed reports are under
`reports_1p5_holdclean/`.

Activity-based power uses 10,000 continuously issued operations and full VCD
annotation at the same 1.5 ns period. The consolidated power, energy/op, area,
and OADM comparisons are in `../../activity_power/RESULTS.md` and
`../../activity_power/results.csv`.
