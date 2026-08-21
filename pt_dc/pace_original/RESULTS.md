# PACE original-architecture TSMC 65 nm results

This flow synthesizes and analyzes four separate fixed-level implementations of
the authors' combinational PACE RTL. It does not add a clock, registers,
pipeline stages, or a runtime level selector. Design Compiler confirms zero
sequential cells in every implementation.

## Results

| Level | MAE | MRED | RMSE | Cell area (um^2) | PT critical delay (ns) | PT power (mW) |
|---|---:|---:|---:|---:|---:|---:|
| L1 | 0.028430772 | 0.026249720 | 0.045278918 | 956.88 | 2.42133 | 0.120517 |
| L2 | 0.015264065 | 0.015003911 | 0.022409632 | 1532.16 | 3.15801 | 0.183356 |
| L3 | 0.005963918 | 0.005667551 | 0.009362468 | 2175.12 | 3.53738 | 0.269089 |
| L4 | 0.003866091 | 0.003834884 | 0.006131750 | 3196.43 | 3.65836 | 0.373903 |

All four designs meet the common 10 ns virtual-clock input-to-output constraint.
The reported delay is the positive data-arrival time of the worst PT path, not
the 10 ns constraint and not a pipeline latency. The corresponding worst slacks
are 7.55867, 6.82199, 6.44262, and 6.32164 ns for L1 through L4. Empty
`pt.max_delay.violations.rpt` report bodies confirm that there are no max-delay
violations.

## Method and scope

- RTL accuracy uses 10,000 deterministic random positive normalized FP32 input
  pairs per level and compares against real-number division. Every run reports
  zero X/Z outputs.
- Area and cell counts come from the linked TSMC 65 nm typical CCS netlists.
- PT power is vectorless averaged power with input static probability 0.5 and
  toggle rate 0.1. It is suitable for an internally consistent level sweep, but
  it is not activity-based energy per division.
- The original wrapper targets normalized finite operands and does not implement
  complete IEEE-754 behavior for NaN, infinity, zero, or subnormal inputs.
- The 10 ns constraint intentionally avoids forcing aggressive timing-driven
  restructuring. A paper comparison must use the same library, corner,
  constraints, and power activity assumptions for every baseline.

Machine-readable values are in `results.csv`. Detailed reports are under
`reports/L1` through `reports/L4`.
