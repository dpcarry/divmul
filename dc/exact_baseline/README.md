# Exact FP32 baseline

This flow synthesizes exact DesignWare FP32 multiplication, division, and a
combined divider-multiplier in the same TSMC 65 nm flow used by OADM.

All three designs use seven pipeline register levels, accept one operation per
cycle, flush denormals (`ieee_compliance=0`), and round toward zero
(`rnd=3'b001`). The combined design contains both exact arithmetic units and
delays `divide_mode` to select the corresponding result. Minimum-size input
buffers are preserved so the standalone pre-layout baselines pass hold timing;
their area and power are included in every result.

Run from this directory:

```bash
OUTPUT_ROOT=outputs_1p5_holdclean ./run_all.sh
```

At 1.5 ns, these seven-cycle baselines have 10.5 ns latency and 666.7 Mops/s
steady-state throughput. Runtime OADM P6 has six-cycle (9 ns) latency at the
same throughput. DesignWare computes an exact significand result before
rounding, whereas OADM approximates the significand and then truncates it.
