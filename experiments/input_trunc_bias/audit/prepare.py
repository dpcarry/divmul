#!/usr/bin/env python3
"""New held-out stimuli; no imports from the previous arithmetic models."""
import json
import random
import struct
from pathlib import Path

HERE = Path(__file__).resolve().parent
configs = json.loads((HERE.parent / 'results/checks.json').read_text())
for level in (1, 3):
    configs[f'pace_full_l{level}'] = dict(mode='div', top=f'pace_fp32_l{level}')
configs['audit_pace_l1_b5'] = dict(mode='div', top='audit_pace_l1_b5')
configs['audit_pace_l3_b6'] = dict(mode='div', top='audit_pace_l3_b6')
for name,c in configs.items():
    if 'top' not in c:
        c['top'] = (f"oadm_fixed_l{c['level']}_{c['mode']}_" + ('specialized' if c['mode']=='div' else 'root_opt')) if 'level' in c else name
(HERE / 'designs.json').write_text(json.dumps(configs,indent=2)+'\n')
rng = random.Random(90817263)
def bits(v):
    return struct.unpack('>I', struct.pack('>f',v))[0]
def pair(dataset,i):
    if dataset == 0:
        return 0x3f800000|rng.getrandbits(23), 0x3f800000|rng.getrandbits(23)
    if dataset == 1:
        return bits(2**rng.random()),bits(2**rng.random())
    if dataset == 2:
        return 0x3f800000|((i//256)<<15),0x3f800000|((i%256)<<15)
    # Same normal-finite shell with safe exponents and both signs.
    return ((rng.getrandbits(1)<<31)|(rng.randrange(110,145)<<23)|rng.getrandbits(23),
            (rng.getrandbits(1)<<31)|(rng.randrange(110,145)<<23)|rng.getrandbits(23))
with (HERE / 'inputs.txt').open('w') as f:
    for dataset,count in enumerate((100000,100000,65536,10000)):
        for i in range(count):
            x,y=pair(dataset,i)
            f.write(f'{dataset} {x:08x} {y:08x}\n')
n=len(configs)
instances='\n'.join(f"{c['top']} dut{i}(x,y,z[{i}]);" for i,c in enumerate(configs.values()))
gate='\n'.join(f'''wire [31:0] gz{i};
{c['top']}_gate gd{i}(x,y,gz{i});''' for i,c in enumerate(configs.values()) if c['top'].startswith('audit_'))
gate_checks='\n'.join(f'if(z[{i}] !== gz{i}) $fatal(1,"PACE gate mismatch i=%0d",count);' for i,c in enumerate(configs.values()) if c['top'].startswith('audit_'))
outputs=', '.join(['dataset','x','y']+[f'z[{i}]' for i in range(n)])
fmt='%0d '+' '.join(['%08h']*(n+2))+'\\n'
tb=f'''`timescale 1ns/1ps
module tb_audit;
reg [31:0] x,y;
wire [31:0] z[0:{n-1}];
integer fd,outfile,scan,dataset,count;
{instances}
`ifdef GATE
{gate}
`endif
initial begin
    fd=$fopen("{HERE}/inputs.txt","r");
    if(!fd) $fatal(1,"missing inputs");
`ifndef GATE
    outfile=$fopen("{HERE}/rtl_outputs.txt","w");
`endif
    count=0;
    while(!$feof(fd)) begin
        scan=$fscanf(fd,"%d %h %h\\n",dataset,x,y);
        if(scan!=3) $fatal(1,"bad input");
        #10;
`ifdef GATE
        {gate_checks}
        if(count==19999) begin
            $display("AUDIT_GATE PASS: 20000 vectors per PACE top");
            $finish;
        end
`else
        $fwrite(outfile,"{fmt}",{outputs});
`endif
        count=count+1;
    end
    $display("AUDIT_RTL_DUMP PASS: %0d vectors",count);
    $finish;
end
endmodule
'''
(HERE / 'tb_audit.sv').write_text(tb)
