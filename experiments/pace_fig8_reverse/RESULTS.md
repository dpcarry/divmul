# Figure 8 Reconstruction Findings

Completed 2026-09-05: all 47 configurations passed 11,833 RTL vectors against
integer references and 2,833 gate-versus-RTL vectors per configuration.
The gate run finished at 13:59:42 with zero errors. DC/PT reports passed
the collector's constraints, mapping, and timing checks. Gate simulation
is functional without SDF; timing evidence comes separately from PT.

## What the evidence supports

The best-supported reconstruction is whole-datapath precision scaling, not
truncation of a full-width difference followed by full-width arithmetic.
With `d` removed fraction bits, `b = 23-d` input fraction bits enter the
parameterized PACE core; its difference, partial sums, and output also use
the reduced width. The result is packed back into a 32-bit FP container by
zero-extending its fraction. This does not recover the discarded precision.

Two independent observations support this interpretation:

1. All 42 reconstructed accuracy points closely follow the PDF curves;
   the largest absolute RMSE discrepancy is 0.00027405.
2. The existing L3/L4 part-selects require at least 6/7 fraction bits,
   matching the paper's maximum drops of 17/16 exactly.

The existing parameterized PACE cores were not edited. However, their L1/L2
CSA structures differ from `prior_original`. The two delivered-structure
controls preserve ordinary additions and produce identical tested outputs,
but different PPA. Matching accuracy therefore does not uniquely identify
the author's synthesized implementation. See `delivered_changes.diff`.

## The key local comparison

The following values come from this experiment's DC/PT reports and 10,000
common uniform normalized input pairs. Publication/verification status is
recorded in `status.csv`; the collector releases `ppa_accuracy.csv` only
after the full gate regression passes.

| Implementation | RMSE | Area (um2) | Delay (ns) | ADP (um2 ns) | Power (uW) |
| --- | ---: | ---: | ---: | ---: | ---: |
| PACE L3, d17, current common shell | 0.01569312 | 708.12 | 1.76892 | 1252.61 | 32.091 |
| DW exact, d18, native shell, RTZ | 0.01618777 | 714.96 | 2.99424 | 2140.76 | 28.650 |
| DW exact, d18, common shell, RTZ | 0.01618777 | 626.76 | 2.99115 | 1874.73 | 28.716 |
| PACE L3, d17, historical shell | 0.01569312 | 704.88 | 1.67613 | 1181.47 | 30.848 |

At these approximately matched, not identical, RMSE points:

- Current PACE versus native DW: 41.49% lower ADP.
- Current PACE versus common-shell DW: 33.18% lower ADP.
- Historical-shell PACE versus native DW: 44.81% lower ADP.

The final percentage's proximity to the paper's prose is not proof of an
exact reproduction. Shell choices change the ratio. PACE is not superior
in every metric: it consumes more power here, and has more area than the
common-shell DW control. Its ADP advantage comes primarily from delay.

This experiment uses TSMC65, 10 ns, ordinary compile and area optimization,
without flatten, ungroup, or compile_ultra. The paper uses UMC40. Native DW
has its own shell; only the explicitly labeled common-shell comparison
uses the same shell. All these instances are fixed-level implementations;
this experiment does not establish author runtime-configurable PPA.

## What was wrong with the earlier interpretation

The earlier z-only experiment retained wide downstream arithmetic. On
identical 10,000 inputs, its L3/d17 RMSE is 0.01062565, whereas the paper is
approximately 0.01573445 and the narrowed-core RTL is 0.01569312. Thus that
experiment cannot be used as the reconstructed Figure 8 curve.

The earlier small-integer exact baseline also retained a different quotient
precision. It is a valid separate design point, not evidence that Figure 8
used that baseline. Here the exact reconstruction uses an actual
`DW_fp_div` at reduced precision. It remains an exact divider for its
retained operands and selected output rounding; truncation does not remove
the divider algorithm.

## The 44.3% wording

Reading the original PDF vector coordinates at PACE L3/d17 and exact/d18:

    PACE ADP  ~= 2482.52
    Exact ADP ~= 5607.02
    PACE / exact ~= 44.2751%
    ADP reduction ~= 55.7249%

Thus the figure supports approximately **44.3% of baseline ADP**, not a
**44.3% reduction**. The prose and plotted coordinates appear inconsistent.
These are digitized estimates, not the author's raw result files; the
underlying measurement data are needed to resolve that discrepancy.

## Artifacts and limits

- `fig8_reconstruction.pdf/png`: paper vector-derived curves beside local curves.
- `fig8_local.pdf/png`: local ADP-RMSE curves and measured PACE frontier.
- `accuracy_alignment.pdf/png`: all 42 paper/local error points.
- `ppa_accuracy.csv`: verified local results, including controls.
- `paper_digitized.csv`: plot-derived values, not raw author data.
- `hypothesis_alignment.csv`: same-input whole-width versus z-only comparison.
- `model_checks.json`, `rtl.log`, `gate.log`: functional verification evidence.
- SHA manifests: source, experiment inputs, netlists, constraints, and reports.

The accuracy reconstruction is strong evidence, not author confirmation.
The original random seed, exact synthesis setup, DW settings, and complete
truncated experiment sources remain unconfirmed. No bias was introduced or
coefficient fitted in this reconstruction. No canonical OADM/PACE result
CSV or production RTL was overwritten.
