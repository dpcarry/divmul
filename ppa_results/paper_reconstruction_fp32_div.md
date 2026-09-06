# PLSAD Paper-Derived FP32 Reconstruction

The current PLSAD points reconstruct Eq. (14) and Figs. 4, 6, 7, and 12 of Wu
et al., TCAS-I 2024. The core selects one of eight shift-add planes from the
three most-significant divisor-fraction bits. In accordance with the paper's
FP32 description, both input fractions are truncated to ten bits. Four Q1.14
addends are combined by an LOA: the most-significant `m` bits are added
exactly, the lower `15-m` bits are ORed, and the two boundary carries encode
the cases of at least two and exactly four asserted input bits. Negative
shifted terms use one's complement, as stated by the paper.

All local rows use the shared normal-finite FP32 wrapper, TSMC65 typical CCS,
a 10 ns virtual clock, no pipeline, hierarchy-preserving ordinary `compile`,
and vectorless PrimeTime activity (`P=0.5`, toggle rate `0.1`). No flattening
or `compile_ultra` is used.

| Design | Local MRED | Paper MRED | Area (um^2) | PT delay (ns) | PT power (uW) | Reproduction status |
| --- | --- | --- | ---: | ---: | ---: | ---: |
| PLSAD-derived m=4 | 6.0174% | 7.10% | 552.60 | 1.648 | 18.58 | Formula/architecture reconstruction; paper error not exactly matched |
| PLSAD-derived m=6 | 1.3559% | 1.21% | 611.28 | 1.722 | 21.64 | Formula/architecture reconstruction; paper error not exactly matched |
| PLSAD-derived m=8 | 0.8732% | 0.85% | 659.88 | 1.738 | 24.14 | Accuracy-matched paper-derived reconstruction |

The local MRED values use the same 10,000 normal-finite `[1,2)` FP32 operand
pairs as the OADM rows in `plsad_vs_oadm_hier_compile_10ns.csv`. All three RTL
points match an independent bit-level PLSAD model, and all three synthesized
netlists pass 20,000 gate-level vectors against RTL. DC and PT report no
setup/max-delay or min-delay violations.

No author PLSAD RTL was available locally or found in the public searches.
The paper does not specify every RTL-level sizing and carry detail sufficiently
to explain the remaining m=4 and m=6 MRED differences. Therefore these results
must not be described as author RTL or as an exact reproduction. The paper's
45 nm PPA is also not mixed with the local 65 nm PPA; its reported MRED is used
only as an accuracy cross-check.

Current RTL: `rtl/paper_repro/plsad_prior_fp32_paceio.v`.
Accuracy regression: `qsim_rtl/plsad_repro/run_common_accuracy.sh`.
Gate regression: `PLSAD_ONLY=1 qsim_rtl/hier_compile_gate/run_gate_miters.sh`.

The earlier exact-adder Eq. (14) points in
`rtl/paper_repro/paper_fp32_dividers.v` used the superseded explicit-flatten/
`compile_ultra` flow and omitted the paper's LOA. Their 1202.76 and 1994.40
um2 areas are historical reconstruction data, not current PLSAD PPA.
