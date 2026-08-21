# PACE author-RTL TSMC65 synthesis

This flow synthesizes the author-provided fixed L1--L4 combinational FP32 PACE
implementations.  It does not add a clock, registers, or pipeline stages.

The default 10 ns virtual-clock budget avoids forcing PACE toward the 1.5 ns
OADM pipeline target.  Critical delay is read from the reported data arrival
time.  The paper does not disclose every synthesis constraint, so these are
same-environment TSMC65 results rather than a reproduction of its UMC40 values.

Run all levels with `make run`.

Run the four levels using periods matched to the delays reported in the PACE
paper with `make paper-targets`. These isolated results are written under
`outputs_paper_targets` and do not overwrite the default 10 ns sweep.
