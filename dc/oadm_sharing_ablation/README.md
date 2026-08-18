# Mantissa-core sharing ablation

This experiment isolates arithmetic sharing from the common FP32 shell. For
each fixed level it synthesizes the current `oadm_core_fixed` in three forms:

- `mul`: `divide_mode` tied to zero, allowing DC to remove DIV-only logic;
- `div`: `divide_mode` tied to one, allowing DC to remove MUL-only logic;
- `fused`: runtime-selectable MUL/DIV core used by the current best design.

All variants use the same source, pipeline boundaries, TSMC 65 nm typical CCS
library, 1.5 ns clock constraint, and I/O assumptions. The conservative
separate baseline is `area(mul) + area(div)`; it does not include the output mux
that a usable combined separate design would also require.

```bash
bash ./run_all.sh
```

If the fused area is lower than the separate sum, the difference is arithmetic
core sharing rather than FP32 unpack, exponent, special-case, or normalization
sharing.

## Results

| Level | MUL-only area (um^2) | DIV-only area (um^2) | Separate sum (um^2) | Fused area (um^2) | Area saving |
|---|---:|---:|---:|---:|---:|
| L0 | 2017.80 | 2620.80 | 4638.60 | 3777.12 | 18.57% |
| L1 | 3858.48 | 5309.64 | 9168.12 | 6818.40 | 25.63% |
| L2 | 5553.36 | 8017.92 | 13571.28 | 9793.44 | 27.84% |
| L3 | 7209.00 | 9650.88 | 16859.88 | 11575.08 | 31.35% |
| L4 | 8355.96 | 10933.20 | 19289.16 | 12968.64 | 32.77% |

All 15 runs meet setup and hold under the common 1.5 ns DC constraint. The
complete values, including vectorless DC power estimates, are in `results.csv`.
Power is supporting evidence only because these runs do not use mode-matched
SAIF/VCD activity.

## Interpretation

The FP32 shell is absent from every variant, so the 18.57--32.77% reduction
cannot come from sharing unpacking, exponent handling, special cases, or output
normalization. It comes from keeping one runtime-selectable instance of the
common mantissa datapath instead of two mode-specialized copies. The increasing
saving with approximation level is consistent with sharing more correction,
CSA, shift/add, and pipeline-register structure.

This establishes architectural sharing caused by the formulas' common hardware
shape. It does not establish that the saving is specifically caused by a direct
implementation of paper Equations 10 and 11: the current best RTL does not
explicitly implement that transform. Such a claim would require the separate
Eq.10/11 implementation and its own ablation comparison.

## Comparison boundary

The percentages above must not be described as the old full-FP32 percentages
with the FP32 shell subtracted. This experiment re-elaborates the mantissa core
as a new synthesis top, exposes all 29 output bits, and uses matched pipelined
MUL-only and DIV-only variants of the same RTL. The earlier `separate_area`
baseline instead combines the full pipelined OAD divider with the smaller,
combinational upstream AM-Lib OAM multiplier. Synthesis can also prune logic
differently when the core is embedded behind the FP32 normalizer.

For example, at L4 the earlier full-design comparison is
`12256.56 + 4364.64` versus `14887.44 um^2`, or 10.43% saving. This matched-core
ablation is `10933.20 + 8355.96` versus `12968.64 um^2`, or 32.77% saving. The
main change is the matched pipelined MUL-only reference (8355.96 rather than the
4364.64 upstream combinational multiplier), not merely removal of FP32 logic.
