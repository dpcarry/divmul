"""Two matched-format, matched-output experiments; leave parent results untouched."""
import hashlib
import importlib.util
import json
from pathlib import Path

import numpy as np

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
OLD = ROOT/'experiments/absorbed_sharing'
ABS = ROOT/'experiments/absorbed_reciprocal'
MUL = ROOT/'rtl/mul_root_opt/oadm_mul_root_opt.v'


def module(name, path):
    spec = importlib.util.spec_from_file_location(name, path)
    obj = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(obj)
    return obj


prior = module('prior_sharing', OLD/'prepare.py')
model = prior.absmodel
Q = 1 << 23


def rounded_scale(value, shift):
    return value << shift if shift >= 0 else (value+(1 << (-shift-1))) >> -shift


def coefficients(c):
    n, d, s, b = c['level'], c['d'], c['s'], c['b']
    f = s+23-d
    div, mul = [], []
    for iy in range(1 << n):
        for ix in range(1 << n):
            kx, ky = [16+(2*i+1)*(8 >> n) for i in (ix, iy)]
            co = c['coefficients'][iy]
            div.append((rounded_scale(co*ky, s-b-4), rounded_scale(co*kx, s-b-4),
                        rounded_scale(co*kx*ky, f-b-8)))
            mul.append((ky << (s-4), kx << (s-4),
                        (((kx*ky) << (19-d))+((kx+ky)//2)) << (s-4)))
    a, bcoef, t, f_ref, _ = model.tables(c)
    assert div == list(zip(a.ravel().tolist(), bcoef.ravel().tolist(), t.ravel().tolist()))
    assert f == f_ref
    return div, mul


def values(inputs, c, divide):
    n, d, s = c['level'], c['d'], c['s']
    ix, iy, kx, ky, rx, ry = model.coords(inputs, n, d)
    if divide:
        co = np.asarray(c['coefficients'], dtype=np.int64)[iy]
        a = rounded_scale(co*ky, s-c['b']-4)
        b = rounded_scale(co*kx, s-c['b']-4)
        t = rounded_scale(co*kx*ky, s+23-d-c['b']-8)
        result = (t+a*rx-b*ry) << (d-s)
        assert np.array_equal(result, model.core(inputs, c))
        return result
    return ((kx*ky) << 15)+((rx*ky+ry*kx) << (d-4))+((kx+ky) << (d-5))


def core(c, name, entries, widths, mode):
    n, d, s = c['level'], c['d'], c['s']
    aw, bw, tw = widths
    rw = 23-n-d
    pw = rw+max(aw, bw)
    sw = max(pw+2, tw+2)
    # Bound every intermediate over the full residual range of every cell.
    lo, hi = -(1 << (rw-1)), (1 << (rw-1))-1
    for index, (a, b, t) in enumerate(entries):
        div = mode == 'div' or (mode == 'shared' and index >= 1 << (2*n))
        mn = t+a*lo+(-b*hi if div else b*lo)
        mx = t+a*hi+(-b*lo if div else b*hi)
        assert -(1 << (sw-1)) <= mn <= mx < (1 << (sw-1))
        assert Q//4 <= (mn << (d-s)) <= (mx << (d-s)) < (2*Q if div else 4*Q)
    port = ', input divide_mode' if mode == 'shared' else ''
    expr = 'ec+ex-ey' if mode == 'div' else 'ec+ex+ey'
    sign = ''
    if mode == 'shared':
        sign = f'wire signed [{sw-1}:0] signed_y=divide_mode ? -ey : ey;\n'
        expr = 'ec+ex+signed_y'
    return f'''module {name}(input [22:0] fx,fy{port}, output signed [28:0] value);
wire signed [{rw-1}:0] rx={prior.residual('fx',n,d)}, ry={prior.residual('fy',n,d)};
{prior.lookup(n,entries,aw,bw,tw,mode=mode == 'shared')}
wire signed [{pw-1}:0] px=rx*a, py=ry*b;
wire signed [{sw-1}:0] ex=px,ey=py,ec=t;
{sign}wire signed [{sw-1}:0] p={expr};
wire signed [28:0] extended=p;
assign value=extended <<< {d-s};
endmodule
'''


def generate(c, top, structure):
    div, mul = coefficients(c)
    widths = tuple(max(e[j] for e in div+mul).bit_length()+1 for j in range(3))
    if structure == 'shared':
        code = core(c, top+'_core', mul+div, widths, 'shared')
        body = f'{top}_core shared_core(fx,fy,divide_mode,core_value);'
    else:
        code = core(c, top+'_div', div, widths, 'div')+core(c, top+'_mul', mul, widths, 'mul')
        body = f'''wire signed [28:0] div_value,mul_value;
{top}_div div_core(fx,fy,div_value);
{top}_mul mul_core(fx,fy,mul_value);
assign core_value=divide_mode ? div_value : mul_value;'''
    return code+prior.shell(top, body), widths


def testbench(top, c, phase, count, vector_path, expected_path):
    refs, check = '', ''
    if phase == 'rtl':
        refs = f'''wire [31:0] div_ref,mul_ref;
{c['top']} dref(x,y,div_ref);
oadm_fixed_mul_root_opt #(.LEVEL({c['level']}),.RESIDUAL_DROP({c['d']})) mref(x,y,mul_ref);'''
        check = 'if(result !== (divide_mode ? div_ref : mul_ref)) $fatal(1,"RTL REFERENCE MISMATCH %0d mode=%0d",i,mode);'
    return f'''module tb;
reg [31:0] x,y; reg divide_mode; wire [31:0] result;
reg [63:0] vectors[0:{count-1}]; reg [31:0] expected[0:{2*count-1}];
integer i,mode,fd;
{top} dut(.x(x),.y(y),.divide_mode(divide_mode),.result(result));
{refs}
initial begin
$readmemh("{vector_path}",vectors);
$readmemh("{expected_path}",expected);
fd=$fopen("outputs.hex","w");
for(i=0;i<{count};i=i+1) begin
{{x,y}}=vectors[i];
for(mode=0;mode<2;mode=mode+1) begin
divide_mode=mode; #10;
if(result !== expected[2*i+mode]) $fatal(1,"MODEL MISMATCH %0d mode=%0d got=%h expected=%h",i,mode,result,expected[2*i+mode]);
{check}
$fdisplay(fd,"%08h",result);
end
end
$fclose(fd); $display("TUNING_CHECK PASS count={2*count}"); $finish;
end
endmodule
'''


def error_rows(inputs, outputs, n, group, dataset):
    x,y = inputs.T
    x,y = x.copy().view(np.float32).astype(float), y.copy().view(np.float32).astype(float)
    rows = []
    for mode, words in zip(('mul','div'), outputs.T):
        ref = x*y if mode == 'mul' else x/y
        error = words.copy().view(np.float32).astype(float)-ref
        rel = np.abs(error/ref)
        rows.append(dict(level=n,group=group,dataset=dataset,mode=mode,count=len(inputs),
                         mred=float(rel.mean()),rmse=float(np.sqrt(np.mean(error**2))),
                         mae=float(np.abs(error).mean()),max_relative=float(rel.max())))
    return rows


def main():
    inputs = np.load(OLD/'inputs.npy')
    indices = np.load(OLD/'gate_indices.npy')
    fresh = model.random_inputs(20260916, 200000)
    selected, accuracy, changes, configs = [], [], [], []
    bases = [c for c in json.loads((ABS/'selected.json').read_text()) if c['kind'] == 'quantized']
    for base in bases:
        n = base['level']
        old_outputs = np.column_stack((prior.pack(inputs, prior.mul_value(inputs,n),False), model.model(inputs,base)))
        for group, d in [('mul_drop',16-2*n),('div_drop',base['d'])]:
            c = dict(base,d=d,top=f'unified_{group}_l{n}_div_reference')
            c.pop('screen_matches_control',None)
            configs.append(dict(c,group=group))
            (HERE/(c['top']+'.v')).write_text(model.generate(c))
            outputs = np.column_stack([prior.pack(inputs,values(inputs,c,div),div) for div in (False,True)])
            if group == 'mul_drop':
                assert np.array_equal(outputs[:,0],old_outputs[:,0])
            else:
                assert np.array_equal(outputs[:,1],old_outputs[:,1])
            for j,mode in enumerate(('mul','div')):
                changes.append(dict(level=n,group=group,mode=mode,count=len(inputs),
                                    changed_outputs=int(np.count_nonzero(outputs[:,j] != old_outputs[:,j]))))
            for dataset,start,end in [('random_200k',0,200000),('boundary_grid',200000,331072),
                                      ('signed',331072,333072),('cell_edges_diagonal',333072,343790),
                                      ('residual_boundaries',343790,len(inputs))]:
                accuracy += error_rows(inputs[start:end],outputs[start:end],n,group,dataset)
            fresh_outputs = np.column_stack([prior.pack(fresh,values(fresh,c,div),div) for div in (False,True)])
            accuracy += error_rows(fresh,fresh_outputs,n,group,'fresh_200k_seed_20260916')
            for phase,idx in [('rtl',np.arange(len(inputs))),('gate',indices)]:
                expected = HERE/f'{group}_l{n}.{phase}.expected.hex'
                expected.write_text(''.join(f'{int(v):08x}\n' for v in outputs[idx].ravel()))
            for structure in ('separate','shared'):
                top = f'unified_{group}_l{n}_{structure}'
                rtl,widths = generate(c,top,structure)
                (HERE/(top+'.v')).write_text(rtl)
                selected.append(dict(top=top,level=n,group=group,structure=structure,d=d,s=c['s'],
                                     f=c['s']+23-d,residual_width=23-n-d,a_width=widths[0],b_width=widths[1],
                                     t_width=widths[2],div_reference=c['top']))
                for phase,count in [('rtl',len(inputs)),('gate',len(indices))]:
                    vector = OLD/('inputs.hex' if phase == 'rtl' else 'gate_inputs.hex')
                    expected = HERE/f'{group}_l{n}.{phase}.expected.hex'
                    (HERE/f'{top}.{phase}.tb.sv').write_text(testbench(top,c,phase,count,vector,expected))
    (HERE/'selected.json').write_text(json.dumps(selected,indent=2))
    (HERE/'configs.json').write_text(json.dumps(configs,indent=2))
    model.write_csv(HERE/'accuracy.csv',accuracy)
    model.write_csv(HERE/'changed_outputs.csv',changes)
    files = list(HERE.glob('*.py'))+list(HERE.glob('*.v'))+list(HERE.glob('*.sv'))+list(HERE.glob('*.hex'))
    files += [HERE/'selected.json',HERE/'configs.json',OLD/'prepare.py',OLD/'inputs.npy',OLD/'gate_indices.npy',
              OLD/'inputs.hex',OLD/'gate_inputs.hex',OLD/'ppa.csv',OLD/'accuracy.csv',ABS/'experiment.py',ABS/'run.py',
              ABS/'selected.json',MUL,ROOT/'PACE/common/FP_DIV_WRAPPER_32.v',
              ROOT/'dc/hier_compile_10ns/module.tcl',ROOT/'dc/common_scripts/common.tcl',
              ROOT/'dc/common_scripts/namingrules.tcl',ROOT/'pt_dc/canonical_refresh/pt.tcl',
              ROOT/'experiments/input_trunc_bias/collect.py']
    (HERE/'sources.json').write_text(json.dumps({str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in files},indent=2))
    print(f'Prepared {len(selected)} designs; {len(inputs)*2} RTL and {len(indices)*2} gate checks per design.',flush=True)


if __name__ == '__main__':
    main()
