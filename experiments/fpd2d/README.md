# FPD2D versus STDM DIV-only

Isolated comparison requested 2026-09-15. Run from `research/`.

## Source and arithmetic

Source: Di Meo et al., *Low-Power High Precision Floating-Point Divider With
Bidimensional Linear Approximation*, TCAS-I 72(2), 882-895, 2025.
DOI: https://doi.org/10.1109/TCSI.2024.3447830.
Local PDF: `../../FP2D2.pdf`. Page 889 (PDF page 8) contains Table I and Fig. 6.

Seven Table I configurations: (nx,ny,t) = (2,4,19), (2,8,18), (2,8,17),
(4,8,17), (8,8,17), (8,8,16), (8,8,15).

Fig. 6 triples are transcribed by row k (y index), column h (x index), using
the zero-based labels printed in the figure. Real coefficients are A/4, B/4,
and C/128. A and C are nonnegative; B is negative. The design uses unsigned
local coordinates relative to the lower-left tile corner, not centered residuals.
Index extraction and low-bit truncation follow Fig. 5 and Section IV:

```
u = (fraction_x mod 2^(23-log2(nx))) >> t
v = (fraction_y mod 2^(23-log2(ny))) >> t
P = (A*u+B*v)*2^(t-25) + C*2^-7
```

The hardware uses fraction precision F=max(25-t,7). Six gated, shifted partial
rows (three per coefficient) plus the aligned constant are fused with a
carry-save tree and a final carry-propagating adder. Negative B rows use one's
complement plus exact carry-in correction. These internal carry-ins implement
exact signed arithmetic; they are not approximation bias compensation. No
coefficient-product bits are dropped. Only t input-local-coordinate bits are
removed. The final narrow mantissa normalizer zero-pads low output fraction
bits to FP32 width. The common normal-finite wrapper supplies sign/exponent
processing. These are our paper-derived RTL reconstructions, not author RTL;
the paper does not prescribe a unique compressor grouping or gate netlist.

## Coefficient discrepancy and independent reconstruction

The printed 8x8 table does not reproduce Table I accuracy. Two conspicuous
examples using the figure's zero-based indices are:

- h=6,k=0: printed (4,-6,233); Algorithm 1 gives (4,-6,223).
- h=2,k=1: printed (4,-4,128); Algorithm 1 gives (3,-4,144).

`audit_coefficients.py` independently solves the paper's mixed integer linear
program for all 64 tiles, with 20x20 points per tile and the same coefficient
steps. The 400 absolute-error slack variables remain continuous; A/B/C are
integers. It minimizes relative absolute error at the untruncated training
points, not error on our evaluation vectors. HiGHS certifies every tile to
relative MIP gap <=1e-9. The solver differs from the authors' Matlab legacy
branch-and-bound solver, and is identified as an independent implementation.

All differences and per-tile objective values are recorded in
`coefficient_audit.json`. Three additional `_milp` designs use that table;
the original printed table and all original reconstructions are preserved.
Differences from Table I are reported, never hidden or tuned away against the
validation dataset. A matching MRED alone does not prove original RTL equivalence.

## Comparison boundary

- STDM controls are the four currently reported specialized DIV-only tops in
  `../fixed_div_level_specialization/specialized_rtl.v`: residual/plane drops
  18/18,16/16,16/16,16/16; C=59 for L0. They receive no new input truncation.
- Every candidate and control uses `PACE/common/FP_DIV_WRAPPER_32.v`.
- Fresh synthesis for every point with `dc/hier_compile_10ns/module.tcl`:
  TSMC65 typical CCS, 10 ns virtual clock, zero uncertainty, 20 ps I/O delays,
  INVD0 driver, 0.004 output load, ordinary compile, optimize_netlist -area,
  hierarchy preserved, no flatten and no pipeline.
- PrimeTime uses `pt_dc/canonical_refresh/pt.tcl`, with input probability 0.5
  and toggle rate 0.1 per 10 ns. Paper 28 nm numbers are not compared directly
  or scaled to 65 nm. This is pre-layout, vectorless power.
- Only normal finite FP32 results are in scope. No exception/subnormal or
  overflow/underflow correctness claim is made.

## Validation and publication

Each design runs through ModelSim RTL simulation, DC, PT, then functional
gate simulation. Each phase has 333072 vectors: 200000 uniform normalized
mantissa pairs, all 65536 pairs of t=15 retained codes with zero low bits,
the same codes with all-one low bits, and 2000 safe signed/exponent cases.
The complete retained domain for every coarser t is included by the t=15 grid.
FPD2D RTL and gates must match an independent integer equation model; all
gate outputs, including STDM controls, must match their RTL outputs bitwise.
Gate simulation is functional without SDF. Timing evidence comes from PT.

Published accuracy uses complete packed FP32 outputs and a double-precision
quotient reference on the same input vectors for all designs. Uniform and
directed distributions are reported separately. Sample maximum error is not
a formal maximum. PPA collection requires no sequential/black-box cells,
successful timing checks, no timing violations, and identical exported SDC.
The common `set_max_area 0` is an optimization objective, not a feasible area
limit; its expected area violation is not treated as a timing failure.
`control_drift.csv` checks the fresh controls against the existing campaign.

```
.venv/bin/python experiments/fpd2d/prepare.py
.venv/bin/python experiments/fpd2d/audit_coefficients.py
.venv/bin/python experiments/fpd2d/run.py all
FPD2D_VARIANT=milp .venv/bin/python experiments/fpd2d/run.py all
.venv/bin/python experiments/fpd2d/collect.py
```

Do not regenerate inputs or RTL during a run. `sources.json` and
`sources_milp.json` lock the inputs; `evidence_sha256.json` records final reports.
Canonical results CSVs and the manuscript are not updated by this experiment.
