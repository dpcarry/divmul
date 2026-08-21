# PrimeTime analysis of PACE DC netlists

This flow independently links and analyzes the combinational L1--L4 netlists
from `dc/pace_original`.  Setup/hold cycle checks are not meaningful because
PACE has no registers; the relevant timing metric is input-to-output critical
path delay.  Power is vectorless with identical activity assumptions per level.
Total cell area is taken from DC; PrimeTime reports the linked reference counts.

Run all levels with `make run`.

After the matching DC run, use `make paper-targets` to analyze the isolated
paper-delay-target netlists under `reports_paper_targets`.

The consolidated measurements and methodology notes are in `RESULTS.md`, with
the same values available in machine-readable form in `results.csv`.

The isolated timing-matched comparison against the paper's reported L1--L4
delays is documented in `PAPER_TARGET_RESULTS.md` and
`paper_target_results.csv`.
