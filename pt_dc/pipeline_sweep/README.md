# PrimeTime pipeline-depth analysis

This flow analyzes the DC netlists from `dc/pipeline_sweep` with their emitted
SDC constraints. It reports setup, hold, QoR area, and vectorless power for the
runtime L0--L4 and fixed-L4 NP/P2--P7 configurations.

```bash
make all
./run_one.sh runtime p6
```

Power uses the same probability (`0.5`) and toggle rate (`0.1` transitions per
clock period) on every data input, modeling one accepted operation per cycle.
These estimates support relative architectural comparison; VCD/SAIF activity is
still required for workload-specific publication results.
