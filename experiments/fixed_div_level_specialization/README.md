# Fixed DIV Level Specialization

This isolated experiment removes the runtime `level` port from the fixed OADM
DIV plane while preserving every arithmetic parameter and the common FP32
normal-finite wrapper. It measures elaboration-time specialization under the
10 ns, no-pipeline, hierarchy-preserving ordinary-`compile` campaign.

The experiment keeps the selected level as an elaboration-time parameter but
removes it from the plane's runtime input interface. Residual truncation,
complete-plane LSB truncation, reciprocal coefficients, normalization, and the
FP32 wrapper are unchanged.

## Results

| Level | Residual / plane LSBs truncated | Old area (um2) | Specialized area (um2) | Area change | Delay (ns) | Setup slack (ns) | Power (mW) |
|---|---:|---:|---:|---:|---:|---:|---:|
| L0 | 18 / 18 | 764.28 | 516.96 | -32.36% | 1.75780 | 8.22220 | 0.0246830 |
| L1 | 16 / 16 | 1215.72 | 1130.40 | -7.02% | 2.70339 | 7.27661 | 0.0661543 |
| L2 | 16 / 16 | 1560.24 | 1484.64 | -4.85% | 2.73617 | 7.24383 | 0.0750523 |
| L3 | 16 / 16 | 1915.92 | 1865.52 | -2.63% | 3.08149 | 6.89851 | 0.0834119 |

All rows use TSMC65 typical CCS, a 10 ns input-to-output constraint, no
pipeline, the common normal-finite FP32 wrapper, hierarchy-preserving ordinary
`compile`, `set_max_area 0`, `optimize_netlist -area`, and vectorless PT power.
These combinational tops have no register-to-register hold paths; min-delay
reports contain no violations, so hold slack is recorded as not applicable.

## Verification

- RTL equivalence against the current fixed L0-L3 tops: 20,002 vectors per
  level, zero mismatches.
- Gate miter against all four synthesized netlists: 20,002 vectors per level,
  zero mismatches and zero simulator errors.
- PT `check_timing` succeeded for all four levels, with no max- or min-delay
  violations.
- Machine-readable comparison: `results/summary.csv`.

This directory is an isolated validated replacement candidate. It does not
overwrite the current RTL or official PPA tables.
