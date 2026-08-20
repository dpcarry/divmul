# No-pipeline OADM experiment

This branch evaluates the runtime-configurable FP32 OADM without pipeline
registers. The arithmetic equations, reciprocal LUT, approximation levels,
and FP32 behavior are unchanged from the optimized `rapid` branch.

The top-level `oadm_dm_nopipe` has no clock port. It fixes every logical cut
to combinational bypass, and synthesis must report zero sequential area.

Run the flow in order:

```sh
make -C qsim_rtl/nopipe run
make -C dc/nopipe
make -C pt_dc/nopipe
```

Timing is input-to-output combinational delay against a virtual clock, not a
pipeline setup/hold result. Power is vectorless at 0.1 toggles per operation;
energy/op is calculated as power times the virtual activity period.

## TSMC 65 nm results

The dedicated no-clock synthesis contains 2,821 leaf cells and zero sequential
cells. PrimeTime reports no max-delay violation under the 7 ns virtual-clock
constraint.

| Design | Area (um^2) | Critical path (ns) | Latency | Throughput at reported period | Power (mW) | Energy/op (pJ) |
|---|---:|---:|---:|---:|---:|---:|
| Runtime no-pipeline | 9509.05 | 5.3575 | 5.3575 ns combinational | 142.9 Mops/s at 7 ns | 0.67781 | 4.7447 |
| Runtime optimized P6 | 14206.14 | about 1.49/stage | 6 cycles = 9 ns | 666.7 Mops/s at 1.5 ns | 6.5098 | 9.7647 |

Relative to optimized P6, removing the pipeline reduces area by 33.06% and
vectorless energy/op by 51.41%. It gives up 78.57% of the sustained throughput
when operated at the conservative 7 ns report period. The measured critical
path corresponds to a theoretical pre-layout ceiling of about 186.7 Mops/s,
but a new synthesis at a tighter constraint would be required before claiming
that operating point.

The dedicated no-clock top is also 7.34% smaller than the earlier parameterized
runtime NP result (10262.24 um^2). The equations and output bits are unchanged;
the ModelSim wrapper equivalence test passed 1,000 vectors across MUL/DIV and
L0--L4.

Machine-readable values are in `pt_dc/nopipe/results.csv`. PrimeTime reports
are under `pt_dc/nopipe/reports`, and the reproducible DC netlist and constraints
are under `dc/nopipe/outputs`.
