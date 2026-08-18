# Fixed-Level Post-DC PrimeTime

This flow analyzes `oadm_dm_l0` through `oadm_dm_l4` independently using the
TSMC 65 nm typical CCS library. DC optimizes at 1.5 ns through the shared
`dc/oadm_dm/timing.tcl`; PrimeTime reports setup and hold at the published
2.0 ns period through `pt_dc/oadm_dm/timing.tcl`.

Run all levels after synthesis:

```bash
cd research/pt_dc/oadm_levels
make run
```

Power is vectorless and intended for relative comparison only. Every design
uses input static probability 0.5 and toggle rate 0.1 transitions/ns. It must
not be mixed with VCD-based power numbers from the runtime-level design.
