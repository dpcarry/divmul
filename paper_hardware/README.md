# Hardware Paper Draft

Main source: `oadm_hardware.tex`

The draft intentionally covers only the hardware work:

- tangent-plane divider/multiplier formulation;
- shared seven-cycle FP32 RTL architecture;
- fixed approximation levels L0-L4;
- bit-exact fused LUT/scaler optimization;
- ModelSim accuracy and equivalence tests;
- TSMC 65 nm DC and PrimeTime results;
- shared versus separate area comparison;
- routed runtime-configurable physical-design demonstration.

## Figure placeholders

1. Overall shared FP32 architecture.
2. Multi-level mantissa partition.
3. Seven-cycle pipeline.
4. Accuracy versus level.
5. Baseline versus fused PPA.
6. Shared versus separate area.
7. Routed layout screenshot.

Replace each `\placeholderfigure` call with `\includegraphics` when the final
figures are available.

## Remaining publication checks

- Fill in authors, affiliation, and the working-manuscript citation.
- Add L4 real-valued accuracy measurements before claiming L4 accuracy.
- Use workload-derived SAIF for final fixed-level power claims.
- Run fixed-level APR and extracted multi-corner signoff if post-layout PPA is
  required by the target venue.
- Add Calibre DRC/LVS evidence before describing the layout as signoff-clean.
