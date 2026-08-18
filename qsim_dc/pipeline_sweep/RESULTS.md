# Post-synthesis regression results

All runtime pipeline variants pass bit-exact comparison against their matching
RTL pipeline on 1000 applied transactions. Each run reports successful SDF
backannotation and zero simulator errors.

| Variant | Pipeline latency | Applied | Compared after warm-up | Result |
| --- | ---: | ---: | ---: | --- |
| NP | 0 cycles | 1000 | 1000 | PASS |
| P2 | 2 cycles | 1000 | 998 | PASS |
| P3 | 3 cycles | 1000 | 997 | PASS |
| P4 | 4 cycles | 1000 | 996 | PASS |
| P5 | 5 cycles | 1000 | 995 | PASS |
| P6 | 6 cycles | 1000 | 994 | PASS |
| P7 | 7 cycles | 1000 | 993 | PASS |

The vectors rotate through runtime levels L0--L4 and MUL/DIV mode every cycle.
They include random normalized FP32 operands and directed zero, infinity, and
NaN cases. Regenerate the results with `make run` after running the DC sweep.
