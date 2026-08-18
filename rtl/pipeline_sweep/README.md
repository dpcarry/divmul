# Pipeline-sweep RTL

This directory isolates the RAPID-style pipeline-depth experiment from the
published seven-cycle baseline in `rtl/fixed`. The arithmetic equations and
Q5.23/Q0.8 truncation are unchanged.

`oadm_dm_pipe` supports runtime `divide_mode` and runtime levels L0--L4.
`oadm_dm_fixed_pipe` ties the level at elaboration so the same source can also
produce per-level minimum-PPA implementations.

## Logical segments

| Bit | Segment |
|---:|---|
| 0 | Base plane and correction 1 |
| 1 | Correction 2 |
| 2 | Corrections 3 and 4 |
| 3 | Shared CSA accumulation |
| 4 | Runtime reciprocal coefficient selection and scaling |
| 5 | MUL/DIV result selection |
| 6 | FP32 normalization and output selection |

`PIPE_MASK[i] = 1` inserts a register after segment `i`. The initial balanced
partitions are defined by the experiment flow, not hard-coded into the
arithmetic module. P7 uses `7'h7f` and is cycle-equivalent to the baseline.

The experiment includes NP and P2--P7. NP is a combinational reference; P2--P7
all register the final output and accept one transaction per cycle after fill.

Measured DC/PrimeTime results and the resulting Pareto interpretation are in
`../../dc/pipeline_sweep/RESULTS.md`.
