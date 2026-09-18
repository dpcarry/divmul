"""Generate isolated RTL and tests after coefficient selection is frozen."""
import hashlib
import json
import re

import numpy as np

from sweep import HERE, ROOT, Q, core, stats, write_csv


def model(inputs,c):
    xy=(inputs.astype(np.int64)&(Q-1))+Q
    v=core(xy,c)
    assert np.all((v>=Q//4)&(v<2*Q)), (c['top'],int(v.min()),int(v.max()))
    adjust=np.where(v>=Q,0,np.where(v>=Q//2,-1,-2))
    fraction=(v << -adjust)&(Q-1)
    x,y=inputs.astype(np.int64).T
    exponent=(((x>>23)&255)-((y>>23)&255)+127+adjust)&255
    return (((x^y)&(1<<31))|(exponent<<23)|fraction).astype(np.uint32)


def generate(c):
    source=(ROOT/'experiments/fixed_div_level_specialization/specialized_rtl.v').read_text()
    source=source[:source.index('\nmodule oadm_fixed_l0_div_specialized')]
    source=source.replace('oadm_fixed_div_specialized',c['top']+'_core')
    source=source.replace('parameter integer RESIDUAL_DROP = 18',
                          'parameter integer X_DROP = 18,\n    parameter integer Y_DROP = 18')
    source=source.replace('.RESIDUAL_DROP(RESIDUAL_DROP)', '.X_DROP(X_DROP), .Y_DROP(Y_DROP)')
    start=source.index('    wire signed [22-RESIDUAL_DROP:0]')
    end=source.index('    wire [9:0] midpoint_product',start)
    product=''
    for axis,other,drop in [('x','y','X_DROP'),('y','x','Y_DROP')]:
        high=22-c['level'] if c.get('narrow',False) else 22
        product+=f'''    wire signed [{high}-{drop}:0] {axis}_residual_hi = {axis}_residual[{high}:{drop}];
    wire signed [{high+6}-{drop}:0] {axis}_product = {axis}_residual_hi * $signed({other}_midpoint);
    wire signed [28:0] {axis}_product_extended = {axis}_product;
    wire signed [28:0] {axis}_term = {axis}_product_extended <<< ({drop}-4);
'''
    source=source[:start]+product+source[end:]
    source=source.replace('parameter [7:0] C','parameter [COEFFICIENT_BITS-1:0] C')
    p=23-c.get('input_bits',23)
    if p:
        for a in ('x','y'):
            source=source.replace("{1'b1, "+a+"_fraction}","{1'b1, "+a+f"_fraction[22:{p}], {p}'b0"+'}')
    # Constant shift-add alternatives distribute the coefficient selection over
    # constant products. This is an equivalence experiment, not a new formula.
    style=c.get('style','direct')
    if style!='direct':
        old='''    wire [24-WN_DROP+COEFFICIENT_BITS:0] reduced_scale_product =
        plane_full[24:WN_DROP] * coefficient;'''
        replacement='    wire [24-WN_DROP+COEFFICIENT_BITS:0] operand = plane_full[24:WN_DROP];\n'
        for i,value in enumerate(c['coefficients']):
            terms=[]
            bit=0
            while value:
                if value&1:
                    digit=1 if style=='binary' or value==1 else 2-(value%4)
                    terms.append((digit,bit));value-=digit
                value//=2;bit+=1
            expr=' '.join(('+' if sign>0 else '-')+f' (operand << {bit})' for sign,bit in terms)
            replacement+=f'    wire [24-WN_DROP+COEFFICIENT_BITS:0] cp{i} = {expr};\n'
        mux=f'cp{len(c["coefficients"])-1}'
        for i in reversed(range(len(c['coefficients'])-1)):
            mux=f"(y_mantissa[22:{23-c['level']}] == {c['level']}'d{i}) ? cp{i} : ({mux})"
        replacement+='    wire [24-WN_DROP+COEFFICIENT_BITS:0] reduced_scale_product = '+mux+';'
        assert old in source
        source=source.replace(old,replacement)
    params=f'.LEVEL({c["level"]}), .X_DROP({c["dx"]}), .Y_DROP({c["dy"]}), .WN_DROP({c["w"]}), .COEFFICIENT_BITS({c["b"]})'
    params+= ''.join(f', .C{i}({c["b"]}\'d{v})' for i,v in enumerate(c['coefficients']))
    source+=f'\nmodule {c["top"]}(input [31:0] x,y, output [31:0] result);\n{c["top"]}_core #({params}) implementation(x,y,result);\nendmodule\n'
    assert 'RESIDUAL_DROP' not in source
    return source


def main():
    selected=json.loads((HERE/'selected.json').read_text())
    inputs=np.load(ROOT/'experiments/fpd2d/inputs.npy')
    # Explicit diagonal and all level-cell boundaries, including each adjacent code.
    edges=sorted(set([0,Q-1]+[max(0,min(Q-1,v+d)) for v in range(0,Q,1<<19) for d in (-1,0,1)]))
    extra=np.array([(0x3f800000+x,0x3f800000+y) for x in edges for y in edges],dtype=np.uint32)
    diagonal=np.array([(0x3f800000+x,0x3f800000+x) for x in range(0,Q,997)],dtype=np.uint32)
    inputs=np.concatenate([inputs,extra,diagonal])
    np.save(HERE/'inputs.npy',inputs)
    # Gate vectors cover random inputs, both retained-code boundary grids,
    # all signed cases and the added cell-boundary/diagonal sets.
    gate_indices=np.unique(np.r_[np.arange(4096),np.arange(200000,331072,31),np.arange(331072,len(inputs))])
    np.save(HERE/'gate_indices.npy',gate_indices)
    for name,values in [('inputs',inputs),('gate_inputs',inputs[gate_indices])]:
        (HERE/(name+'.hex')).write_text(''.join(f'{int(x):08x}{int(y):08x}\n' for x,y in values))
    accuracy=[]
    for c in selected:
        top=c['top']
        (HERE/(top+'.v')).write_text(generate(c))
        expected=model(inputs,c)
        for phase,indices in [('rtl',np.arange(len(inputs))),('gate',gate_indices)]:
            (HERE/f'{top}.{phase}.expected.hex').write_text(''.join(f'{int(v):08x}\n' for v in expected[indices]))
            inpath=HERE/('inputs.hex' if phase=='rtl' else 'gate_inputs.hex')
            tb=f'''module tb;
reg [31:0] x,y;
wire [31:0] result;
reg [63:0] vectors[0:{len(indices)-1}];
reg [31:0] expected[0:{len(indices)-1}];
integer i,fd;
{top} dut(x,y,result);
initial begin
  $readmemh("{inpath}",vectors);
  $readmemh("{HERE/f'{top}.{phase}.expected.hex'}",expected);
  fd=$fopen("outputs.hex","w");
  for(i=0;i<{len(indices)};i=i+1) begin
    {{x,y}}=vectors[i]; #10;
    if(result !== expected[i]) $fatal(1,"MISMATCH %0d %h %h",i,result,expected[i]);
    $fdisplay(fd,"%08h",result);
  end
  $fclose(fd); $display("TUNING_CHECK PASS count={len(indices)}"); $finish;
end
endmodule
'''
            (HERE/f'{top}.{phase}.tb.sv').write_text(tb)
        actual=expected.view(np.float32).astype(np.float64)
        ref=inputs[:,0].copy().view(np.float32).astype(np.float64)/inputs[:,1].copy().view(np.float32).astype(np.float64)
        for dataset,start,end in [('random_200k',0,200000),('grid_low',200000,265536),('grid_high',265536,331072),('signed',331072,333072),('cell_boundaries',333072,333072+len(extra)),('diagonal',333072+len(extra),len(inputs))]:
            accuracy.append(dict(top=top,dataset=dataset,count=end-start,**stats(actual[start:end],ref[start:end])))
        # Independent fresh dataset is reported separately; not used to retune.
        from sweep import data
        fresh=(data(2026091603,200000)-Q+0x3f800000).astype(np.uint32)
        a=model(fresh,c).view(np.float32).astype(np.float64)
        r=fresh[:,0].copy().view(np.float32).astype(np.float64)/fresh[:,1].copy().view(np.float32).astype(np.float64)
        accuracy.append(dict(top=top,dataset='independent_200k',count=len(fresh),**stats(a,r)))
    write_csv(HERE/'accuracy_model.csv',accuracy)
    sources=[HERE/(c['top']+'.v') for c in selected]+[ROOT/'PACE/common/FP_DIV_WRAPPER_32.v']
    sources+=list(HERE.glob('*.py'))+[HERE/'selected.json',HERE/'inputs.npy',HERE/'gate_indices.npy']
    (HERE/'sources.json').write_text(json.dumps({str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sources},indent=2))
    print(f'Prepared {len(selected)} designs; {len(inputs)} RTL vectors, {len(gate_indices)} gate vectors.',flush=True)


if __name__=='__main__':main()
