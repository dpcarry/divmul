# Fixed-Level No-Pipeline Sweep

This sweep compares fixed L0-L4 OADM divmul implementations against the latest
runtime-configurable no-pipeline implementation. All designs use the same
`oadm_dm_pipe` datapath with `PIPE_MASK=0`, TSMC 65 nm typical CCS library,
Design Compiler `compile_ultra`, and PrimeTime at a 7 ns virtual-clock period.
The fixed designs retain the FP32 interface and runtime `divide_mode`; only the
approximation level is an elaboration-time constant.

## Results

| Design | PT area (um2) | Saving vs runtime | Critical path (ns) | PT power (mW) | Energy/op (pJ) |
|---|---:|---:|---:|---:|---:|
| Fixed L0 | 2667.60 | 72.63% | 4.2066 | 0.17756 | 1.24292 |
| Fixed L1 | 4672.80 | 52.06% | 5.2219 | 0.34278 | 2.39946 |
| Fixed L2 | 6242.41 | 35.96% | 5.2197 | 0.46599 | 3.26193 |
| Fixed L3 | 8037.36 | 17.54% | 5.5336 | 0.56678 | 3.96746 |
| Fixed L4 | 9663.47 | 0.86% | 5.4273 | 0.74971 | 5.24797 |
| Runtime L0-L4 | 9747.06 | baseline | 5.4129 | 0.70537 | 4.93759 |

All fixed configurations have positive setup slack at 7 ns, no max-delay
violations, and zero sequential cells. Power is vectorless PrimeTime power with
input static probability 0.5 and toggle rate 0.1; it is suitable for this
controlled comparison but is not activity-based signoff power.

## Reproduction

Run DC from `dc/nopipe_fixed`:

```bash
./run_sweep.sh
```

Run PrimeTime from `pt_dc/nopipe_fixed`:

```bash
./run_sweep.sh
```

Machine-readable data is in `results.csv`; detailed reports are under
`reports/oadm_fixed_l<N>_nopipe/`.

## Runtime mode-area ablation

The latest Q0.9 runtime-level no-pipeline design was also synthesized with
`divide_mode` tied separately to DIV and MUL. The standalone DIV-only design is
7147.79 um2 and the standalone MUL-only design is 5005.79 um2, compared with
9747.06 um2 for the runtime fused design. Their separate sum is 12153.58 um2,
so fusion saves 19.80% against these mode-matched blocks.

Because the fused implementation shares arithmetic, its area is best decomposed
by inclusion-exclusion: 2406.52 um2 (24.69%) common to both modes, 4741.27 um2
(48.64%) DIV-exclusive, and 2599.27 um2 (26.67%) MUL-exclusive. Therefore DIV
is equivalent to 73.33% of fused area if shared logic is attributed to DIV, but
only 48.64% is hardware added exclusively for DIV. See
`mode_area_ablation.csv` for the machine-readable decomposition.
