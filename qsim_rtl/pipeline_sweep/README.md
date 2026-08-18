# Pipeline-sweep RTL regression

Run `make run` to compare runtime-configurable NP and P2--P7 implementations
against all five fixed-level seven-cycle baselines. The test changes MUL/DIV
mode and approximation level every transaction and aligns each output according
to its actual pipeline latency.

Passing this test establishes bit-exact arithmetic and correct control/metadata
alignment. It does not establish timing closure; DC and PrimeTime perform that
separately.
