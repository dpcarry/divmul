# Runtime Direct Plane vs. Correction Chain

This isolated experiment asks what a runtime correction architecture buys over
the current runtime direct selected-level plane. It does not replace production
RTL or canonical paper CSV rows.

## Compared Designs

- oadm_runtime_opt: the existing untruncated direct selected-level plane.
- oadm_runtime_correction_common: L0 base plus level-controlled correction
  terms, accumulated through one common CSA tree.
- oadm_runtime_correction_tapped: explicit L0, L1, L2, and L3 accumulated
  taps selected at the output.

All designs expose the same x, y, level[1:0], and divide_mode ports. No
centered-residual truncation, complete-plane LSB truncation, coefficient
recalibration, or MUL half-step bias is used, so this comparison isolates
arithmetic organization rather than the later precision optimizations.

The correction RTL implements the mathematical piecewise-plane recurrence used
by the local diagnostic correction model. It is not a gate-for-gate port of the
AM-Lib OAM or PACE author implementations.

## Method

- Common FP32 normal-finite wrapper
- TSMC 65 nm typical CCS library
- 10 ns virtual clock and identical I/O delay/load constraints
- Combinational, no pipeline
- Hierarchy-preserving ordinary Design Compiler compile
- No flattening, ungrouping, or compile_ultra
- PrimeTime vectorless power under the existing common assumptions

bash run.sh rtl checks all four levels and both operations over 100,000 random
normalized FP32 pairs plus partition-boundary cases. bash run.sh gate checks
every synthesized netlist against its RTL and against the other two designs.
bash run.sh modes applies static case analysis to the same runtime netlists; it
does not re-synthesize fixed-level hardware.

Run python3 collect.py only after all required runs complete. It validates the
method and PASS markers before publishing ppa.csv, optional
mode_timing_power.csv, RESULTS.md, and sha256.json.
