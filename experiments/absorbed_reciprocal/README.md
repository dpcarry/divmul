# Absorbing the reciprocal into the centered DIV plane

Isolated branch: `experiment/absorbed-reciprocal`. No production RTL, manuscript,
or canonical results are replaced. This experiment is DIV-only, not DIV/MUL
sharing. All designs use the same normalized-finite FP32 wrapper and the
existing 10 ns combinational, ordinary-compile, hierarchy-preserving DC/PT flow.
Power is vectorless, with probability 0.5 and toggle rate 0.1 per 10 ns.

## Arithmetic

Let r and s be the original centered residuals after their original residual
truncation. Let kx and ky be the midpoints and c=C/2^B the reciprocal coefficient.
The original path is c*T_Dw(kx*ky + ky*r - kx*s). The absorbed path is

    a*r - b*s + t, with a=c*ky, b=c*kx, t=c*kx*ky.

All three coefficients are calculated offline and selected by the cell index.
There is no hardware multiplication after the sum. Residual drops stay 18 for
L0 and 16 for L1-L3. No new free per-cell fitting is introduced.

The original W truncation is removed, not commuted through multiplication.
Consequently, this is NOT bit equivalent to the original implementation.
The exact-absorption version IS algebraically equivalent to the original
residual-truncated plane multiplied by its coefficient WITHOUT W truncation.
The integer model checks this identity on every evaluated input.

## Groups

- control: original selected RTL, original coefficients and both truncations.
- unabsorbed: original arithmetic structure and coefficients, but no W truncation.
  This has exactly the same arithmetic output as the exact absorbed version.
- exact: original reciprocal coefficients absorbed without coefficient rounding;
  no W truncation. This isolates the cost of moving the multiplication.
- inherited: original coefficients absorbed and rounded to shorter slope and
  constant representations. Slope fractional precision is screened from 2 to 12.
- calibrated: reciprocal coefficient alone is recalibrated for the no-W-truncation
  path on 65,536 training pairs, at the original B; absorption and precision
  screening then follow the inherited group. This is a separate calibration
  ablation, not a pure hardware rewrite.

At the original reciprocal precision, recalibration selected the original
integers at all four levels. Duplicate candidates are recorded in aliases.json
and are not synthesized twice. There are 16 distinct designs including the
four unabsorbed no-W controls.

Nearest coefficient rounding uses floor(x+0.5). No residual bias is added.
Screening uses 65,536 different pairs. Select the lowest slope precision meeting
both original MRED and RMSE, or the lowest RMSE candidate if none qualifies.
The fallback is explicitly marked in selected.json. Final validation uses the
previous paired 200k random set, boundary grids, signed cases, cell edges and
diagonals, plus a fresh independent 200k set not used for selection.

## Reproduction

Use the research Python environment with NumPy:

    python experiments/absorbed_reciprocal/experiment.py
    python experiments/absorbed_reciprocal/run.py all
    python experiments/absorbed_reciprocal/check_math.py
    python experiments/absorbed_reciprocal/check_fpd2d.py
    python experiments/absorbed_reciprocal/collect.py

The generator initially imports frozen test vectors from the sibling research
worktree, then saves local copies. It does not write to that worktree. RTL tests
compare every output bit against the integer model. Gate simulation checks the
synthesized netlist, without SDF; PT separately checks timing. These are sampled
regressions, not formal equivalence or exhaustive error guarantees. Before a
result is published all RTL, DC, PT and gate stages must pass.

`RESULTS.md` is the complete report; `comparison.csv` compares with the original
controls and `absorption_ablation.csv` compares same-output implementations.
`ARITHMETIC.md` explains coefficient encodings. `ERROR_NOTES.md` documents the
separate rational checks and mantissa-domain worst-case calculation.
Baseline references are read from the original sibling worktree; baseline.csv
records its absolute root and baseline_report_sha256.json freezes report hashes.
