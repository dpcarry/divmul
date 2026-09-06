# PACE Figure 8 Reverse Reconstruction

Isolated experiment, 2026-09-05. No canonical results or author arithmetic
are changed. This tests a hypothesis inferred from the paper, the historical
RTL, and all Figure 8 curve vertices; it does not claim author confirmation.

## Evidence and Hypothesis

The earliest local tracked version, commit `b709b57`, already contains
`width_trunc` in `PACE/L3/top.v` and the shared wrapper. The wrapper takes the
upper `23-width_trunc` input fraction bits, the core uses this reduced
`MANTISSA_WIDTH`, and the reduced output fraction is zero-extended to FP32.
This is evidence about the earliest local snapshot, not proof of an untouched
author delivery or the exact Figure 8 experiment script.

The hypothesis is whole-datapath precision scaling: inputs, differences,
partial sums, CSA tree, and output fraction all shrink. The existing
parameterized `PACE/` core files are instantiated unchanged. There is no
new bias, coefficient fitting, or extra
error correction. This differs from the earlier experiment which explicitly
truncated a full-width z and retained wide downstream arithmetic.

For the exact baseline, `DW_fp_div` uses `sig_width=23-drop`, `exp_width=8`,
`ieee_compliance=0`, `faithful_round=0`, and round toward zero (RTZ). The
inputs discard low fraction bits; the output fraction is zero-extended.
The paper does not disclose all these DW parameters, so these remain explicit
reconstruction choices. RNE at the d18 endpoint is tested as an alternative.

**Completed:** all 47 configurations passed RTL/reference checks on 11,833
pairs and gate/RTL checks on 2,833 pairs each, plus DC/PT report checks.
See [RESULTS.md](RESULTS.md) for the key comparisons and interpretation.

There is also a structural endpoint check independent of the error fit:
L3 contains part-selects `[MANTISSA_WIDTH:6]`, requiring at least 6 retained
fraction bits, hence at most 17 removed bits. L4 contains
`[MANTISSA_WIDTH:7]`, requiring at least 7 retained bits, hence at most 16
removed bits. These are precisely the L3/L4 endpoints labeled in Figure 8.
A z-only truncation boundary with a retained 23-bit core does not have those
part-select limits. This materially strengthens the whole-width hypothesis.

## Experiment Matrix

- 33 PACE points: L1/L2 drops 0,4,8,12,14,15,16,17,18; L3 ends at 17;
  L4 ends at 16, matching the endpoints in the paper.
- 9 native-DW points at all nine drops, including the full-width control.
- 3 controls: DW d18 using the common normal-finite shell and normalized DW
  inputs; DW d18 using RNE; PACE L3 d17 using the historical wrapper.
- 2 further controls: L1/L2 d18 preserving `prior_original`'s addition
  structures, with only hard-coded 23/25-bit constants made parameter-aware
  and module names changed. See `delivered_changes.diff`.

These 47 points do not include our OADM or earlier z-only designs. All are
fixed cores without a runtime level port. Runtime behavior is not established
by matching Figure 8's error curves. Native DW and common-shell comparisons
are explicitly distinct; native DW is not relabeled as the common wrapper.

## Accuracy Verification

All 47 designs pass ModelSim RTL capture on 11,833 input pairs and match
integer references on every output bit. The test set contains 10,000 uniform
normalized pairs (matching the paper's sample count, but not its unknown seed),
1,733 targeted boundary pairs, and 100 signed safe-exponent pairs. Distributions
are reported separately. No exceptional/subnormal-input equivalence is claimed.

DW reference: exact integer division plus RTZ or ties-to-even rounding.
PACE reference: the paper's signed power-of-two terms, finite-width shifts,
and original normalization. This checks the new width configuration; it is
not formal exhaustive verification or a guarantee of original normalizer
correctness outside its assumed range.

`digitize.py` converts PDF page 15 to SVG with pdftocairo and extracts all
42 polyline vertices using the PDF coordinate transforms and axis ticks.
`paper_digitized.csv` contains plot-derived estimates, NOT author raw results.
Low-error values near zero are limited by coordinate rounding resolution.

The largest absolute RMSE difference between our 42 primary RTL points and
the paper's plotted vertices is about 0.000274. Endpoint checks:

| Point | Paper (vector-derived) RMSE | Local RTL RMSE |
| --- | ---: | ---: |
| PACE L3 d17 | 0.01573445 | 0.01569312 |
| Exact DW d18 | 0.01614526 | 0.01618777 |

The native/common DW d18 controls and the common/historical PACE L3 d17
controls are bit-identical on the tested set. The RNE alternative has RMSE
0.01237421, appreciably below the paper endpoint. This favors RTZ as a
reconstruction hypothesis, without proving a unique implementation.

`compare_hypotheses.py` additionally checks that the first 10,000 uniform
pairs in the earlier z-only RTL capture are identical to this experiment's
pairs. At the four maximum-drop PACE endpoints, respectively:

| Level/drop | Paper RMSE | Whole width | Only z truncated |
| --- | ---: | ---: | ---: |
| L1/d18 | 0.05116752 | 0.05089347 | 0.04910215 |
| L2/d18 | 0.03156189 | 0.03148753 | 0.02639810 |
| L3/d17 | 0.01573445 | 0.01569312 | 0.01062565 |
| L4/d16 | 0.00972510 | 0.00972141 | 0.00592564 |

Thus the difference between hypotheses is not caused by using 10k versus
100k inputs. `hypothesis_alignment.csv` contains all 33 matched PACE points.

## The 44.3 Percent Statement

The text says a 44.3% ADP reduction. The two plotted vertices instead yield:

    PACE L3 d17 ADP approximately 2482.52
    exact d18 ADP approximately 5607.02
    PACE / exact = 0.442751
    1 - PACE / exact = 0.557249

Thus the graphic agrees with "44.3% of the baseline ADP", which is about
55.7% reduction, not 44.3% reduction. This is a text/graphic inconsistency
suggested by the PDF geometry, not a claim about the authors' underlying
measurement files or intent. Raw coordinates, axis calibration, and the PDF
hash are in `paper_digitization.json`.

## PPA and Publication Gates

The local technology remains TSMC65 typical CCS, 10 ns virtual clock, 20 ps
I/O delays, INVD0 drive, 0.004 load, ordinary compile plus area optimization,
no flatten/ungroup/compile_ultra, and vectorless PT power. The paper uses
UMC40, so absolute PPA and exact percentage savings need not reproduce.
No mapping option is tuned to force the paper percentage.

`status.csv` records pending/report/gate status. The collector publishes
`ppa_accuracy.csv`, `fig8_reconstruction.pdf/png`, and `key_comparison.json`
only when all reports and the complete 2,833-vector-per-design gate miter
pass. A completed synthesis alone is not a verified published result.
Check final status files to distinguish ongoing and completed runs.

## Reproduction

From the research root with the licensed ModelSim/Synopsys environment:

```sh
.venv/bin/python experiments/pace_fig8_reverse/prepare.py
bash experiments/pace_fig8_reverse/run.sh rtl
.venv/bin/python experiments/pace_fig8_reverse/measure.py
.venv/bin/python experiments/pace_fig8_reverse/digitize.py
.venv/bin/python experiments/pace_fig8_reverse/compare_hypotheses.py
bash experiments/pace_fig8_reverse/run.sh ppa
bash experiments/pace_fig8_reverse/run.sh gate
MPLCONFIGDIR=/tmp/oadm-mpl .venv/bin/python experiments/pace_fig8_reverse/collect.py
```

The source SHA256 manifest is verified before publication.
The DW behavioral library is referenced locally, not copied into this folder.

## Source Provenance Limitation

All four current `PACE/` arithmetic files are unchanged relative to the earliest
local commit `b709b57`. However, direct comparison against `prior_original`
shows that L1/L2 in `PACE/` contain parameterized constants and CSA trees,
whereas the delivered copies use hard-coded 23/25-bit constants and ordinary
addition expressions. L2 also forms the reverse difference differently.
Consequently, the main curves must be described as the existing parameterized
implementation, not untouched delivered RTL. The two added structural
controls isolate this discrepancy at the most-truncated L1/L2 points.
