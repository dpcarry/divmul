# Exact Reciprocal-Coefficient Shift-Add Ablation

Isolated experiment requested September 6. Scope is the current FIXED shared
DIV/MUL unit at each level, with live divide_mode. Not standalone DIV-only,
not runtime level selection, and not an input-truncation experiment.
Production RTL, previous reports, canonical CSVs, figures and LaTeX are untouched.

## Three Methods Per Level

- control: unchanged `plane_value[24:SCALE_DROP] * coefficient` RTL.
- binary: existing coefficient-bit-controlled shifted operands, balanced sum.
- csd: precomputed nonadjacent signed digits for each existing coefficient;
  select positive/negative bit masks by the original y partition, balance the
  two sums separately, then subtract. L0 implements 59 = 64 - 4 - 1.

All methods compute the same unsigned retained-operand product. The shift-add
stages use one extra guard bit and discard it only at the exact original
product boundary. No new approximation, midpoint change, MUL-bias change,
coefficient recalibration, or residual/w_n truncation change is introduced.
The CSD mask table is generated for the verified current coefficients only;
the generator checks the production top coefficient parameters. The generated
CSD RTL is not a generic replacement for arbitrary future coefficient overrides.

The original shared RTL is mechanically cloned for each alternative. Only
module names and the reciprocal-product expression change (including local
digit-selection wiring for CSD). Inspect binary.diff and csd.diff. No extra
submodule hierarchy is added around the new arithmetic. Balanced sums may
still be restructured by ordinary synthesis; no dont_touch is used.

## Verification and PPA

- Exhaustive retained W codes and all legal coefficients: L0 128x1, L1
  512x2, L2 512x4, L3 512x8. Testbench forces only the plane net for this
  stage check, including values not necessarily reachable from real inputs.
- Release the force, then compare complete FP32 outputs on the existing
  arithmetic-sharing inputs: 100000 uniform, 2304 boundaries, 2000 signed
  safe-exponent pairs. Both operation modes, 208608 checks per implementation.
- Functional gate check: 1000 uniform and all directed/signed pairs, both
  modes, 10608 checks per implementation. Not SDF simulation.
- Fresh DC/PT for ALL 12 points, including the four unchanged controls.
  Existing TSMC65 typical CCS 10 ns ordinary-compile flow; no flatten, no
  compile_ultra, no pipeline, 20 ps I/O, INVD0, 0.004 load, vectorless power.
- Collector verifies no sequential cells/black boxes, min/max constraints,
  check_timing, source hashes and simulation completion before publishing.

Run from research with licensed tool access:

```text
.venv/bin/python experiments/reciprocal_shiftadd/prepare.py
.venv/bin/python experiments/reciprocal_shiftadd/run.py all
.venv/bin/python experiments/reciprocal_shiftadd/collect.py
```

Do not regenerate sources or edit inputs during a run. Completion markers
are for resuming the same experiment, not reusing results after RTL changes.
`RESULTS.md`, `ppa.csv`, `accuracy.csv`, and `control_drift.csv` are published
only after the full experiment succeeds. No winner is promoted automatically.
