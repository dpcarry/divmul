"""Generate isolated controls, input masking, and bit-equivalent narrow RTL."""
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
SOURCE = ROOT / 'experiments/fixed_div_level_specialization/specialized_rtl.v'

def main():
    source = SOURCE.read_text()
    core = source.split('module oadm_fixed_div_specialized #(')[1].split(
        'module oadm_fixed_l0_div_specialized')[0]
    core = 'module oadm_input_trial #(\n    parameter integer B = 8, NARROW = 0,' + core
    core = core.replace("{1'b1, x_fraction}", "{1'b1, x_fraction[22 -: B], {(23-B){1'b0}}}")
    core = core.replace("{1'b1, y_fraction}", "{1'b1, y_fraction[22 -: B], {(23-B){1'b0}}}")
    start = core.index('    oadm_fixed_div_specialized_plane #(')
    end = core.index('    reg [COEFFICIENT_BITS-1:0]', start)
    old_plane = core[start:end]
    core = core[:start] + '''    generate if (NARROW) begin : narrow
        wire [24:0] compact_plane;
        oadm_input_narrow_plane #(.B(B), .LEVEL(LEVEL), .R(RESIDUAL_DROP))
            plane(x_fraction[22 -: B], y_fraction[22 -: B], compact_plane);
        assign plane_full = {4'b0, compact_plane};
    end else begin : mask_only
''' + old_plane + '    end endgenerate\n\n' + core[end:]
    (HERE / 'trial.v').write_text(core)
    coefficients = [[59], [83,42], [203,136,97,73], [227,182,149,124,105,90,78,68]]
    configs = []
    tops = []
    for level in range(4):
        r = 18 if level == 0 else 16
        cb = 7 if level < 2 else 8
        for kind,b in [('control',23)] + [(k,b) for b in range(3 if level==0 else 4,9)
                                         for k in ('mask','narrow')]:
            top = f'input_l{level}_{kind}_b{b}'
            configs.append(dict(top=top,level=level,kind=kind,bits=b,residual_drop=r,
                                wn_drop=r,coefficient_bits=cb,coefficients=coefficients[level]))
            if kind == 'control':
                dut = f'oadm_fixed_l{level}_div_specialized dut(x,y,result);'
            else:
                params = f'.B({b}), .NARROW({int(kind=="narrow")}), .LEVEL({level}), .RESIDUAL_DROP({r}), .WN_DROP({r}), .COEFFICIENT_BITS({cb})'
                params += ''.join(f', .C{i}(8\'d{v})' for i,v in enumerate(coefficients[level]))
                dut = f'oadm_input_trial #({params}) dut(x,y,result);'
            tops.append(f'module {top}(input [31:0] x,y, output [31:0] result);\n{dut}\nendmodule\n')
    (HERE / 'tops.v').write_text('\n'.join(tops))
    (HERE / 'designs.json').write_text(json.dumps(configs,indent=2)+'\n')
    (HERE / 'tops.txt').write_text('\n'.join(c['top'] for c in configs)+'\n')
    # Keep the earlier Fig. 8 boundary/signed cases and all 100k uniform cases.
    inputs = [l for l in (ROOT/'experiments/pace_fig8_reverse/inputs.txt').read_text().splitlines()
              if int(l.split()[0]) != 0]
    old = ROOT/'experiments/div_truncation_figure/rtl_outputs.txt'
    inputs += ['0 '+' '.join(l.split()[:2]) for l in old.read_text().splitlines()]
    (HERE/'inputs.txt').write_text('\n'.join(inputs)+'\n')
    tb = ['`timescale 1ns/1ps','module tb;','reg [31:0] x,y;',
          f'wire [31:0] z[0:{len(configs)-1}];','integer fd,fo,scan,dataset,count;']
    for i,c in enumerate(configs):
        tb += [f'{c["top"]} d{i}(x,y,z[{i}]);', '`ifdef GATE',
               f'wire [31:0] g{i}; {c["top"]}_gate gd{i}(x,y,g{i});','`endif']
    tb += ['initial begin',f'fd=$fopen("{HERE}/inputs.txt","r");',
           'if(!fd) $fatal(1,"missing inputs");','`ifndef GATE',
           f'fo=$fopen("{HERE}/rtl_outputs.txt","w");','`endif','count=0;',
           'while(!$feof(fd)) begin','scan=$fscanf(fd,"%d %h %h\\n",dataset,x,y);',
           'if(scan!=3) $fatal(1,"bad input");','#10;']
    lookup = {(c['level'],c['kind'],c['bits']):i for i,c in enumerate(configs)}
    for i,c in enumerate(configs):
        if c['kind']=='narrow':
            j=lookup[c['level'],'mask',c['bits']]
            tb += [f'if(z[{i}] !== z[{j}]) $fatal(1,"WIDTH_MISMATCH {i} count=%0d",count);']
        if c['kind']!='control' and c['bits']>=23-c['residual_drop']:
            j=lookup[c['level'],'control',23]
            tb += [f'if(z[{i}] !== z[{j}]) $fatal(1,"CONTROL_MISMATCH {i} count=%0d",count);']
    tb += ['`ifdef GATE']
    for i in range(len(configs)):
        tb += [f'if(z[{i}] !== g{i}) $fatal(1,"GATE_MISMATCH {i} count=%0d",count);']
    tb += ['if(count==11832) begin $display("INPUT_WIDTH_GATE PASS: 11833"); $finish; end',
           '`else', '$fwrite(fo,"%d %08h %08h",dataset,x,y);']
    tb += [f'$fwrite(fo," %08h",z[{i}]);' for i in range(len(configs))]
    tb += ['$fwrite(fo,"\\n");','`endif','count=count+1;',
           'if(count%10000==0) $display("PROGRESS %0d",count);','end',
           '$display("INPUT_WIDTH_RTL PASS: %0d",count); $finish;','end','endmodule']
    (HERE/'tb.sv').write_text('\n'.join(tb)+'\n')
    paths=[SOURCE,ROOT/'PACE/common/FP_DIV_WRAPPER_32.v']
    paths += [HERE/f for f in ('trial.v','narrow.v','tops.v','tb.sv','inputs.txt','designs.json')]
    (HERE/'source_sha256.json').write_text(json.dumps({str(p.relative_to(ROOT)):
        hashlib.sha256(p.read_bytes()).hexdigest() for p in paths},indent=2)+'\n')
    print(len(configs),'designs;',len(inputs),'vectors')

if __name__=='__main__': main()
