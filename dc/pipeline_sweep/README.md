# RAPID-style pipeline-depth synthesis sweep

This flow compares NP and balanced P2--P7 partitions for both the runtime L0--L4
implementation and the constant-tied fixed-L4 implementation. Both are generated
from `rtl/pipeline_sweep/oadm_dm_pipe.v`.

```bash
make nominal
./run_one.sh runtime p5 1.7
```

The nominal sweep uses estimated periods only as a first pass. Final Fmax is
determined by tightening each depth until setup no longer closes, followed by
PrimeTime analysis. Comparing only all variants at 1.5 ns would discard useful
area/latency/throughput Pareto points.

The NP top retains a clock port for common I/O-delay constraints but contains no
pipeline state after constant propagation. Its input-to-output delay is the
non-pipelined reference; P2--P7 register their final outputs.

For runtime P5--P7, the flow inserts `BUFFD0` only on the three direct
`level[2:0]` capture branches at cut0. DC's automatic hold fix otherwise leaves
these paths about 1 ps short in PT. The coefficient and correction fanout stays
unbuffered, and PrimeTime checks the original interface constraints.
