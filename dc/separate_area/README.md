# Separate Divider + OAM Multiplier Area Comparison

This flow compares each fixed-level shared divmul against the sum of:

- `oad_div_lN`: the current pipelined FP32 design with `divide_mode` tied high;
- `mul_lN`: the original combinational OAM multiplier from AM-Lib.

The OAM source is intentionally not vendored because its repository does not
declare a license. Clone the source and run:

```bash
git clone https://github.com/skycrapers/AM-Lib.git /tmp/AM-Lib
AM_LIB_ROOT=/tmp/AM-Lib make run
```

The benchmark source used when this flow was created was commit
`cc3864baead2584a94f0e7111e8d73d923fa3b35`.

All blocks use the same TSMC 65 nm typical library and the same 1.5 ns DC
timing budget and I/O assumptions. Area is directly useful as an implementation
comparison, but this is not an equal-latency comparison: the divider is a
7-cycle pipeline while the upstream OAM multiplier is combinational and has
less complete IEEE-754 special-case behavior.

## Results

All separately synthesized blocks met the 1.5 ns DC constraint. Positive saving
means that the shared divmul is smaller than the sum of separate blocks.

| Level | Div only (um2) | OAM mul only (um2) | Separate sum (um2) | Shared divmul (um2) | Shared saving |
| --- | ---: | ---: | ---: | ---: | ---: |
| L0 | 4228.56 | 1320.84 | 5549.40 | 5602.32 | -0.95% |
| L1 | 7282.44 | 2162.52 | 9444.96 | 9025.20 | 4.44% |
| L2 | 10067.40 | 3014.28 | 13081.68 | 12053.52 | 7.86% |
| L3 | 11987.64 | 3727.44 | 15715.08 | 14380.56 | 8.49% |
| L4 | 13187.52 | 4364.64 | 17552.16 | 15804.36 | 9.96% |

Machine-readable values are in `results.csv`.

## Bit-exact fused-scaler results

After replacing the separate LUT and generic shift-add scaler with a fixed-level
constant scaler, the 20,000-cycle L0-L4 FP32 traces remained byte-identical to
the baseline. The separately synthesized dividers were regenerated with the
same optimization before recalculating sharing savings.

| Level | Fused div only (um2) | OAM mul only (um2) | Separate sum (um2) | Fused shared (um2) | Shared saving |
| --- | ---: | ---: | ---: | ---: | ---: |
| L0 | 3897.36 | 1320.84 | 5218.20 | 5275.08 | -1.09% |
| L1 | 6667.20 | 2162.52 | 8829.72 | 8494.92 | 3.79% |
| L2 | 9477.00 | 3014.28 | 12491.28 | 11567.88 | 7.39% |
| L3 | 11056.32 | 3727.44 | 14783.76 | 13439.16 | 9.10% |
| L4 | 12256.56 | 4364.64 | 16621.20 | 14887.44 | 10.43% |

Machine-readable values are in `results_fused.csv`.
