# OADM DIV/MUL Python simulation

`oadm_divmul_sim.py` is an independent algorithm-level model of the
approximate multiplier and divider described by:

- `Multiplier2023_Optimally_Approximated_and_Unbiased_Floating-Point_Multiplier_with_Runtime_Configurability.pdf`
- `divider_multiplier(2).pdf`

For normalized FP32 mantissas `x,y in [1,2)`, level `n` divides each axis into
`2^n` intervals and selects their midpoints `a_n` and `b_n`.

```text
MUL_n = b_n*x + a_n*y - a_n*b_n
DIV_n = (a_n*b_n + b_n*x - a_n*y) / b_n^2
```

The divider numerator is evaluated through the shared Eq. (10)/(11)
relationship:

```text
w_0       = -z_0 + 3*x
delta_w_n = -delta_z_n + 2*x*sign(y[n]) / 2^(n+1)
```

The script checks this result against the direct divider equation for every
generated operand and level. The current hardware campaign covers L0--L3.

## Ideal paper model

```bash
cd research/python
python3 oadm_divmul_sim.py
```

## Current RTL-like 7-bit reciprocal coefficient

```bash
python3 oadm_divmul_sim.py \
  --coefficient-bits 7 \
  --out-dir results_rtl
```

This option only quantizes `1/b_n^2`. It does not reproduce every Q5.23
shift/truncation detail in the RTL.

## Outputs

- `divmul_accuracy_summary.txt`: readable per-level metrics
- `divmul_accuracy_summary.csv`: summary data for analysis
- `divmul_samples.csv`: every tested operand and result
- `accuracy_by_level.png`: MRED, relative RMSE, and MaxRE
- `function_sweep.png`: exact and approximate functions for a fixed `y`

Only the Python standard library and `gnuplot` are required. Use `--no-plots`
if gnuplot is unavailable.

## PACE-style exhaustive grid

The RTL-matched NumPy model evaluates the full Cartesian product of 10,000
uniform FP32 mantissas for x and y. It processes the 100,000,000 pairs per
mode/level in chunks and reproduces the current Q5.23 corrections, Q0.7 LUT,
product truncation, normalization, and FP32 packing.

```bash
cd research
.venv/bin/python python/pace_grid_accuracy.py \
  --points 10000 --chunk-size 128 \
  --out-dir python/results_pace_grid
```

Before using the exhaustive results, run `make crosscheck` from
`qsim_rtl/tb_pipeline_accuracy`. The checked-in campaign matched all 800
software predictions against the P6 RTL bit-for-bit.
