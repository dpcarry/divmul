"""Exact implementation alternatives for the already selected midpoints."""
import json
import re
import prepare
import extend
from sweep import HERE


def generate(c):
    text=extend.generate(c)
    if not c.get('midpoint_shiftadd',False):return text
    level=c['level']
    for axis,other,d in [('x','y',c['dx']),('y','x',c['dy'])]:
        width=29-d
        terms=[f'({axis}_wide << 4)',f'({axis}_wide << {3-level})']
        for j in range(level):
            terms.append(f'({other}_mantissa[{23-level+j}] ? ({axis}_wide << {4-level+j}) : {width}\'d0)')
        expr=' + '.join(terms)
        pattern=rf'    wire signed \[28-[XY]_DROP:0\] {axis}_product = {axis}_residual_hi \* \$signed\({other}_midpoint\);'
        replacement=f'    wire signed [{width-1}:0] {axis}_wide = {axis}_residual_hi;\n    wire signed [{width-1}:0] {axis}_product = {expr};'
        text,count=re.subn(pattern,replacement,text)
        assert count==1,(axis,count)
    old='    wire [9:0] midpoint_product = x_midpoint * y_midpoint;'
    new=f'    reg [9:0] midpoint_product;\n    always @* begin\n        case ({{x_mantissa[22:{23-level}], y_mantissa[22:{23-level}]}})\n'
    for ix in range(1<<level):
        for iy in range(1<<level):
            kx,ky=16+(2*ix+1)*(8>>level),16+(2*iy+1)*(8>>level)
            new+=f'            {2*level}\'d{(ix<<level)|iy}: midpoint_product = 10\'d{kx*ky};\n'
    new+="            default: midpoint_product = 10'd0;\n        endcase\n    end"
    assert old in text
    return text.replace(old,new)


def main():
    selected=json.loads((HERE/'selected.json').read_text())
    selected=[c for c in selected if not c.get('midpoint_shiftadd',False)]
    pairs=json.loads((HERE/'ablation_pairs.json').read_text())
    pairs=[p for p in pairs if p['kind']!='exact_midpoint_implementation']
    bytop={c['top']:c for c in selected}
    for i in (0,4,5):
        old=bytop[f'stdm_tune_{i:02d}']
        new=dict(old,top=old['top']+'_midpoint',midpoint_shiftadd=True)
        selected.append(new)
        pairs.append(dict(reference=old['top'],candidate=new['top'],kind='exact_midpoint_implementation'))
    (HERE/'selected.json').write_text(json.dumps(selected,indent=2))
    (HERE/'ablation_pairs.json').write_text(json.dumps(pairs,indent=2))
    prepare.generate=generate
    prepare.main()
    for p in pairs:
        assert (HERE/(p['reference']+'.rtl.expected.hex')).read_bytes()==(HERE/(p['candidate']+'.rtl.expected.hex')).read_bytes(),p
    print('Midpoint implementation variants prepared; all expected outputs identical.')


if __name__=='__main__':main()
