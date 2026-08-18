# Exact FP32 baseline

This flow synthesizes exact DesignWare FP32 multiplication, division, and a
combined divider-multiplier in the same TSMC 65 nm flow used by OADM.

All three designs use seven pipeline register levels, accept one operation per
cycle, flush denormals (`ieee_compliance=0`), and round toward zero
(`rnd=3'b001`). The combined design contains both exact arithmetic units and
delays `divide_mode` to select the corresponding result.

Run from this directory:

```bash
./run_all.sh
```

These baselines match OADM latency and throughput, but their arithmetic is more
complete: DesignWare computes an exact significand result before rounding,
whereas OADM approximates the significand and then truncates it.
