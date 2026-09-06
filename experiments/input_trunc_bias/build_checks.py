#!/usr/bin/env python3
"""Generate fixed tops and model/gate miters from the selected sweep points."""
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
selected = json.loads((HERE / 'results/selected.json').read_text())
checks = json.loads((HERE / 'results/checks.json').read_text())
tops = []
for name, c in selected.items():
    tops.append(f'''module {name}(input wire [31:0] x, y, output wire [31:0] result);
    input_trunc_core #(.BITS({c['bits']}), .BIAS({c['bias']}), .DIVIDE({int(c['mode'] == 'div')})) dut(x,y,result);
endmodule
''')
(HERE / 'tops.v').write_text('\n'.join(tops))
names = list(checks)
decls = [f'wire [31:0] actual [0:{len(names)-1}];', f'reg [31:0] expected [0:{len(names)-1}];']
instances = []
gate_checks = []
for i, (name, c) in enumerate(checks.items()):
    if 'level' in c:
        top = f"oadm_fixed_l{c['level']}_{c['mode']}_" + ('specialized' if c['mode'] == 'div' else 'root_opt')
    else:
        top = name
        instances.append(f'`ifdef GATE\nwire [31:0] gate_{i};\n{top}_gate g{i}(x,y,gate_{i});\n`endif')
        gate_checks.append(f'''`ifdef GATE
            if (actual[{i}] !== gate_{i}) begin
                $display("GATE_MISMATCH {name} vector=%0d x=%h y=%h", count,x,y);
                $fatal(1,"gate mismatch");
            end
`endif''')
    instances.append(f'{top} d{i}(x,y,actual[{i}]);')
fmt = ' '.join(['%h'] * (2 + len(names))) + '\\n'
args = ', '.join(['x', 'y'] + [f'expected[{i}]' for i in range(len(names))])
tb = '''`timescale 1ns/1ps
module tb_check;
reg [31:0] x,y;
integer fd, scanned, count, i;
''' + '\n'.join(decls + instances) + f'''
initial begin
    count = 0;
    fd = $fopen("{HERE}/results/vectors.txt", "r");
    if (!fd) $fatal(1,"missing vectors");
    while (!$feof(fd)) begin
        scanned = $fscanf(fd, "{fmt}", {args});
        if (scanned != {2+len(names)}) $fatal(1,"malformed vectors");
        #10;
        for (i=0; i<{len(names)}; i=i+1) begin
            if (actual[i] !== expected[i]) begin
                $display("MODEL_MISMATCH dut=%0d vector=%0d x=%h y=%h actual=%h expected=%h",i,count,x,y,actual[i],expected[i]);
                $fatal(1,"model mismatch");
            end
        end
''' + '\n'.join(gate_checks) + '''
        count = count+1;
    end
    $display("INPUT_TRUNC_CHECK PASS: %0d vectors per DUT",count);
    $finish;
end
endmodule
'''
(HERE / 'tb_check.sv').write_text(tb)
(HERE / 'results/tops.txt').write_text('\n'.join(selected) + '\n')
