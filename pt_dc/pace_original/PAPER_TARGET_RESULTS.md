# PACE paper-delay-target experiment

This experiment preserves the original fixed-level, combinational PACE RTL and
targets the L1--L4 delays reported in Table II of the 2024 PACE paper. It uses
the local TSMC 65 nm typical CCS library, not the paper's UMC 40 nm library.

| Level | Paper area (um^2) | Paper delay (ns) | TSMC65 area (um^2) | TSMC65 PT delay (ns) | PT slack (ns) | TSMC65 PT power (mW) |
|---|---:|---:|---:|---:|---:|---:|
| L1 | 1978 | 2.11 | 1005.84 | 2.10011 | 0.00989 | 0.289623 |
| L2 | 2756 | 2.48 | 1559.52 | 2.47274 | 0.00726 | 0.427728 |
| L3 | 3275 | 2.93 | 2194.91 | 2.92176 | 0.00824 | 0.625344 |
| L4 | 4590 | 3.43 | 3205.08 | 3.41799 | 0.01201 | 0.790489 |

PrimeTime reports `MET` for every level, `check_timing` succeeds, and the
max-delay violation report bodies are empty. Design Compiler reports zero
sequential cells, confirming that no pipeline was introduced.

## Interpretation

The timing-matched areas remain below the paper values, so the earlier small
TSMC65 areas were not caused by the loose 10 ns constraint or missing pipeline
registers. Absolute standard-cell area is library-dependent and is not portable
between UMC 40 nm and TSMC 65 nm. The paper does not provide enough library and
synthesis-detail information to reproduce its absolute area from a different
PDK. The valid comparison is therefore among designs synthesized with this same
TSMC65 flow, not the raw cross-PDK area ratio.

The PT power values use static probability 0.5 and toggle rate 0.1. The paper's
activity assumptions are not disclosed, so its power column must not be divided
by this column or presented as a measured improvement.

PACE is a fixed-level divider-only architecture. The current OADM P6 design is a
six-stage, one-result-per-cycle, runtime-level FP32 divider/multiplier. Its area
therefore includes pipeline registers, runtime selection, the multiply mode,
and the shared arithmetic. A direct OADM-area/PACE-area ratio does not isolate
divider quality. OADM's defensible hardware claims come from same-flow
ablations: shared OADM versus matched separate multiplier and divider blocks,
and throughput/latency/area tradeoffs across pipeline depths.

Machine-readable values are in `paper_target_results.csv`. Netlists and DC
reports are in `../../dc/pace_original/outputs_paper_targets`; PT reports are in
`reports_paper_targets`.
