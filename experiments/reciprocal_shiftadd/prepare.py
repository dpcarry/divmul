"""Generate exact reciprocal-stage alternatives, keeping all other RTL intact."""
import difflib
import hashlib
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
SOURCE = ROOT / 'rtl/root_opt/oadm_fixed_divmul_root_opt.v'
COEFF = [[59], [83,42], [203,136,97,73], [227,182,149,124,105,90,78,68]]


def digits(c):
    pos = neg = 0
    for i in range(9):
        d = 2-(c & 3) if c & 1 else 0
        if d == 1: pos |= 1 << i
        if d == -1: neg |= 1 << i
        c = (c-d)//2
    assert c == 0
    return pos, neg


def main():
    source = SOURCE.read_text()
    for l, coeff in enumerate(COEFF):
        block = source.split(f'module oadm_fixed_l{l}_divmul_root_opt')[1].split('endmodule')[0]
        values = [int(c) for c in re.findall(r"\.C\d\(8'd(\d+)\)", block)]
        assert values == coeff, (l, values)
    old = '''    wire [24-SCALE_DROP+COEFFICIENT_BITS:0] reduced_scale_product =
        plane_value[24:SCALE_DROP] * coefficient;'''
    assert source.count(old) == 1
    tops = []
    for kind in ['control', 'binary', 'csd']:
        if kind != 'control':
            lines = ['    localparam integer SA_WIDTH = 25-SCALE_DROP+COEFFICIENT_BITS+1;',
                     '    wire [SA_WIDTH-1:0] sa_w = {{(COEFFICIENT_BITS+1){1\'b0}}, plane_value[24:SCALE_DROP]};']
            def tree(prefix, terms):
                depth = 0
                while len(terms) > 1:
                    nxt = []
                    for j in range(0,len(terms),2):
                        if j+1 == len(terms): nxt.append(terms[j]); continue
                        name = f'{prefix}_{depth}_{j//2}'
                        lines.append(f'    wire [SA_WIDTH-1:0] {name} = {terms[j]} + {terms[j+1]};')
                        nxt.append(name)
                    terms = nxt; depth += 1
                return terms[0]
            if kind == 'binary':
                terms = []
                # Eight positions; the Q0.7 case has a constant-zero eighth term.
                lines.append("    wire [7:0] sa_coefficient = coefficient;")
                for i in range(8):
                    name=f'sa_t{i}'; terms.append(name)
                    lines.append(f"    wire [SA_WIDTH-1:0] {name} = sa_coefficient[{i}] ? (sa_w << {i}) : {{SA_WIDTH{{1'b0}}}};")
                result=tree('sa_sum',terms)
            else:
                lines += ['    reg [8:0] sa_pos, sa_neg;', '    always @* begin',
                          "        sa_pos = 9'd0; sa_neg = 9'd0;", '        case (LEVEL)']
                for l,coeffs in enumerate(COEFF):
                    lines.append(f'            {l}: begin')
                    if l: lines.append(f'                case (y_mantissa[22:{23-l}])')
                    for i,c in enumerate(coeffs):
                        p,n=digits(c); assert p-n==c
                        label=f"{l}'d{i}: " if l else ''
                        lines.append(f"                    {label}begin sa_pos=9'd{p}; sa_neg=9'd{n}; end")
                    if l: lines += ["                    default: begin sa_pos=9'd0; sa_neg=9'd0; end", '                endcase']
                    lines.append('            end')
                lines += ['        endcase', '    end']
                accum=[]
                for sign in ['pos','neg']:
                    terms=[]
                    for i in range(9):
                        name=f'sa_{sign}_t{i}';terms.append(name)
                        lines.append(f"    wire [SA_WIDTH-1:0] {name} = sa_{sign}[{i}] ? (sa_w << {i}) : {{SA_WIDTH{{1'b0}}}};")
                    accum.append(tree(f'sa_{sign}_sum',terms))
                result='sa_difference'
                lines.append(f'    wire [SA_WIDTH-1:0] {result} = {accum[0]} - {accum[1]};')
            lines.append(f'    wire [24-SCALE_DROP+COEFFICIENT_BITS:0] reduced_scale_product = {result}[SA_WIDTH-2:0];')
            derived=source.replace(old,'\n'.join(lines))
            names=re.findall(r'(?m)^module\s+(\w+)',source)
            for name in sorted(names,key=len,reverse=True):
                derived=re.sub(r'\b'+name+r'\b',name+'_'+kind,derived)
            (HERE/f'{kind}.v').write_text(derived)
            (HERE/f'{kind}.diff').write_text(''.join(difflib.unified_diff(source.splitlines(True),derived.splitlines(True),fromfile='original',tofile=kind)))
        for l in range(4):
            tops.append(dict(level=l,kind=kind,top=f'oadm_fixed_l{l}_divmul_root_opt'+('' if kind=='control' else '_'+kind)))
    (HERE/'designs.json').write_text(json.dumps(tops,indent=2)+'\n')
    counts=json.loads((ROOT/'experiments/arithmetic_sharing/counts.json').read_text())
    inputs=ROOT/'experiments/arithmetic_sharing/inputs.txt'
    for l in range(4):
        selected=[d for d in tops if d['level']==l]
        lines=['`timescale 1ns/1ps','module tb;','reg [31:0] x,y; reg divide_mode;',
               'integer fd,s,ds,n=0,checked=0,mode,k,j,scale_checks=0;',
               'reg [28:0] test_plane; reg [31:0] expected; integer coeff;']
        for d in selected:
            name=d['kind'];lines += [f'wire [31:0] {name};',f'{d["top"]} dut_{name}(x,y,divide_mode,{name});',
                  '`ifdef GATE',f'wire [31:0] gate_{name};', f'{d["top"]}_gate g_{name}(x,y,divide_mode,gate_{name});','`endif']
        dw=18 if l==0 else 16
        lines += ['initial begin',"x=32'h3f800000; y=32'h3f800000; divide_mode=1;",'`ifndef GATE']
        for d in selected: lines.append(f'force dut_{d["kind"]}.implementation.plane_value = test_plane;')
        lines += [f'for(j=0;j<{len(COEFF[l])};j=j+1) begin', f'y=32\'h3f800000 | (j << {23-l});','case(j)']
        for j,c in enumerate(COEFF[l]):lines.append(f'{j}: coeff={c};')
        lines += ['endcase',f'for(k=0;k<{1<<(25-dw)};k=k+1) begin',f'test_plane=k<<{dw}; expected=k*coeff; #10;']
        for d in selected: lines.append(f'if(dut_{d["kind"]}.implementation.reduced_scale_product !== expected[{24-dw+(7 if l<2 else 8)}:0]) $fatal(1,"SCALE MISMATCH {d["kind"]}");')
        lines += ['scale_checks=scale_checks+1;','end','end']
        for d in selected:lines.append(f'release dut_{d["kind"]}.implementation.plane_value;')
        lines += ['`endif',f'fd=$fopen("{inputs}","r");','if(!fd) $fatal(1,"inputs missing");',
                  'while(!$feof(fd)) begin','s=$fscanf(fd,"%d %h %h\\n",ds,x,y);','if(s==3) begin',
                  '`ifdef GATE','if(ds!=0 || n<1000) begin','`endif',
                  'for(mode=0;mode<2;mode=mode+1) begin','divide_mode=mode; #10; checked=checked+1;',
                  'if(binary !== control || csd !== control) $fatal(1,"RTL MISMATCH x=%h y=%h mode=%d",x,y,mode);','`ifdef GATE']
        for d in selected:lines.append(f'if(gate_{d["kind"]} !== control) $fatal(1,"GATE MISMATCH {d["kind"]} x=%h y=%h mode=%d",x,y,mode);')
        lines += ['`endif','end','`ifdef GATE','end','`endif','n=n+1;','end','end','$fclose(fd);','`ifdef GATE',
                  f'if(checked!={2*(1000+counts["1"]+counts["2"])}) $fatal(1,"gate count");','`else',
                  f'if(checked!={2*sum(counts.values())} || scale_checks!={(1<<(25-dw))*len(COEFF[l])}) $fatal(1,"RTL count");','`endif',
                  f'$display("RECIP_SHIFTADD PASS L{l} checked=%0d scale=%0d",checked,scale_checks);','$finish;','end','endmodule']
        (HERE/f'tb{l}.sv').write_text('\n'.join(lines)+'\n')
    paths=[SOURCE, ROOT/'PACE/common/FP_DIV_WRAPPER_32.v', inputs,
           ROOT/'dc/hier_compile_10ns/module.tcl',ROOT/'dc/common_scripts/common.tcl',
           ROOT/'pt_dc/canonical_refresh/pt.tcl',ROOT/'experiments/arithmetic_sharing/accuracy.csv']
    paths += list(HERE.glob('*.py'))+list(HERE.glob('*.v'))+list(HERE.glob('*.sv'))
    (HERE/'sources.json').write_text(json.dumps({str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in paths},indent=2)+'\n')
    print('Prepared 12 full DIV/MUL points; exhaustive scale checks and full-FP32 miters.')


if __name__=='__main__': main()
