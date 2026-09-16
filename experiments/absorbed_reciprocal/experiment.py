"""Generate and evaluate centered planes with the reciprocal absorbed offline."""
import csv
import hashlib
import json
from pathlib import Path

import numpy as np

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
ORIGINAL = ROOT.parent / 'research'
Q = 1 << 23
CS = [[59], [83, 42], [203, 136, 97, 73], [227, 182, 149, 124, 105, 90, 78, 68]]


def write_csv(path, rows):
    with path.open('w', newline='') as f:
        w = csv.DictWriter(f, fieldnames=list(rows[0]))
        w.writeheader()
        w.writerows(rows)


def coords(inputs, n, d):
    x, y = ((inputs.astype(np.int64) & (Q-1)) + Q).T
    ix, iy = (x-Q) >> (23-n), (y-Q) >> (23-n)
    kx, ky = 16 + (2*ix+1)*(8 >> n), 16 + (2*iy+1)*(8 >> n)
    rx, ry = (x-(kx << 19)) >> d, (y-(ky << 19)) >> d
    return ix, iy, kx, ky, rx, ry


def tables(c):
    n, d, b = c['level'], c['d'], c['b']
    k = 16 + (2*np.arange(1 << n)+1)*(8 >> n)
    ky, kx = np.meshgrid(k, k, indexing='ij')
    coef = np.array(c['coefficients'])[:, None]
    if c['kind'] == 'exact':
        a = np.broadcast_to(coef*ky, kx.shape)
        z = coef*kx
        f, shift = max(b+8, b+27-d), max(0, d-19)
        t = (coef*kx*ky) << (f-b-8)
    else:
        s = c['s']
        f, shift = s+23-d, 0
        a = np.floor(coef*ky*2.0**(s-b-4)+0.5).astype(np.int64)
        z = np.floor(coef*kx*2.0**(s-b-4)+0.5).astype(np.int64)
        t = np.floor(coef*kx*ky*2.0**(f-b-8)+0.5).astype(np.int64)
    return a.astype(np.int64), z.astype(np.int64), t.astype(np.int64), f, shift


def core(inputs, c):
    ix, iy, kx, ky, rx, ry = coords(inputs, c['level'], c['d'])
    co = np.array(c['coefficients'])[iy]
    plane = (kx*ky << 15) + (rx*ky << (c['d']-4)) - (ry*kx << (c['d']-4))
    if c['kind'] == 'control':
        return ((plane >> c['d'])*co) << (c['d']-c['b'])
    if c['kind'] == 'unabsorbed':
        return (plane*co) >> c['b']
    a, z, t, f, shift = tables(c)
    p = t[iy, ix] + ((a[iy, ix]*rx-z[iy, ix]*ry) << shift)
    result = p << (23-f)
    if c['kind'] == 'exact':
        assert np.array_equal(result, (plane*co) >> c['b'])
    return result


def model(inputs, c):
    v = core(inputs, c)
    assert np.all((v >= Q//4) & (v < 2*Q)), (c, v.min(), v.max())
    adj = np.where(v >= Q, 0, np.where(v >= Q//2, -1, -2))
    frac = (v << -adj) & (Q-1)
    x, y = inputs.astype(np.int64).T
    e = (((x >> 23)&255)-((y >> 23)&255)+127+adj)&255
    return (((x^y)&(1 << 31)) | (e << 23) | frac).astype(np.uint32)


def stats(inputs, c):
    value = model(inputs, c).view(np.float32).astype(np.float64)
    ref = inputs[:, 0].copy().view(np.float32).astype(np.float64) / inputs[:, 1].copy().view(np.float32).astype(np.float64)
    err = value-ref
    rel = np.abs(err/ref)
    return dict(mred=float(rel.mean()), rmse=float(np.sqrt(np.mean(err*err))),
                mae=float(np.abs(err).mean()), mean_error=float(err.mean()),
                max_relative=float(rel.max()), p99_relative=float(np.quantile(rel, .99)))


def random_inputs(seed, count):
    return np.random.default_rng(seed).integers(0, Q, (count, 2), dtype=np.uint32)+np.uint32(0x3f800000)


def generate(c):
    top, n, d = c['top'], c['level'], c['d']
    if c['kind'] in ('control', 'unabsorbed'):
        src = (ROOT/'experiments/fixed_div_level_specialization/specialized_rtl.v').read_text()
        if c['kind'] == 'unabsorbed':
            start = src.index('    wire [24-WN_DROP+COEFFICIENT_BITS:0] reduced_scale_product')
            end = src.index('    reg [22:0] normalized_fraction;', start)
            src = src[:start]+'''    wire [28+COEFFICIENT_BITS:0] full_scale_product = plane_full * coefficient;
    wire signed [28:0] core_value = full_scale_product >> COEFFICIENT_BITS;

'''+src[end:]
        return src+f'\nmodule {top}(input [31:0] x,y, output [31:0] result);\noadm_fixed_l{n}_div_specialized dut(x,y,result);\nendmodule\n'
    a, z, t, f, shift = tables(c)
    rw = 23-n-d
    aw, bw, tw = int(a.max()).bit_length()+1, int(z.max()).bit_length()+1, int(t.max()).bit_length()+1
    pw = max(aw, bw)+rw
    sw = max(pw+shift+2, tw+2)
    addr = "1'b0" if n == 0 else f'{{fy[22:{23-n}],fx[22:{23-n}]}}'
    cases = '\n'.join(f"{max(1,2*n)}'d{iy*(1<<n)+ix}: begin a={aw}'sd{a[iy,ix]}; b={bw}'sd{z[iy,ix]}; c={tw}'sd{t[iy,ix]}; end"
                      for iy in range(1 << n) for ix in range(1 << n))
    lookup = f'''reg signed [{aw-1}:0] a;
reg signed [{bw-1}:0] b;
reg signed [{tw-1}:0] c;
always @* begin
case ({addr})
{cases}
default: begin a=0; b=0; c=0; end
endcase
end'''
    if n == 0:
        lookup = f'''wire signed [{aw-1}:0] a={aw}'sd{a[0,0]};
wire signed [{bw-1}:0] b={bw}'sd{z[0,0]};
wire signed [{tw-1}:0] c={tw}'sd{t[0,0]};'''
    recode = lambda axis: f'~{axis}[{22-n}]' if rw == 1 else f'{{~{axis}[{22-n}],{axis}[{21-n}:{d}]}}'
    return f'''module {top}(input [31:0] x,y, output [31:0] result);
wire [22:0] fx,fy;
wire signed [{rw-1}:0] rx={recode('fx')}, ry={recode('fy')};
{lookup}
wire signed [{pw-1}:0] px=rx*a, py=ry*b;
wire signed [{sw-1}:0] ex=px, ey=py, ec=c;
wire signed [{sw-1}:0] p=ec+(ex << {shift})-(ey << {shift});
wire signed [28:0] p_extended=p;
wire signed [28:0] value=p_extended <<< {23-f};
reg [22:0] frac;
reg signed [2:0] adjust;
always @* begin
if (value[23]) begin frac=value[22:0]; adjust=0; end
else if (value[22]) begin frac={{value[21:0],1'b0}}; adjust=-3'sd1; end
else begin frac={{value[20:0],2'b0}}; adjust=-3'sd2; end
end
fp32_normal_finite_wrapper wrapper(.x(x),.y(y),.divide_mode(1'b1),
.fraction_x(fx),.fraction_y(fy),.result_fraction(frac),.exponent_adjust(adjust),.result(result));
endmodule
'''


def main():
    train = random_inputs(2026091701, 65536)
    screen = random_inputs(2026091702, 65536)
    selected, screened, aliases = [], [], []
    for n in range(4):
        base = dict(level=n, d=18 if n == 0 else 16, b=7 if n < 2 else 8, coefficients=CS[n])
        control = dict(base, kind='control', top=f'abs_l{n}_control')
        selected += [control, dict(base, kind='unabsorbed', top=f'abs_l{n}_no_w'),
                     dict(base, kind='exact', top=f'abs_l{n}_exact')]
        target = stats(screen, control)
        ix, iy, kx, ky, rx, ry = coords(train, n, base['d'])
        w = (kx*ky/256 + (rx*ky-ry*kx)*2.0**(base['d']-27))
        xy = (train.astype(np.int64)&(Q-1))+Q
        ref = xy[:, 0]/xy[:, 1]
        calibrated = [int(np.floor(np.sum(w[iy == j]*ref[iy == j])/np.sum(w[iy == j]**2)*2**base['b']+.5)) for j in range(1 << n)]
        for family, coef in [('inherited', CS[n]), ('calibrated', calibrated)]:
            candidates = []
            for s in range(2, 13):
                c = dict(base, coefficients=coef, kind='quantized', family=family, s=s,
                         top=f'abs_l{n}_{family}_s{s}')
                met = stats(screen, c)
                candidates.append((c, met))
                screened.append(dict(top=c['top'], level=n, family=family, s=s, **met))
            good = [(c, m) for c, m in candidates if m['mred'] <= target['mred'] and m['rmse'] <= target['rmse']]
            c, _ = min(good, key=lambda cm: cm[0]['s']) if good else min(candidates, key=lambda cm: cm[1]['rmse'])
            c['screen_matches_control'] = bool(good)
            if family == 'calibrated' and coef == CS[n]:
                aliases.append(dict(top=c['top'], equivalent_to=c['top'].replace('calibrated', 'inherited'),
                                    reason='Recalibration selected the same reciprocal integers.'))
            else:
                selected.append(c)
    write_csv(HERE/'screen.csv', screened)
    (HERE/'selected.json').write_text(json.dumps(selected, indent=2))
    (HERE/'aliases.json').write_text(json.dumps(aliases, indent=2))
    # Use the existing paired dataset, including boundary grids and signed inputs.
    origin = HERE/'inputs.npy'
    if not origin.exists():
        origin = ORIGINAL/'experiments/stdm_fpd2d_tuning/inputs.npy'
    inputs = np.load(origin)
    np.save(HERE/'inputs.npy', inputs)
    gate_origin = HERE/'gate_indices.npy'
    if not gate_origin.exists():
        gate_origin = ORIGINAL/'experiments/stdm_fpd2d_tuning/gate_indices.npy'
    indices = np.load(gate_origin)
    np.save(HERE/'gate_indices.npy', indices)
    fresh = random_inputs(2026091703, 200000)
    np.save(HERE/'independent_inputs.npy', fresh)
    for name, values in [('inputs', inputs), ('gate_inputs', inputs[indices])]:
        (HERE/(name+'.hex')).write_text(''.join(f'{int(x):08x}{int(y):08x}\n' for x,y in values))
    rows = []
    for c in selected:
        top = c['top']
        (HERE/(top+'.v')).write_text(generate(c))
        expected = model(inputs, c)
        if c['kind'] not in ('control', 'unabsorbed'):
            a,b,t,f,shift = tables(c)
            (HERE/(top+'.coefficients.json')).write_text(json.dumps(dict(a=a.tolist(), b=b.tolist(), constant=t.tolist(), output_fraction_bits=f, product_shift=shift), indent=2))
        for phase, idx in [('rtl', np.arange(len(inputs))), ('gate', indices)]:
            expected_path = HERE/f'{top}.{phase}.expected.hex'
            expected_path.write_text(''.join(f'{int(v):08x}\n' for v in expected[idx]))
            input_path = HERE/('inputs.hex' if phase == 'rtl' else 'gate_inputs.hex')
            (HERE/f'{top}.{phase}.tb.sv').write_text(f'''module tb;
reg [31:0] x,y; wire [31:0] result;
reg [63:0] vectors[0:{len(idx)-1}]; reg [31:0] expected[0:{len(idx)-1}];
integer i,fd; {top} dut(x,y,result);
initial begin
$readmemh("{input_path}",vectors); $readmemh("{expected_path}",expected);
fd=$fopen("outputs.hex","w");
for(i=0;i<{len(idx)};i=i+1) begin
{{x,y}}=vectors[i]; #10;
if(result !== expected[i]) $fatal(1,"MISMATCH %0d %h %h",i,result,expected[i]);
$fdisplay(fd,"%08h",result);
end
$fclose(fd); $display("TUNING_CHECK PASS count={len(idx)}"); $finish;
end
endmodule
''')
        for name, values in [('random_200k', inputs[:200000]), ('boundary_grid', inputs[200000:331072]),
                             ('signed', inputs[331072:333072]), ('cell_edges_diagonal', inputs[333072:]),
                             ('independent_200k', fresh)]:
            rows.append(dict(top=top, level=c['level'], kind=c['kind'], dataset=name, count=len(values), **stats(values, c)))
    write_csv(HERE/'accuracy.csv', rows)
    files = list(HERE.glob('*.py'))+list(HERE.glob('*.v'))+[HERE/'selected.json', HERE/'inputs.npy', HERE/'gate_indices.npy', HERE/'independent_inputs.npy',
        ROOT/'PACE/common/FP_DIV_WRAPPER_32.v', ROOT/'experiments/fixed_div_level_specialization/specialized_rtl.v',
        ROOT/'dc/hier_compile_10ns/module.tcl', ROOT/'pt_dc/canonical_refresh/pt.tcl',
        ROOT/'dc/common_scripts/common.tcl', ROOT/'dc/common_scripts/namingrules.tcl']
    (HERE/'sources.json').write_text(json.dumps({str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in files}, indent=2))
    print(json.dumps(selected, indent=2))
    print(f'Prepared {len(selected)} designs; RTL {len(inputs)}, gate {len(indices)}')


if __name__ == '__main__':
    main()
