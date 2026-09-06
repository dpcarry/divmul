# OADM Input-Precision Three-Group Experiment

Completed 2026-09-05: all 46 configurations passed 101,833 RTL/reference
vectors and 11,833 gate/RTL vectors each, plus DC/PT report checks. The gate
run finished at 15:51:09 with zero errors. See [RESULTS.md](RESULTS.md) for
the full three-group table and unchanged-output comparisons.

Isolated DIV-only fixed-level experiment, 2026-09-05. No canonical RTL,
paper, or PPA result is replaced. Run status is in `status.csv`; final
results are published only after complete RTL/reference, DC/PT, and gate
checks. This is not a runtime DIV/MUL or sharing experiment.

## Exactly Three Groups

1. Control: the current source-specialized fixed DIV RTL, unchanged.
2. Mask: clear the low input fraction bits before the existing core;
   keep its declared widths, residual/w_n truncation, and coefficients.
3. Narrow: use the same retained inputs and arithmetic behavior as Mask,
   but explicitly reduce residual, product, and summation widths. Existing
   residual/w_n truncation and coefficients are still unchanged.

There is no experiment disabling residual truncation. There is no new bias,
coefficient recalibration, output-precision change, or midpoint approximation.
The common FP32 normal-finite wrapper is unchanged in all three groups.
It passes sign/exponent processing through the existing contract; truncation
only changes fraction data entering the plane. Exceptional and subnormal
inputs, exponent saturation, and full IEEE-754 compliance are out of scope.

The matrix contains four controls and 21 matched Mask/Narrow pairs: retained
fraction bits b=3..8 for L0, and b=4..8 for L1-L3 (46 total configurations).
All retain enough bits to preserve the selected-level midpoint index and
the midpoint residual sign bit. L0 uses residual/w_n drops 18/18; L1-L3 use
16/16. Reciprocal coefficients are the current 59; 83/42; 203/136/97/73;
and 227/182/149/124/105/90/78/68, at their original Q0.7/Q0.8 scales.

## Why Mask and Narrow Must Match

The current residual slice already discards low fraction bits. Thus Mask
with b>=5 at L0 or b>=7 at L1-L3 must match Control exactly. This is checked
in the RTL testbench, not merely assumed from error statistics.

For this matrix, each selected midpoint is aligned to the input truncation
grid. Consequently input masking followed by residual truncation is exactly
equivalent to residual truncation with effective drop max(R,23-b). It is not
an independent approximation mechanism, although its RTL expression may map
differently. The configured R and w_n drop remain unchanged as requested;
E describes the combined effect of masking and the configured residual slice.

For Narrow, define E=max(23-b, residual_drop). The exact retained residual
needs 23-level-E signed bits. Midpoints are exact unsigned 5-bit integers
at scale 1/16. Products use full signed widths; multiplication remains exact
for the retained operands. The fixed scale factors are restored by wiring.

Each plane contribution has at least S=min(15,E-4) trailing zero bits. The
sum is calculated without those exact zeros. The original consumer uses
only plane[24:wn_drop], so unused upper bits are removed using equivalent
modulo-2^25 arithmetic. The coefficient-product input retains the original
bit slice and scale; no additional information is discarded there. Restored
zeros in generated connections are wires, not requests for extra arithmetic.

These transformations add no error relative to Mask. PPA differences between
Mask and Narrow measure the effect of explicit width and expression choices
under this synthesis flow, not a new mathematical approximation. The tool
may already eliminate some or all redundant bits in Mask.

## Verification and Measurement

- RTL: 101,833 pairs per design: 100,000 common uniform normalized pairs,
  1,733 boundary pairs, and 100 signed safe-exponent pairs.
- Independent reference: integer midpoint subtraction, floor residual
  quantization, integer plane construction, existing coefficient and packing.
- Mask/Narrow miter and high-b/Control miter run on every RTL vector.
- All four controls are checked against the previous 100,000-pair actual
  RTL capture in `div_truncation_figure`.
- Gate: 11,833 pairs per design (all targeted cases plus first 10,000 uniform
  pairs), compared bit-for-bit against RTL. No SDF; timing is checked by PT.
- DC/PT: existing common TSMC65 typical CCS, 10 ns, 20 ps I/O, INVD0 drive,
  0.004 load, ordinary compile plus area optimization. No flatten, ungroup,
  compile_ultra, pipeline, or activity-based power changes.
- Collector checks identical normalized SDCs, no timing violations,
  check_timing success, no sequential/black-box cells, and source/report hashes.

`accuracy.csv` separates uniform_100k, uniform_10k, boundaries, and signed_safe.
`ppa_accuracy.csv` uses uniform_100k only. Sample maxima are not proven
worst-case bounds. `paired_comparison.csv` directly compares all three groups.

## Reproduce

From the research root with the licensed tools available:

PPA completion markers are only for resuming an unchanged-source run. Use a
fresh experiment/run directory after RTL changes; do not reuse old completion
markers as evidence for newly edited RTL.

```sh
.venv/bin/python experiments/oadm_input_width/prepare.py
bash experiments/oadm_input_width/run.sh rtl
.venv/bin/python experiments/oadm_input_width/measure.py
bash experiments/oadm_input_width/run.sh ppa
bash experiments/oadm_input_width/run.sh gate
.venv/bin/python experiments/oadm_input_width/collect.py
```
