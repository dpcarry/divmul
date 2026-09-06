"""Whole-datapath width hypothesis; do not modify author arithmetic."""
import hashlib
import json
import random
import subprocess
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
DROPS = (0, 4, 8, 12, 14, 15, 16, 17, 18)
configs = []
tops = []
for level in range(1, 5):
    for drop in DROPS:
        if drop > {1:18, 2:18, 3:17, 4:16}[level]:
            continue
        name = f'fig8_pace_l{level}_d{drop}'
        b = 23-drop
        configs.append(dict(top=name, family='pace', level=level, drop=drop, bits=b,
                            shell='common', rounding='author'))
        core = f'Mantissa_Div_L{level}' + ('_Kec' if level == 4 else '')
        tops.append(f'''module {name}(input [31:0] x,y, output [31:0] result);
wire [{b-1}:0] mx,my,mz; wire shift;
{core} #(.MANTISSA_WIDTH({b})) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc({drop})) shell(x,y,result,mx,my,mz,~shift);
endmodule
''')
for drop in DROPS:
    b = 23-drop
    name = f'fig8_dw_d{drop}'
    configs.append(dict(top=name, family='dw', level='', drop=drop, bits=b,
                        shell='native_dw', rounding='RTZ'))
    tops.append(f'''module {name}(input [31:0] x,y, output [31:0] result);
fig8_dw #(.B({b})) core(x,y,result);
endmodule
''')
configs += [dict(top='fig8_dw_d18_common', family='dw', level='', drop=18, bits=5,
                 shell='common', rounding='RTZ'),
            dict(top='fig8_dw_d18_rne', family='dw', level='', drop=18, bits=5,
                 shell='native_dw', rounding='RNE'),
            dict(top='fig8_pace_l3_d17_historical', family='pace', level=3, drop=17,
                 bits=6, shell='historical', rounding='author')]
tops.append('''module fig8_dw_d18_rne(input [31:0] x,y, output [31:0] result);
fig8_dw #(.B(5),.RND(0)) core(x,y,result);
endmodule
module fig8_dw_d18_common(input [31:0] x,y, output [31:0] result);
wire [22:0] fx,fy; wire [13:0] z; wire [7:0] status;
DW_fp_div #(.sig_width(5),.exp_width(8),.ieee_compliance(0),.faithful_round(0))
core(.a({1'b0,8'd127,fx[22:18]}),.b({1'b0,8'd127,fy[22:18]}),
     .rnd(3'b001),.z(z),.status(status));
wire signed [2:0] adjust = z[7:5] - 3'd7;
fp32_normal_finite_wrapper shell(x,y,1'b1,fx,fy,{z[4:0],18'b0},adjust,result);
endmodule
module fig8_pace_l3_d17_historical(input [31:0] x,y, output [31:0] result);
wire [5:0] mx,my,mz; wire shift;
Mantissa_Div_L3 #(.MANTISSA_WIDTH(6)) core(mx,my,mz,shift);
fig8_historical_wrapper #(.width_trunc(17)) shell(x,y,result,mx,my,mz,~shift);
endmodule
''')
original_changes=[]
for level in (1,2):
    path=ROOT/f'prior_original/proposed-L{level}/Mantissa_Div_L{level}.v'
    original=path.read_text()
    core=f'fig8_delivered_core_l{level}'
    source=original.replace(f'module Mantissa_Div_L{level}',f'module {core}',1)
    source=source.replace("23'b0","{MANTISSA_WIDTH{1'b0}}")
    source=source.replace("25'b0","{(MANTISSA_WIDTH+2){1'b0}}")
    import difflib
    original_changes.extend(difflib.unified_diff(original.splitlines(True),source.splitlines(True),
                            fromfile=str(path.relative_to(ROOT)),tofile=core))
    tops.append(source)
    name=f'fig8_pace_l{level}_d18_delivered'
    tops.append(f'''module {name}(input [31:0] x,y, output [31:0] result);
wire [4:0] mx,my,mz; wire shift;
{core} #(.MANTISSA_WIDTH(5)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 #(.width_trunc(18)) shell(x,y,result,mx,my,mz,~shift);
endmodule
''')
    configs.append(dict(top=name,family='pace',level=level,drop=18,bits=5,
                        shell='common_delivered_adders',rounding='author'))
(HERE/'delivered_changes.diff').write_text(''.join(original_changes))
historical = subprocess.check_output(['git','show','b709b57:PACE/common/FP_DIV_WRAPPER_32.v'],
                                     cwd=ROOT, text=True)
(HERE/'historical_wrapper.v').write_text(historical.replace('module FP_DIV_WRAPPER_32',
                                                          'module fig8_historical_wrapper', 1))
(HERE/'tops.v').write_text('\n'.join(tops))
(HERE/'designs.json').write_text(json.dumps(configs,indent=2)+'\n')
(HERE/'tops.txt').write_text('\n'.join(c['top'] for c in configs)+'\n')
sources = [ROOT/f'PACE/L{l}/Mantissa_Div_L{l}{"_Kec" if l==4 else ""}.v' for l in range(1,5)]
sources += [ROOT/'PACE/common/FP_DIV_WRAPPER_32.v', ROOT/'PACE/common/CSA3_2_Array.v']
sources += [ROOT/f'prior_original/proposed-L{l}/Mantissa_Div_L{l}.v' for l in (1,2)]
(HERE/'source_sha256.json').write_text(json.dumps({str(p.relative_to(ROOT)):
    hashlib.sha256(p.read_bytes()).hexdigest() for p in sources},indent=2)+'\n')

# Put boundary cases first, so the gate subset covers them plus random vectors.
boundary=set()
for b in (5,6,7,8,9,11,15,19,23):
    step=1<<(23-b)
    for cell in range(17):
        for eps in (-1,0,1):
            y=max(0,min(0x7fffff,(cell<<19)+eps))
            for delta in (-step-1,-step,-1,0,1,step,step+1):
                x=max(0,min(0x7fffff,y+delta))
                boundary.add((x,y))
boundary.update((x,y) for x in (0,1,0x7ffffe,0x7fffff)
                for y in (0,1,0x7ffffe,0x7fffff))
vectors=[(1,0x3f800000|x,0x3f800000|y) for x,y in sorted(boundary)]
rng=random.Random(20260906)
for _ in range(100):
    vectors.append((2,(rng.getrandbits(1)<<31)|(rng.randrange(115,140)<<23)|rng.getrandbits(23),
                    (rng.getrandbits(1)<<31)|(rng.randrange(115,140)<<23)|rng.getrandbits(23)))
targeted=len(vectors)
with (ROOT/'experiments/input_trunc_bias/audit/inputs.txt').open() as f:
    for i,line in enumerate(f):
        if i == 10000: break
        dataset,x,y=line.split()
        assert dataset=='0'
        vectors.append((0,int(x,16),int(y,16)))
(HERE/'inputs.txt').write_text(''.join(f'{d} {x:08x} {y:08x}\n' for d,x,y in vectors))
gate_count=targeted+1000
(HERE/'counts.json').write_text(json.dumps(dict(total=len(vectors),gate=gate_count,
                                              uniform=10000),indent=2)+'\n')
n=len(configs)
inst='\n'.join(f'{c["top"]} d{i}(x,y,z[{i}]);' for i,c in enumerate(configs))
gate='\n'.join(f'wire [31:0] g{i}; {c["top"]}_gate gd{i}(x,y,g{i});' for i,c in enumerate(configs))
checks='\n'.join(f'if(z[{i}] !== g{i}) $fatal(1,"GATE_MISMATCH {i} count=%0d",count);' for i in range(n))
fmt='%d '+' '.join(['%08h']*(n+2))+'\\n'
args=','.join(['dataset','x','y']+[f'z[{i}]' for i in range(n)])
(HERE/'tb.sv').write_text(f'''`timescale 1ns/1ps
module tb;
reg [31:0] x,y; wire [31:0] z[0:{n-1}];
integer fd,fo,scan,dataset,count;
{inst}
`ifdef GATE
{gate}
`endif
initial begin
fd=$fopen("{HERE}/inputs.txt","r");
if(!fd) $fatal(1,"missing inputs");
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
if(count=={gate_count-1}) begin
$display("FIG8_GATE PASS: {gate_count} vectors per DUT"); $finish;
end
`else
$fwrite(fo,"{fmt}",{args});
`endif
count=count+1;
end
$display("FIG8_RTL PASS: %0d vectors",count); $finish;
end
endmodule
''')
(HERE/'experiment_sha256.json').write_text(json.dumps({p.name:hashlib.sha256(p.read_bytes()).hexdigest()
    for p in (HERE/'tops.v',HERE/'baseline.v',HERE/'historical_wrapper.v',HERE/'tb.sv',
              HERE/'inputs.txt',HERE/'designs.json')},indent=2)+'\n')
print(len(configs), 'designs;', len(vectors), 'vectors;', gate_count, 'gate vectors')
