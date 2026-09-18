"""Reconstruct published Fig. 6 coefficients and Fig. 5 fused arithmetic."""
import hashlib
import json
from pathlib import Path
import numpy as np

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
# Rows are k (y), columns h (x). Signed B is transcribed as printed.
TABLES = {
    '2x4': [
        [(4,-4,127),(4,-6,191)],
        [(3,-3,104),(3,-4,155)],
        [(2,-2,90),(2,-3,134)],
        [(2,-1,73),(2,-2,112)]],
    '2x8': [
        [(4,-4,127),(4,-6,191)],
        [(3,-3,116),(3,-5,175)],
        [(3,-3,104),(3,-4,155)],
        [(3,-2,92),(3,-3,138)],
        [(3,-2,83),(3,-3,126)],
        [(2,-2,83),(2,-2,120)],
        [(2,-1,74),(2,-2,111)],
        [(2,-1,69),(2,-2,104)]],
    '4x8': [
        [(4,-4,128),(4,-5,160),(4,-6,192),(4,-6,222)],
        [(3,-3,115),(3,-4,144),(3,-5,173),(3,-5,200)],
        [(3,-3,104),(3,-3,128),(3,-4,155),(3,-4,179)],
        [(3,-2,92),(3,-3,116),(3,-3,139),(3,-4,163)],
        [(3,-2,84),(3,-2,105),(3,-3,127),(3,-3,148)],
        [(2,-2,81),(2,-2,100),(2,-2,119),(2,-3,140)],
        [(2,-1,73),(2,-2,93),(2,-2,111),(2,-2,128)],
        [(2,-1,69),(2,-1,85),(2,-2,103),(2,-2,120)]],
    '8x8': [
        [(4,-4,128),(4,-4,143),(4,-5,160),(4,-5,175),(4,-6,192),(4,-6,208),(4,-6,233),(4,-7,239)],
        [(3,-3,115),(3,-3,128),(4,-4,128),(3,-4,157),(3,-4,170),(3,-5,186),(3,-5,200),(3,-5,213)],
        [(3,-2,102),(3,-3,116),(3,-3,128),(3,-3,140),(3,-4,154),(3,-4,167),(3,-4,179),(3,-4,191)],
        [(3,-2,93),(3,-2,104),(3,-3,117),(3,-3,128),(3,-3,139),(3,-4,150),(3,-4,163),(3,-4,175)],
        [(3,-2,85),(3,-2,95),(3,-2,106),(3,-2,116),(3,-3,128),(3,-3,138),(3,-3,149),(3,-3,159)],
        [(2,-2,81),(2,-2,90),(2,-2,100),(2,-2,109),(2,-2,119),(2,-2,128),(3,-3,140),(3,-3,149)],
        [(2,-1,73),(2,-1,82),(2,-2,93),(2,-2,102),(2,-2,110),(2,-2,119),(2,-2,128),(2,-2,137)],
        [(2,-1,69),(2,-1,76),(2,-1,85),(2,-2,95),(2,-2,103),(2,-2,112),(2,-2,120),(2,-2,128)]]}
CONFIGS = [(2,4,19,1.98),(2,8,18,1.19),(2,8,17,.96),
           (4,8,17,.66),(8,8,17,.54),(8,8,16,.42),(8,8,15,.39)]


def model(x, y, nx, ny, t):
    fx = x.astype(np.int64) & 0x7fffff
    fy = y.astype(np.int64) & 0x7fffff
    lx, ly = nx.bit_length()-1, ny.bit_length()-1
    h, k = fx >> (23-lx), fy >> (23-ly)
    a,b,c = np.array(TABLES[f'{nx}x{ny}'])[k,h].T
    u = (fx & ((1 << (23-lx))-1)) >> t
    v = (fy & ((1 << (23-ly))-1)) >> t
    f = max(25-t, 7)
    p = ((a*u+b*v) << (f+t-25)) + (c << (f-7))
    assert np.all((p >= (1 << (f-1))) & (p < (2 << f)))
    shift = p < (1 << f)
    fraction = ((p << shift.astype(int)) & ((1 << f)-1)) << (23-f)
    exp = (((x >> 23)&255).astype(int)-((y >> 23)&255).astype(int)+127-shift) & 255
    return (((x^y)&0x80000000) | (exp << 23) | fraction).astype(np.uint32)


def rtl(nx, ny, t):
    name = f'fpd2d_{nx}x{ny}_t{t}'
    lx, ly = nx.bit_length()-1, ny.bit_length()-1
    ux, uy = 23-lx-t, 23-ly-t
    f = max(25-t, 7)
    w = f+2
    lines = [f'module {name}_core(input [22:0] x, y, output [22:0] fraction, output shift);',
             'reg [2:0] a, bmag; reg [7:0] c;',
             f'always @* begin\ncase ({{y[22:{23-ly}],x[22:{23-lx}]}})']
    for k,row in enumerate(TABLES[f'{nx}x{ny}']):
        for h,(a,b,c) in enumerate(row):
            lines.append(f"{lx+ly}'d{k*nx+h}: begin a=3'd{a}; bmag=3'd{-b}; c=8'd{c}; end")
    lines += ["default: begin a=0; bmag=0; c=0; end", 'endcase\nend',
              f'wire [{ux-1}:0] u=x[{22-lx}:{t}];',
              f'wire [{uy-1}:0] v=y[{22-ly}:{t}];']
    # One's-complement negative rows plus three carry-in ones implement -B*v.
    nodes=[]
    for operand,coef in [('u','a'),('v','bmag')]:
        for bit in range(3):
            term=f'{operand}{bit}'
            op_width = ux if operand=='u' else uy
            expr=f"({{{{{w-op_width}{{1'b0}}}},{operand}}} << {bit+f+t-25})"
            expr=f"({coef}[{bit}] ? {expr} : {w}'d0)"
            if operand=='v': expr=f'~{expr}'
            lines.append(f'wire [{w-1}:0] {term} = {expr};')
            nodes.append(term)
    lines += [f'wire [{w-1}:0] cterm = ({{{{{w-8}{{1\'b0}}}},c}} << {f-7});',
              f"wire [{w-1}:0] correction = {w}'d3;"]
    nodes += ['cterm','correction']
    stage=0
    while len(nodes)>2:
        nxt=[]
        for j in range(0,len(nodes)-2,3):
            a,b,c=nodes[j:j+3]; sn=f's{stage}_{j}';cn=f'c{stage}_{j}'
            lines += [f'wire [{w-1}:0] {sn} = {a} ^ {b} ^ {c};',
                      f'wire [{w-1}:0] {cn} = (({a}&{b})|({a}&{c})|({b}&{c})) << 1;']
            nxt += [sn,cn]
        nxt += nodes[(len(nodes)//3)*3:];nodes=nxt;stage+=1
    lines += [f'wire [{w-1}:0] p = {nodes[0]} + {nodes[1]};',
              f'assign shift = ~p[{f}];',
              f"wire [{f-1}:0] frac_narrow = shift ? {{p[{f-2}:0],1'b0}} : p[{f-1}:0];",
              f"assign fraction = {{frac_narrow, {{{23-f}{{1'b0}}}}}};", 'endmodule',
              f'module {name}(input [31:0] x,y, output [31:0] result);',
              'wire [22:0] fx,fy,fo; wire shift;',
              "wire signed [2:0] adjust = shift ? -3'sd1 : 3'sd0;",
              f'{name}_core core(.x(fx),.y(fy),.fraction(fo),.shift(shift));',
              "fp32_normal_finite_wrapper wrapper(.x(x),.y(y),.divide_mode(1'b1),",
              '.fraction_x(fx),.fraction_y(fy),.result_fraction(fo),.exponent_adjust(adjust),.result(result));',
              'endmodule']
    return '\n'.join(lines)


def main():
    (HERE/'coefficients.json').write_text(json.dumps(TABLES,indent=2)+'\n')
    (HERE/'fpd2d.v').write_text('// Reconstructed from Di Meo et al., Fig. 5/6 and Eq. 18.\n'+
                              '\n\n'.join(rtl(*cfg[:3]) for cfg in CONFIGS)+'\n')
    rng=np.random.default_rng(20260915)
    fx=rng.integers(0,1<<23,size=200000,dtype=np.uint32)
    fy=rng.integers(0,1<<23,size=200000,dtype=np.uint32)
    pairs=[(int(x|0x3f800000),int(y|0x3f800000)) for x,y in zip(fx,fy)]
    # Exhaust all retained codes at the finest t, including both sides of cells.
    for x in range(256):
        for y in range(256): pairs.append((0x3f800000|(x<<15),0x3f800000|(y<<15)))
    for x in range(256):
        for y in range(256): pairs.append((0x3f800000|(x<<15)|32767,0x3f800000|(y<<15)|32767))
    for _ in range(2000):
        x=int(rng.integers(0,1<<23))|(int(rng.integers(110,145))<<23)|(int(rng.integers(0,2))<<31)
        y=int(rng.integers(0,1<<23))|(int(rng.integers(110,145))<<23)|(int(rng.integers(0,2))<<31)
        pairs.append((x,y))
    xy=np.array(pairs,dtype=np.uint32)
    np.save(HERE/'inputs.npy',xy)
    (HERE/'inputs.hex').write_text(''.join(f'{x:08x}{y:08x}\n' for x,y in pairs))
    designs=[]
    for nx,ny,t,paper in CONFIGS:
        top=f'fpd2d_{nx}x{ny}_t{t}'
        expected=model(xy[:,0],xy[:,1],nx,ny,t)
        (HERE/f'{top}.expected.hex').write_text(''.join(f'{o:08x}\n' for o in expected))
        designs.append(dict(top=top,family='FPD2D',nx=nx,ny=ny,t=t,paper_mred_pct=paper))
    for level in range(4):
        designs.append(dict(top=f'oadm_fixed_l{level}_div_specialized',family='STDM',level=level))
    (HERE/'designs.json').write_text(json.dumps(designs,indent=2)+'\n')
    for d in designs:
        top=d['top'];expected=''
        if d['family']=='FPD2D':
            expected=f'$readmemh("{HERE}/{top}.expected.hex", expected);'
        check=''
        if d['family']=='FPD2D':
            check='if (result !== expected[i]) $fatal(1,"MODEL mismatch at %0d: %h %h",i,result,expected[i]);'
        tb=f'''module tb;
reg [31:0] x,y; wire [31:0] result;
reg [63:0] inputs [0:{len(pairs)-1}];
reg [31:0] expected [0:{len(pairs)-1}];
integer i,fd;
{top} dut(.x(x),.y(y),.result(result));
initial begin
$readmemh("{HERE}/inputs.hex",inputs);
{expected}
fd=$fopen("outputs.hex","w");
for(i=0;i<{len(pairs)};i=i+1) begin
{{x,y}}=inputs[i]; #10;
if ((^result) === 1'bx) $fatal(1,"Unknown output %0d",i);
{check}
$fdisplay(fd,"%08h",result);
end
$fclose(fd);
$display("FPD2D_CHECK PASS count={len(pairs)}"); $finish;
end
endmodule
'''
        (HERE/f'{top}.tb.sv').write_text(tb)
    sources=[HERE/'fpd2d.v',HERE/'coefficients.json',HERE/'inputs.hex',
             ROOT/'PACE/common/FP_DIV_WRAPPER_32.v',
             ROOT/'experiments/fixed_div_level_specialization/specialized_rtl.v',
             ROOT/'dc/hier_compile_10ns/module.tcl',ROOT/'pt_dc/canonical_refresh/pt.tcl']
    (HERE/'sources.json').write_text(json.dumps({str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sources},indent=2)+'\n')
    print(f'Prepared {len(designs)} designs; {len(pairs)} inputs each.')


if __name__=='__main__':main()
