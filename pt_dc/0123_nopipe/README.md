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

## DIV/MUL sharing ablation

The mode-tied netlists allow DC to remove logic used exclusively by the other
operation. Inclusion-exclusion estimates the shared area as
`A_div + A_mul - A_fused`.

| Configuration | Fused (um^2) | DIV-only (um^2) | MUL-only (um^2) | Shared (um^2) | Fusion saving vs separate sum |
|---|---:|---:|---:|---:|---:|
| Runtime L0-L3 | 7707.25 | 5171.76 | 3728.51 | 1193.02 | 13.40% |
| Fixed L3 | 7691.04 | 5177.52 | 3873.59 | 1360.07 | 15.03% |

For runtime L0-L3, the fused area decomposes into 3978.74 um^2 DIV-exclusive,
2535.49 um^2 MUL-exclusive, and 1193.02 um^2 shared. For fixed L3, the
corresponding values are 3817.45, 2513.52, and 1360.07 um^2. These values are
synthesis-level inclusion-exclusion estimates: independently optimized
netlists need not map logically identical functions to identical cells.

## PACE L4 comparison

The fairer functional comparison uses fixed-L3 DIV-only OADM, not the fused
DIV/MUL block. Both rows below are combinational FP32 wrappers synthesized and
analyzed with the same TSMC 65 nm typical library.

| Design | Area (um^2) | Critical path (ns) | Power (mW) | Vectorless energy/op (pJ) |
|---|---:|---:|---:|---:|
| PACE L4 | 3196.43 | 3.6584 | 0.37390 at 10 ns | 3.7390 |
| OADM Q0.7 fixed-L3 DIV-only | 5177.52 | 5.2463 | 0.42385 at 7 ns | 2.9670 |

OADM is 61.98% larger and 43.41% slower, but its vectorless energy estimate is
20.65% lower. The raw average-power values are not directly comparable because
the vectorless toggle periods differ; energy/op removes the dominant activity-
frequency mismatch. On the available accuracy runs, OADM fixed-L3 Q0.7 also
has lower MAE, MRED, and RMSE than the locally reproduced PACE L4.
