# PrimeTime: combinational exact FP32 baseline

Run after `dc/exact_nopipe/run_all.sh` completes:

```bash
./run_all.sh
```

The reports use the same 10 ns virtual-clock SDC emitted by the combinational
DC flow and the same vectorless activity as the PACE/OADM comparison: input
static probability 0.5 and toggle rate 0.1 per 10 ns virtual-clock period.
PrimeTime reports power in W; paper-facing CSVs must convert it to mW.
