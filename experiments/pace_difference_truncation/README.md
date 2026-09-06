# PACE difference truncation: equation-based reconstruction

Completed 2026-09-04: 36 fresh DC/PT points passed; 103,869 RTL/model
vectors and 4,869 RTL/gate vectors per design passed with zero mismatches.
The four zero-truncation controls match the original cores on all test inputs.
Maximum measured delay across this campaign is 3.33890 ns under the 10 ns
constraint. Gate warnings concern unconnected unused output ports; no
simulator errors were reported.

Results: `ppa_accuracy.csv` (36 points), `comparison.csv` (PACE/OADM/direct
baselines), `RESULTS.md`, `pace_adp_rmse.pdf`, and `comparison_adp_rmse.pdf`.
Both plots also have PNG versions. Original sources and consumed reports
are fingerprinted; none of the old input-truncation PPA is relabeled here.

## Paper-to-RTL contract

The local PACE.pdf (ACM TODAES 30(2), Article 21, January 2025) describes:

- Section 5.3, Eq. (27): form z=x-y and replace it by z_b before coefficient
  application. This is NOT equivalent to independently truncating x and y.
- Sections 4.3/5.1, Eq. (26), Table 3 and Figs. 5-6: y's leading fraction
  bits select signed power-of-two partial sums, with L3/L4 compensation.
- Section 5.1: partial-sum shifts are arithmetic right shifts.
- Section 6.1: scan removed-bit counts 0,4,8,12,14,15,16,17,18; compare
  accuracy and ADP. Section 6.2 does not apply this extra truncation.

Figure 8's labeled truncation endpoints are L1/L2:18, L3:17, L4:16.
Plots use those count ranges (33 points). The full Cartesian scan also
includes L3:18 and L4:17/18 as three explicitly labeled stress tests, not
additional configurations claimed from the paper. The fixed 23-bit partial
sums here allow those stress tests without invalid part-selects; the original
variable-width cores require at least 6 fraction bits at L3 and 7 at L4.

This reconstruction retains all 23 input fraction bits and the full y-based
selection. It computes a full signed difference BEFORE truncation:

    z_full = fraction_x - fraction_y
    z_quant = (z_full >>> DROP) <<< DROP

The latter is signed floor quantization, with 0 <= z_full-z_quant < 2^DROP
in integer units. The paper gives a positive binary example, not a complete
signed RTL specification. Floor is an explicit implementation convention,
consistent with the arithmetic-right-shift hardware description; it is not
claimed to be the author's verified negative-input implementation.

For integer fraction words X,Y and d removed bits, the exact retained
difference is:

    (X-Y) >> d = (X >> d) - (Y >> d) - (X_low < Y_low)

where X_low and Y_low are the low d bits. Input pre-truncation omits this
borrow term. For example, x=1.25 and y=1.1875 at b=3 retained fraction bits
give T(x-y)=0 but T(x)-T(y)=0.125. The retained borrow dependency explains
why difference truncation cannot simply reuse the old narrow-input netlist.

All negative coefficient terms use -z_quant, not a separately truncated
y-x. A guard sign bit represents +1 exactly when z_quant=-1. This avoids
overflow at x=1, y near 2 after coarse floor truncation. No input midpoint
bias, coefficient recalibration, or input pre-truncation is introduced.

Even DROP=0 uses this common z/-z boundary, replacing the author's separate
x-y and y-x expressions for L2-L4. It is bit-exact but may map differently.
For example, the fresh L2 DROP=0 control maps to 1486.44 um^2 versus 1551.60
um^2 for the old separate-difference wrapper. The new sweep therefore uses
fresh DROP=0 controls, not historical PPA as its zero-truncation endpoint.

`prepare.py` mechanically copies the existing author arithmetic and inserts
only that boundary. `author_changes.diff` exposes every difference. Original
sources are unchanged and fingerprinted in `author_sha256.json`. The original
partial sums, per-term arithmetic shifts, CSA tree, and output normalization
are retained. Output fraction width remains 23; no additional quotient-width
truncation is introduced.

## Verification

`run_check.sh` checks each DROP=0 reconstruction against its original author
core on all inputs. `measure.py` separately models Table-3 signed partial sums
and FP32 packing, compares every output bit, and checks the truncation error
bound. It reports equation-level errors separately from packed-output errors,
and counts pre-normalization results outside the original normalizer's
[0.5,2) range rather than silently changing the author normalizer.

Inputs include 100,000 uniform pairs shared with the previous independent
audit, targeted low-bit borrowing/cell boundaries/endpoints, and signed inputs
with safe normal exponents. Targeted vectors and uniform statistics are kept
separate. Gate tests include every targeted vector plus 1,000 random pairs.

## PPA scope

The local flow remains the shared normal-finite FP32 shell, TSMC65 typical
CCS, 10 ns, 20 ps I/O delays, INVD0 drive, 0.004 output load, ordinary compile
and optimize_netlist -area, no flatten/ungroup/compile_ultra, vectorless PT.
All 36 configurations are fresh DC/PT runs; no old input-truncation PPA is
substituted. Only fully verified points may enter the collected PPA table.

These are fixed maximum-level author cores, matching our existing local
DIV-only comparison. The paper describes runtime-configurable hardware and
UMC40nm measurements. This work reconstructs the stated difference-truncation
mechanism; it does not establish bit-identical reproduction of Fig. 8's
unavailable experiment RTL, signed conventions, runtime boundary, or PPA.

The old `input_trunc_bias/audit` 338.40/708.12 um^2 points are input-truncation
experiments and are not evidence for this mechanism.

## Combined comparison

`comparison.csv` also joins the four source-specialized OADM DIV points and
six direct-integer-divider controls from `div_truncation_figure/comparison.csv`.
Those ten existing PPA points are rechecked against raw reports, not resynthesized.
The direct controls retain b=3/5/7 input fraction bits with/without half-step
input compensation, and floor the quotient to b+2 fractional bits. They are
not verified reproductions of PACE's DesignWare FP32 baseline. All accuracy
rows use the same 100,000 uniform pairs. The combined CSV has 46 rows, with
the three extra PACE stress points explicitly marked and omitted from plots.

For a paper caption, describe these as Eq. (27) difference-truncation
reconstructions of fixed PACE cores under the local 10 ns flow. The point
labels denote removed difference fraction bits. Do not label the plots as
replicated Figure 8 measurements or imply that output-width/runtime details
of the author's unpublished experiment scripts have been verified.

## Commands

```sh
python3 experiments/pace_difference_truncation/prepare.py
bash experiments/pace_difference_truncation/run_check.sh
.venv/bin/python experiments/pace_difference_truncation/measure.py
.venv/bin/python experiments/pace_difference_truncation/normalizer_audit.py
bash experiments/pace_difference_truncation/run_ppa.sh
bash experiments/pace_difference_truncation/run_check.sh gate
.venv/bin/python experiments/pace_difference_truncation/collect.py
```
