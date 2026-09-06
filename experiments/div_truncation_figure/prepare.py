"""Generate isolated uncompensated controls and a shared RTL-output testbench."""
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
BASE = ROOT / 'experiments/input_trunc_bias'
designs = []
tops = []
for bias in (0, 1):
    for bits in (3, 5, 7):
        name = f'input_div_b{bits}_bias{bias}'
        designs.append(dict(design=name, top=name, bits=bits, bias=bias, level=''))
        if not bias:
            tops.append(f'module {name}(input wire [31:0] x,y, output wire [31:0] result);\n'
                        f'input_trunc_core #(.BITS({bits}), .BIAS(0), .DIVIDE(1)) dut(x,y,result);\nendmodule\n')
for level in range(4):
    designs.append(dict(design=f'oadm_div_l{level}', top=f'oadm_fixed_l{level}_div_specialized',
                        bits='', bias='', level=level))
(HERE / 'tops.v').write_text('\n'.join(tops))
(HERE / 'designs.json').write_text(json.dumps(designs, indent=2)+'\n')
n = len(designs)
inst = '\n'.join(f"{d['top']} u{i}(x,y,z[{i}]);" for i,d in enumerate(designs))
gates = '\n'.join(f"wire [31:0] gz{i}; {d['top']}_gate g{i}(x,y,gz{i});" for i,d in enumerate(designs[:6]))
checks = '\n'.join(f'if(z[{i}] !== gz{i}) $fatal(1,"GATE_MISMATCH {i} at %0d",count);' for i in range(6))
fmt = ' '.join(['%08h']*(n+2))+'\\n'
args = ','.join(['x','y']+[f'z[{i}]' for i in range(n)])
(HERE / 'tb.sv').write_text(f'''`timescale 1ns/1ps
module tb;
reg [31:0] x,y;
wire [31:0] z[0:{n-1}];
integer fd,fo,count,scan,dataset;
{inst}
`ifdef GATE
{gates}
`endif
initial begin
fd=$fopen("{BASE}/audit/inputs.txt","r");
if(!fd) $fatal(1,"missing audit inputs");
`ifndef GATE
fo=$fopen("{HERE}/rtl_outputs.txt","w");
`endif
count=0;
while(!$feof(fd)) begin
scan=$fscanf(fd,"%d %h %h\\n",dataset,x,y);
if(scan!=3) $fatal(1,"bad input");
#10;
`ifdef GATE
{checks}
if(count==19999) begin
$display("FIGURE_GATE PASS: 20000 vectors per baseline"); $finish;
end
`else
if(dataset==0) $fwrite(fo,"{fmt}",{args});
if(dataset!=0) begin
$display("FIGURE_RTL PASS: %0d uniform vectors",count); $finish;
end
`endif
count=count+1;
end
$fatal(1,"unexpected end of inputs");
end
endmodule
''')
