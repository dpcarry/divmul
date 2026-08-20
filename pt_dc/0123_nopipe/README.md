# Q0.7 L0-L3 no-pipeline PrimeTime

Run `./run_all.sh` after `dc/0123_nopipe/run_all.sh`. The final summary is
written to `results.csv`.

All designs use the TSMC 65 nm typical CCS library and a 7 ns virtual clock.
The delay column is the actual PrimeTime input-to-output critical path, not the
7 ns constraint. Power is vectorless at a 0.1 input toggle rate per 7 ns, and
energy/op is therefore power multiplied by that common activity period.

| Configuration | Area (um^2) | Critical path (ns) | Power (mW) | Energy/op (pJ) |
|---|---:|---:|---:|---:|
| Runtime L0-L3 | 7707.25 | 5.1732 | 0.51510 | 3.60570 |
| Fixed L0 | 2625.48 | 4.2087 | 0.17383 | 1.21681 |
| Fixed L1 | 4558.68 | 5.1234 | 0.32649 | 2.28543 |
| Fixed L2 | 5948.64 | 5.2941 | 0.43244 | 3.02708 |
| Fixed L3 | 7691.04 | 5.3035 | 0.56534 | 3.95738 |

Every design has zero sequential cells, passes `check_timing`, and has no
max-delay violation at 7 ns. Compared with the Q0.7 P6 runtime design, removing
the pipeline reduces area from 11961.17 to 7707.25 um^2 (35.56%) but changes
the initiation interval from 1.5 ns to at least the 5.1732 ns combinational
delay. Compared with the earlier Q0.9 L0-L4 no-pipeline runtime design, Q0.7
L0-L3 reduces area by 20.93%, delay by 4.43%, and vectorless power by 26.98%.
