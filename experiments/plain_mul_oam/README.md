# Isolated Plain-Plane MUL / Original OAM Audit

This is a new ablation, not a replacement for optimized OADM MUL results.
It answers whether the unpruned direct midpoint plane and the downloaded
AM-Lib correction/partial-product implementation have comparable error and PPA.

## Implementations

- `plain.v`: fixed L0-L3, `w = ky*x + kx*y - kx*ky`. Full 24-bit normalized
  significands; exact cell midpoints represented as integers with scale 1/16.
  No centered-residual rewrite, residual bit removal, w_n bit removal,
  truncation-bias compensation, reciprocal coefficient, or rounding-error LUT.
  All product bits are retained through the plane sum (scale 2^31), followed
  only by normalization and truncation to the final FP32 fraction.
  Ordinary synthesis is allowed to simplify constant multiplication.
- Original OAM: unchanged `third_party/amlib_oam/L{0,1,2,3}/src` snapshot,
  documented upstream commit `cc3864baead2584a94f0e7111e8d73d923fa3b35`.
  No RTL changes to the original partial-product generators or CSA trees.
  This run hashes the local snapshot; it does not claim a fresh remote hash audit.
  Use the existing common-wrapper adapter instead of the original FP shell.
  Test the adapter against the original top on every RTL vector.
- Both are standalone fixed-level MUL, not runtime-configurable DIV+MUL.
  Area, delay and power include the common normal-finite FP32 boundary,
  not just the mantissa core. Special values, subnormals and exponent overflow
  are outside scope. Exponents in tests keep all outputs normal and finite.

## Error Audit

The numerical reference is the real product of the decoded FP32 inputs, not
the product of their bit-pattern integers and not an approximate RTL reference.
Binary64 represents this product exactly for the selected FP32 inputs.
`measure.py` independently checks it with Python exact fractions on all boundary
and signed inputs plus 2000 uniform inputs per level.

The direct-plane reference uses the independent centered identity
`kx*ky + ky*(x-kx) + kx*(y-ky)` with exact rational arithmetic on every vector.
It also checks `x*y - w = (x-kx)*(y-ky)`. This is a mathematical model only;
the DUT itself does not use centered residuals.

The independent OAM model reconstructs the original constant and the
complemented mantissa-tail partial-product rows as integers, without using the
RTL CSA tree. It retains one's-complement behavior, so the observed few-ULP
differences from an exact plane are not erased by the reference.
The model also checks the exact pre-packing difference from the ideal plane:
`plane - author = sum_j (2 - x[j] - y[j]) * 2^(-24-j)` for j=1..L,
where x[j], y[j] are the j-th fraction bits. This very small complement
deficit is separate from both the approximation-plane error and final packing.

Metrics: `MRED = mean(abs(actual-reference)/abs(reference))`,
`RMSE = sqrt(mean((actual-reference)^2))`. Also report mean error, MAE,
99th-percentile relative error and sampled maximum relative error.
Uniform, boundary-grid and signed/exponent datasets remain separate.
Seed 20260904; the same independent x/y samples are used at every level.

`audit_div.py` additionally rechecks the preceding 36 PACE difference-truncation
and 10 direct/OADM DIV configurations from their saved RTL outputs. It forms
error and relative error as integer ratios before conversion to binary64,
independently of the original floating division/subtraction metric calculation.
It neither changes those RTL implementations nor asserts Fig.8 fidelity.

## PPA and Reproduction

Reuse `dc/hier_compile_10ns/module.tcl` and
`pt_dc/canonical_refresh/pt.tcl`: 10 ns, TSMC65 typical CCS, ordinary compile,
hierarchy preserved, no compile_ultra, no pipeline, 20 ps I/O delays, INVD0
input drive, 0.004 output load and vectorless power. Raw reports stay here.
Min/max constraints, no sequential cells, no black boxes and no tool errors
must pass before `collect.py` publishes PPA.

From the research directory:

```bash
.venv/bin/python experiments/plain_mul_oam/prepare.py
bash experiments/plain_mul_oam/run.sh rtl
.venv/bin/python experiments/plain_mul_oam/measure.py
.venv/bin/python experiments/plain_mul_oam/audit_div.py
bash experiments/plain_mul_oam/run.sh ppa
bash experiments/plain_mul_oam/run.sh gate
.venv/bin/python experiments/plain_mul_oam/collect.py
```

Gate testing uses 1000 uniform pairs plus every boundary/signed pair (5304).
Generated inputs and large raw outputs/reports are ignored by git, retained
locally, and regenerable. No canonical CSV, paper, or original RTL is edited.
