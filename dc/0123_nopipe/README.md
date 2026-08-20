# Q0.7 L0-L3 no-pipeline synthesis

`./run_all.sh` synthesizes the runtime-configurable L0-L3 design and fixed L0
through L3 designs without pipeline registers. A common 7 ns virtual clock
constrains the combinational input-to-output path; the measured critical path,
not 7 ns, is the reported operation delay.
