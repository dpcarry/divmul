"""Matched-output sharing experiment for absorbed DIV and unchanged balanced MUL."""
import hashlib
import importlib.util
import json
from pathlib import Path

import numpy as np

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
ABS = ROOT/'experiments/absorbed_reciprocal'
MUL = ROOT/'rtl/mul_root_opt/oadm_mul_root_opt.v'
spec = importlib.util.spec_from_file_location('absorbed_model', ABS/'experiment.py')
absmodel = importlib.util.module_from_spec(spec)
spec.loader.exec_module(absmodel)
Q = 1 << 23


def mul_value(inputs, level):
    d = 16-2*level
    ix,iy,kx,ky,rx,ry = absmodel.coords(inputs,level,d)
    return ((kx*ky) << 15) + ((rx*ky+ry*kx) << (d-4)) + ((kx+ky) << (d-5))


def pack(inputs, value, divide):
    assert np.all((value >= Q//4) & (value < 4*Q))
    shift = np.where(value >= 2*Q,1,np.where(value >= Q,0,np.where(value >= Q//2,-1,-2)))
    scaled = np.where(shift > 0,value >> 1,value << np.maximum(-shift,0))
    x,y = inputs.astype(np.int64).T
    ex,ey = (x >> 23)&255,(y >> 23)&255
    exponent = (ex-ey+127 if divide else ex+ey-127)+shift
    assert np.all((exponent > 0)&(exponent < 255))
    return (((x^y)&(1 << 31)) | (exponent << 23) | (scaled&(Q-1))).astype(np.uint32)


def lookup(n, entries, aw, bw, tw, mode=False):
    index = "1'b0" if n == 0 else f'{{fy[22:{23-n}],fx[22:{23-n}]}}'
    if mode:
        index = 'divide_mode' if n == 0 else f'{{divide_mode,fy[22:{23-n}],fx[22:{23-n}]}}'
    if n == 0 and not mode:
        a,b,t = entries[0]
        return f"wire signed [{aw-1}:0] a={aw}'sd{a};\nwire signed [{bw-1}:0] b={bw}'sd{b};\nwire signed [{tw-1}:0] t={tw}'sd{t};\n"
    width = max(1,2*n+int(mode))
    lines = [f'reg signed [{aw-1}:0] a;',f'reg signed [{bw-1}:0] b;',f'reg signed [{tw-1}:0] t;',
             'always @* begin',f'case ({index})']
    for i,(a,b,t) in enumerate(entries):
        lines.append(f"{width}'d{i}: begin a={aw}'sd{a}; b={bw}'sd{b}; t={tw}'sd{t}; end")
    lines += ['default: begin a=0; b=0; t=0; end','endcase','end','']
    return '\n'.join(lines)


def residual(axis,n,d):
    return f'{{~{axis}[{22-n}],{axis}[{21-n}:{d}]}}'


def mul_tables(n, s=4):
    d = 16-2*n
    k = 16+(2*np.arange(1 << n)+1)*(8 >> n)
    ky,kx = np.meshgrid(k,k,indexing='ij')
    t = ((kx*ky) << (19-d)) + ((kx+ky) >> 1)
    return [(int(y) << (s-4),int(x) << (s-4),int(c) << (s-4)) for y,x,c in zip(ky.ravel(),kx.ravel(),t.ravel())]


def div_core(c,name):
    source = (ABS/(c['top']+'.v')).read_text()
    start = source.index('wire signed ')
    end = source.index('reg [22:0] frac;')
    body = source[start:end].replace('wire signed [28:0] value=', 'assign value=')
    return f'module {name}(input [22:0] fx,fy, output signed [28:0] value);\n'+body+'endmodule\n'


def mul_core(n,name):
    entries = mul_tables(n)
    aw,bw,tw = [max(e[j] for e in entries).bit_length()+1 for j in range(3)]
    d,rw = 16-2*n,7+n
    pw = rw+max(aw,bw)
    sw = max(pw+2,tw+2)
    f = 27-d
    return f'''module {name}(input [22:0] fx,fy, output signed [28:0] value);
wire signed [{rw-1}:0] rx={residual('fx',n,d)}, ry={residual('fy',n,d)};
{lookup(n,entries,aw,bw,tw)}
wire signed [{pw-1}:0] px=rx*a, py=ry*b;
wire signed [{sw-1}:0] ex=px,ey=py,ec=t;
wire signed [{sw-1}:0] p=ec+ex+ey;
wire signed [28:0] extended=p;
assign value=extended <<< {23-f};
endmodule
'''


def shared_core(c,name):
    n,s,dd = c['level'],c['s'],c['d']
    dm = 16-2*n
    a,b,t,fd,_ = absmodel.tables(c)
    mul = mul_tables(n,s)
    div = [(int(x),int(y),int(z) << (dd-dm)) for x,y,z in zip(a.ravel(),b.ravel(),t.ravel())]
    entries = mul+div
    aw,bw,tw = [max(e[j] for e in entries).bit_length()+1 for j in range(3)]
    rw = 23-n-dm
    pw = rw+max(aw,bw)
    sw = max(pw+2,tw+2)
    f = s+23-dm
    assert f == fd+dd-dm
    return f'''module {name}(input [22:0] fx,fy, input divide_mode, output signed [28:0] value);
wire signed [{rw-1}:0] rx_mul={residual('fx',n,dm)}, ry_mul={residual('fy',n,dm)};
wire signed [{rw-1}:0] rx_div={{~fx[{22-n}],fx[{21-n}:{dd}],{dd-dm}'b0}};
wire signed [{rw-1}:0] ry_div={{~fy[{22-n}],fy[{21-n}:{dd}],{dd-dm}'b0}};
wire signed [{rw-1}:0] rx=divide_mode ? rx_div : rx_mul;
wire signed [{rw-1}:0] ry=divide_mode ? ry_div : ry_mul;
{lookup(n,entries,aw,bw,tw,mode=True)}
wire signed [{pw-1}:0] px=rx*a, py=ry*b;
wire signed [{sw-1}:0] ex=px,ey=py,ec=t;
wire signed [{sw-1}:0] signed_y=divide_mode ? -ey : ey;
wire signed [{sw-1}:0] p=ec+ex+signed_y;
wire signed [28:0] extended=p;
assign value=extended <<< {23-f};
endmodule
'''


def shell(top,body):
    return f'''module {top}(input [31:0] x,y,input divide_mode,output [31:0] result);
wire [22:0] fx,fy;
wire signed [28:0] core_value;
{body}
reg [22:0] normalized_fraction;
reg signed [2:0] exponent_adjust;
always @* begin
if (core_value[24]) begin normalized_fraction=core_value[23:1]; exponent_adjust=3'sd1; end
else if (core_value[23]) begin normalized_fraction=core_value[22:0]; exponent_adjust=3'sd0; end
else if (core_value[22]) begin normalized_fraction={{core_value[21:0],1'b0}}; exponent_adjust=-3'sd1; end
else begin normalized_fraction={{core_value[20:0],2'b0}}; exponent_adjust=-3'sd2; end
end
fp32_normal_finite_wrapper wrapper(.x(x),.y(y),.divide_mode(divide_mode),
.fraction_x(fx),.fraction_y(fy),.result_fraction(normalized_fraction),
.exponent_adjust(exponent_adjust),.result(result));
endmodule
'''


def generate(c,kind,top):
    n = c['level']
    if kind == 'shared':
        return shared_core(c,top+'_core')+shell(top,f'{top}_core shared_core(fx,fy,divide_mode,core_value);')
    source = div_core(c,top+'_div')
    body = f'''wire signed [28:0] div_value,mul_value;
{top}_div div_core(fx,fy,div_value);
'''
    if kind == 'separate':
        source += mul_core(n,top+'_mul')
        body += f'{top}_mul mul_core(fx,fy,mul_value);\n'
    else:
        body += f"oadm_fixed_mul_plane_root_opt #(.LEVEL({n}),.RESIDUAL_DROP({16-2*n})) mul_core({{1'b1,fx}},{{1'b1,fy}},mul_value);\n"
    body += 'assign core_value=divide_mode ? div_value : mul_value;'
    return source+shell(top,body)


def tb(top,c,phase,count):
    refs = ''
    assertion = ''
    if phase == 'rtl':
        refs = f"wire [31:0] div_ref,mul_ref;\n{c['top']} dref(x,y,div_ref);\noadm_fixed_l{c['level']}_mul_root_opt mref(x,y,mul_ref);"
        assertion = 'if(result !== (divide_mode ? div_ref : mul_ref)) $fatal(1,"REFERENCE MISMATCH %0d mode=%0d",i,mode);'
    return f'''module tb;
reg [31:0] x,y; reg divide_mode; wire [31:0] result;
reg [63:0] vectors[0:{count-1}]; reg [31:0] expected[0:{2*count-1}];
integer i,mode,fd;
{top} dut(.x(x),.y(y),.divide_mode(divide_mode),.result(result));
{refs}
initial begin
$readmemh("{HERE/('inputs.hex' if phase == 'rtl' else 'gate_inputs.hex')}",vectors);
$readmemh("{HERE/f'{top}.{phase}.expected.hex'}",expected);
fd=$fopen("outputs.hex","w");
for(i=0;i<{count};i=i+1) begin
{{x,y}}=vectors[i];
for(mode=0;mode<2;mode=mode+1) begin
divide_mode=mode; #10;
if(result !== expected[2*i+mode]) $fatal(1,"MODEL MISMATCH %0d mode=%0d got=%h expected=%h",i,mode,result,expected[2*i+mode]);
{assertion}
$fdisplay(fd,"%08h",result);
end
end
$fclose(fd); $display("TUNING_CHECK PASS count={2*count}"); $finish;
end
endmodule
'''


def main():
    configs = [c for c in json.loads((ABS/'selected.json').read_text()) if c['kind'] == 'quantized']
    inputs = np.load(ABS/'inputs.npy')
    # Add boundaries of each MUL residual truncation step near all L3 midpoints.
    edges = {0,Q-1}
    for center in range(0,Q,1 << 19):
        for d in (10,12,14,16,18):
            for offset in (-2**d-1,-2**d,-1,0,1,2**d-1,2**d,2**d+1):
                if 0 <= center+offset < Q:
                    edges.add(center+offset)
    extra = np.array([(0x3f800000+x,0x3f800000+y) for x in sorted(edges) for y in sorted(edges)],dtype=np.uint32)
    original_count = len(inputs)
    inputs = np.concatenate((inputs,extra))
    indices = np.unique(np.r_[np.load(ABS/'gate_indices.npy'),np.arange(original_count,len(inputs),17)])
    np.save(HERE/'inputs.npy',inputs)
    np.save(HERE/'gate_indices.npy',indices)
    for name,data in [('inputs',inputs),('gate_inputs',inputs[indices])]:
        (HERE/(name+'.hex')).write_text(''.join(f'{int(x):08x}{int(y):08x}\n' for x,y in data))
    selected,accuracy = [],[]
    for c in configs:
        n = c['level']
        div = absmodel.model(inputs,c)
        assert np.array_equal(div,pack(inputs,absmodel.core(inputs,c),True))
        mul = pack(inputs,mul_value(inputs,n),False)
        expected = np.column_stack((mul,div))
        for mode,outputs in [('mul',mul),('div',div)]:
            for name,start,end in [('random_200k',0,200000),('boundary_grid',200000,331072),('signed',331072,333072),
                                    ('cell_edges_diagonal',333072,original_count),('residual_boundaries',original_count,len(inputs))]:
                x,y = inputs[start:end].T
                xf,yf = x.copy().view(np.float32).astype(float),y.copy().view(np.float32).astype(float)
                ref = xf/yf if mode == 'div' else xf*yf
                error = outputs[start:end].view(np.float32).astype(float)-ref
                accuracy.append(dict(level=n,mode=mode,dataset=name,count=end-start,mred=float(np.mean(np.abs(error/ref))),
                    rmse=float(np.sqrt(np.mean(error**2))),mae=float(np.mean(np.abs(error))),max_relative=float(np.max(np.abs(error/ref)))))
        for kind in ('separate_native_mul','separate','shared'):
            top = f'absdm_l{n}_{kind}'
            selected.append(dict(top=top,level=n,kind=kind,div_top=c['top'],div_drop=c['d'],mul_drop=16-2*n,slope_fraction_bits=c['s']))
            (HERE/(top+'.v')).write_text(generate(c,kind,top))
            for phase,idx in [('rtl',np.arange(len(inputs))),('gate',indices)]:
                (HERE/f'{top}.{phase}.expected.hex').write_text(''.join(f'{int(v):08x}\n' for v in expected[idx].ravel()))
                (HERE/f'{top}.{phase}.tb.sv').write_text(tb(top,c,phase,len(idx)))
    (HERE/'selected.json').write_text(json.dumps(selected,indent=2))
    absmodel.write_csv(HERE/'accuracy.csv',accuracy)
    files = list(HERE.glob('*.py'))+list(HERE.glob('*.v'))+list(HERE.glob('*.sv'))+list(HERE.glob('*.hex'))+[HERE/'inputs.npy',HERE/'gate_indices.npy',HERE/'selected.json',
        MUL,ROOT/'PACE/common/FP_DIV_WRAPPER_32.v',ABS/'experiment.py',ABS/'run.py',ABS/'selected.json',
        ROOT/'dc/hier_compile_10ns/module.tcl',ROOT/'dc/common_scripts/common.tcl',ROOT/'dc/common_scripts/namingrules.tcl',ROOT/'pt_dc/canonical_refresh/pt.tcl']
    files += [ABS/(c['top']+'.v') for c in configs]
    (HERE/'sources.json').write_text(json.dumps({str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in files},indent=2))
    print(f'Prepared {len(selected)} designs, {len(inputs)} pairs, {len(indices)} gate pairs; both modes per pair.')


if __name__ == '__main__':
    main()
