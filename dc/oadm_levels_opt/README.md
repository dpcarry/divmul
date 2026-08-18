# Eq. 10/11 fixed-level experiment

This directory is independent of `dc/oadm_levels`. It synthesizes the
`rtl/oadm_levels_opt` implementation, which computes the multiplier tangent
plane first and derives the divider plane explicitly using Eqs. 10 and 11.

Run RTL equivalence first:

```bash
cd ../../qsim_rtl/tb_oadm_levels_opt
make run
```

Then synthesize all fixed levels under the same 1.5 ns DC constraints used by
the baseline:

```bash
cd ../../dc/oadm_levels_opt
bash ./run_all.sh
```

Outputs are written only to `dc/oadm_levels_opt/outputs`.

## Result

The direct real-number interpretation of Eqs. 10 and 11 initially reduced area
by 0.43%, 1.38%, and 1.41% at L2, L3, and L4, respectively. It was not
bit-exact because arithmetic right shifts implement floor division at every
fixed-point truncation boundary. Most differences were only a few mantissa
LSBs, but a 20,000-cycle regression still found frequent output mismatches, so
the direct variant was not accepted as an accuracy-preserving replacement.

Low-bit carry compensation was then added to make the Eq. 10/11 transformation
exact under Q5.23 truncation. A 20,000-cycle randomized regression covering
both modes and all five levels reported zero mismatches against the existing
fixed-level RTL. The final bit-exact DC comparison is:

| Level | Baseline area (um2) | Eq. 10/11 area (um2) | Area change | Baseline power (mW) | Eq. 10/11 power (mW) | Power change |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| L0 | 5275.08 | 5468.76 | +3.67% | 3.045 | 3.554 | +16.72% |
| L1 | 8494.92 | 9308.88 | +9.58% | 4.668 | 5.423 | +16.17% |
| L2 | 11567.88 | 12317.04 | +6.48% | 5.855 | 6.668 | +13.89% |
| L3 | 13439.16 | 14384.16 | +7.03% | 6.794 | 7.563 | +11.32% |
| L4 | 14887.44 | 15917.76 | +6.92% | 7.278 | 7.986 | +9.73% |

All five final designs meet the same 1.5 ns DC setup and hold constraints. The
power figures are DC vectorless estimates, not activity-annotated signoff
power. Because the exact fixed-point transformation costs more than the
original dual-form expression after synthesis, this experiment should not
replace the baseline implementation. Machine-readable results are in
`results.csv`.
