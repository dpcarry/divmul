# Activity-based power workflow

This directory measures post-DC power with gate-level VCD activity and
PrimeTime PX. It does not modify or overwrite the existing vectorless reports.

Primary experiment: runtime-configurable P6 at 1.5 ns, measured independently
for MUL/DIV and L0-L4. Fixed-L4 P6 is included to quantify configuration
overhead. Exact standalone and combined DesignWare baselines are also included;
their existing timing-clean PrimeTime period is 2.0 ns.

The testbench supplies one deterministic, normalized FP32 operation per cycle.
It excludes zero, subnormal, Inf, and NaN so all designs see the same finite
workload. Twenty cycles warm the pipeline before the 10,000-cycle VCD window.
SDF propagation delays remain enabled to capture gate glitches. ModelSim timing
notifiers are disabled because setup/hold validity is established independently
by PrimeTime STA; this prevents simulator timing-check notifiers from corrupting
the activity waveform.

Run everything from this directory:

```bash
./run_all.sh
```

Run or repeat one scenario:

```bash
./run_sim.sh runtime_mul_l4
./run_pt.sh runtime_mul_l4
./summarize.py
```

The easy-to-find outputs are:

- `RESULTS.md`: formatted table and interpretation.
- `results.csv`: machine-readable switching, internal, leakage, total power,
  area, throughput, and energy/op.
- `reports/*.pt.power.rpt`: detailed PrimeTime reports.
- `logs/*.sim.log` and `logs/*.pt.log`: reproducibility and annotation logs.

Large `vcd/` and ModelSim `work/` artifacts are intentionally ignored by Git.
