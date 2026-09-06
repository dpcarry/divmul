# Independent measurement and comparison audit

PACE CONFIGURATION WARNING: `audit_pace_l1_b5` and `audit_pace_l3_b6`
truncate INPUT mantissas before subtraction. They are not validated
implementations of the difference truncation in PACE Section 5.3 Eq. (27).
The 338.40 and 708.12 um^2 points must not be cited as a reproduction of that
mechanism. See `../../pace_difference_truncation/README.md` for the separate
paper-equation reconstruction. The old data are preserved with this warning.

Completed 2026-09-04. This is an isolated follow-up, not a replacement of
official PPA tables. No numerical measurement bug was found in the checks
below. The earlier comparison was insufficient to establish superiority
over prior work, and the observed advantage is distribution-dependent.

## Independent accuracy checks

`prepare.py` generates 275,536 new inputs per design: 100,000 uniform
significand pairs, 100,000 log-uniform pairs, all 65,536 pairs on an
eight-fraction-bit grid, and 10,000 signed inputs with safe normal exponents.
`run.sh` captures actual RTL output words for 19 designs. `measure.py` decodes
those words and calculates errors against floating-point multiplication or
division, without importing the original integer models or error helpers.
It also reports errors against an FP32-rounded reference.

All seven direct baselines matched an independently reconstructed reference
bit-for-bit on all 275,536 inputs. Original source/netlist hashes (18 entries)
were checked unchanged. See `independent_checks.json`, `independent_accuracy.csv`
and `rtl.log`. Sample maxima are not proven worst-case error bounds.

Uniform-input MUL b=3 has measured RMSE 0.078083. Independently, continuous
uniform input quantization predicts 0.077940: with delta=2^(-b), product-error
variance is 7*delta^2/18 - delta^4/144. An untruncated L0 midpoint plane has
RMSE 1/12 = 0.083333 because it omits the centered-residual product.
Thus this particular accuracy ordering does not require a simulator bug.
The current truncated OADM MUL L0 measures 0.083376 on the new uniform set.

## Missing comparator: truncated PACE

The local PACE.pdf, Section 6.1 / Figure 8, compares truncated PACE with a
truncated DesignWare divider. Section 6.2 separately compares prior designs
without truncation. Comparing our tuned reduced-width core only against
full-width PACE does not reproduce the Figure 8 comparison.

`pace_truncated.v` instantiates the existing author mantissa cores at widths
5 (L1) and 6 (L3), removing 18 and 17 input fraction bits respectively, with
the same common normal-finite FP32 wrapper. These are local reproductions,
not the paper's UMC40nm PPA values. The local flow uses TSMC65 typical CCS,
10 ns, ordinary compile, no flatten/compile_ultra, and vectorless power.

Fresh held-out uniform-input accuracy and completed local PPA:

| DIV design | MRED (%) | RMSE | Area (um^2) | Delay (ns) | Power (uW) |
| --- | ---: | ---: | ---: | ---: | ---: |
| Truncated PACE L1, 5 fraction bits | 3.09291 | 0.0510742 | 338.40 | 1.22324 | 13.6435 |
| Direct input b3 + half-step | 3.27518 | 0.0427881 | 419.04 | 2.12277 | 16.7326 |
| Truncated PACE L3, 6 fraction bits | 1.13381 | 0.0156296 | 708.12 | 1.76892 | 32.0910 |
| Direct input b5 + half-step | 0.82739 | 0.0107682 | 714.60 | 3.93083 | 34.8688 |

PACE L1 is smaller, faster, lower-power and has lower MRED than direct b3,
but higher RMSE. PACE L3 is much faster at similar area to direct b5, but
has higher MRED/RMSE. Neither pair establishes universal dominance.
Only two truncated PACE configurations were tested; this is not its full
accuracy-PPA frontier. Direct DIV also limits quotient fractional precision
to b+2 bits; it is not a full-precision IEEE FP32 division core.

Both new netlists passed 20,000-vector RTL/gate comparisons (`gate.log`).
Raw DC reports/netlists and PT timing/power reports are under `dc/` and `pt/`.
Power reports contain no sequential or black-box contribution. All power
numbers remain vectorless estimates, not workload-driven post-layout energy.

## Distribution counterexample

On inputs with exactly eight fraction bits (remaining bits zero):

| MUL design | MRED (%) |
| --- | ---: |
| Direct b7 + half-step | 0.27171 |
| OADM L2 | 0.19276 |
| Direct b9 + half-step | 0.13562 |
| OADM L3 | 0.04814 |

The ordering reverses. Unconditional half-step reconstruction shifts even
already-exact grid inputs upward. Its uniform-input benefit is not a
distribution-independent accuracy guarantee. This does not imply that
OADM compensation is distribution-independent either.

## Area boundary check

The synthesized SDCs for direct MUL b3 and current OADM MUL L0 differ only
in the generation-date comment. Both total areas include the common wrapper:

- OADM L0: wrapper 208.08 + plane 246.60 + remaining core 61.92 = 516.60 um^2.
- Direct b3: wrapper 196.56 + multiplier 162.36 + remaining core 40.68 = 399.60 um^2.

The wrapper's nested adder area is already included and must not be added
again. Identical wrapper RTL need not map to identical area because connected
core signals permit different constant propagation. This check found no
missing FP32 shell in the direct baseline's reported area.

## Reproduction

Run from the research root, with the existing ModelSim/Synopsys environment:

```sh
python3 experiments/input_trunc_bias/audit/prepare.py
bash experiments/input_trunc_bias/audit/run.sh
python3 experiments/input_trunc_bias/audit/measure.py
bash experiments/input_trunc_bias/audit/ppa.sh
bash experiments/input_trunc_bias/audit/run.sh gate
```

Conclusion: retain the measured uniform-input result against current OADM,
but withdraw any extrapolation to all prior work. Paper-facing comparisons
need matched accuracy metrics, truncated prior-work configurations, and
input-distribution sensitivity, not merely matching FP32 port widths.
