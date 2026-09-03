# Paper-Derived FP32 Divider Reconstructions

All entries use the same combinational FP32 wrapper, TSMC65 DC flow, 10 ns
virtual clock, and vectorless PrimeTime activity (`P=0.5`, toggle rate `0.1`).
The wrapper handles sign/exponent and finite special cases, flushes subnormals,
and truncates the result rather than adding a rounding unit.

| Design | Status | Mantissa treatment | MRED (100k [1,2) pairs) | Area (um^2) | PT delay (ns) | PT power (uW) |
| --- | --- | --- | ---: | ---: | ---: | ---: |
| PLSAD-derived | accuracy matched | Paper Eq. (14), 10-bit input mantissas | 0.8216% | 1202.76 | 2.346 | 125.41 |
| PLSAD-derived | accuracy matched | Paper Eq. (14), full 23-bit mantissas | 0.8229% | 1994.40 | 2.933 | 218.80 |
| FaNZeD-derived | paper-derived formula reconstruction | Eq. (5), shift-add epsilon `2^-5 + 2^-7`, t=0 | 3.1699% | 718.92 | 2.623 | 81.26 |
| FaNZeD-derived | paper-derived formula reconstruction | Eq. (5), shift-add epsilon `2^-5 + 2^-7`, t=15 | 3.1100% | 470.88 | 1.723 | 45.76 |

The PLSAD paper reports 0.82% mean error for its eight-plane FP experiment,
which the 10-bit reconstruction reproduces.  Both PLSAD synthesized netlists
passed 20,000 normal-FP32 gate-level vectors against an independent reference.

FaNZeD has no public RTL.  The paper gives Eq. (5), describes an optimized
finite-width mantissa subtractor, and reports 2.89% mean error with near-zero
bias.  The explicit Eq. (5) plus stated shift-add epsilon does reproduce the
architecture's qualitative behavior but yields the error shown above; forcing
the continuous epsilon 0.043 makes bias near zero but does not recover 2.89%
mean error.  Therefore these two rows must not be described as an exact FaNZeD
reproduction.  Their gate-level regressions also passed 20,000 normal-FP32
vectors each, but only establish equivalence to the documented formula model.

RTL: `rtl/paper_repro/paper_fp32_dividers.v`.
Regression scripts: `qsim_rtl/paper_repro/run_accuracy.sh`,
`qsim_rtl/paper_repro/run_plsad_gate.sh`, and `qsim_rtl/paper_repro/run_fanzed_gate.sh`.
