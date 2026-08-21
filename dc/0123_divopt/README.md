# Fixed-L3 divider optimization

This isolated flow optimizes the Q0.7 fixed-L3, DIV-only, no-pipeline design.
It preserves the original `dc/0123_nopipe` results and first removes hierarchy
before mapping so fixed mode and level constants can propagate globally.

`run_fair10.sh` uses the same 10 ns input-driver, input-delay, output-delay,
and output-load constraints as the local PACE reproduction. The original 7 ns
run remains separate so constraint changes cannot be mistaken for RTL gains.

## Verified winner

`oadm_fixed_l3_div_opt_best2` is the full-semantics candidate. It preserves the
original fixed-L3 Q0.7 divider output bit-for-bit, including special values and
exponent saturation. The optimization replaces the recursive plane with an
algebraically direct plane plus an exact rounding-correction network, removes
unreachable normalization cases, selects normalization from the reachable Q23
range, and reduces the exponent datapath from 12 to 10 bits.

The focused and full regressions compare against `oadm_fixed_l3_div_nopipe`.
They passed 100,008 random/special FP32 vectors. The arithmetic changes do not
modify the established L3 accuracy results:

- MAE: 0.003401225
- MRED: 0.003183570
- RMSE: 0.004573599

Under the PACE-matched 10 ns constraints and area-high-effort mapping, the
full-semantics winner is 3780.36 um^2, about 0.206 mW vectorless power, and a
4.53 ns critical path. The flattened original is 4610.16 um^2, 0.264 mW, and
5.19 ns under the same constraints.

## PACE comparison boundary

PACE's `FP_DIV_WRAPPER_32` does not implement NaN, infinity, zero, underflow,
or overflow handling; its exponent arithmetic wraps at 8 bits. The separate
`oadm_fixed_l3_div_opt_paceio` candidate uses the same I/O semantics while
leaving the OADM mantissa algorithm, Q0.7 coefficients, and correction network
unchanged. It matched the full-semantics OADM on 100,000 normal-domain vectors
and synthesized to 3626.64 um^2, about 0.212 mW, and 4.01 ns. This is the only
appropriate OADM candidate for a direct comparison with the local PACE wrapper.

The reproduced PACE L4 result is 3196.44 um^2, 0.169604 mW, and 3.67 ns. The
remaining gap cannot be removed by correction-LUT minimization alone: the two
rounding LUT instances total only about 194.76 um^2. OADM also requires the
`w_n * (1/y_q^2)` reciprocal-scale datapath, which PACE's algorithm does not
contain. Reaching PACE L4 while preserving the exact OADM output therefore
requires an architectural change, not another local Boolean cleanup.

See `results.csv` for the measured candidates and rejected experiments.

Area-high reports intentionally contain an area constraint violation because
the script uses `set_max_area 0` to request minimum-area mapping. This is not a
timing failure. The full winner and PACE-I/O candidate have +5.45 ns and
+5.97 ns setup slack, respectively, under the 10 ns virtual clock.

## Commands

```bash
cd research/qsim_rtl/divopt
make run
make paceio

cd ../../dc/0123_divopt
TOP_LEVEL=oadm_fixed_l3_div_opt_best2 OUTPUT_ROOT=outputs_fair10_area \
  PERIOD_NS=10.0 AREA_HIGH=1 dc_shell -f module.tcl
```
