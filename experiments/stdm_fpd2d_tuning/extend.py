"""Add equivalent width/constant-multiply variants and input-mask ablations."""
import json
import numpy as np
import prepare
from sweep import HERE, calibrate, core, data

original_generate=prepare.generate


def generate(c):
    text=original_generate(c)
    if not c.get('narrow',False):return text
    # Remove provably zero low columns and unused sign-extension columns from
    # the plane adder. This is the same modulo-2^25 transformation previously
    # used in experiments/oadm_input_width/narrow.v, with independent Dx/Dy.
    s=min(15,c['dx']-4,c['dy']-4)
    width=25-s
    start=text.index('    wire signed [28:0] constant_term')
    end=text.index('\nendmodule',start)
    text=text[:start]+f'''    wire signed [{width-1}:0] compact_x = x_product;
    wire signed [{width-1}:0] compact_y = y_product;
    wire [{width-1}:0] compact_k = midpoint_product;
    wire [{width-1}:0] compact_sum = (compact_k << {15-s})
        + (compact_x <<< {c['dx']-4-s}) - (compact_y <<< {c['dy']-4-s});
    assign plane_exact = {{4'b0,compact_sum,{s}'b0}};
'''+text[end:]
    return text


def main():
    selected=json.loads((HERE/'selected.json').read_text())
    if not (HERE/'selected_round1.json').exists():
        (HERE/'selected_round1.json').write_text(json.dumps(selected,indent=2))
    base=json.loads((HERE/'selected_round1.json').read_text())
    selected=list(base)
    bytop={c['top']:c for c in base}
    ablation=[]
    for i in (0,2,4,5,6,10,13):
        old=bytop[f'stdm_tune_{i:02d}']
        new=dict(old,top=old['top']+'_narrow',narrow=True)
        selected.append(new)
        ablation.append(dict(reference=old['top'],candidate=new['top'],kind='exact_width_reduction'))
    for i in (0,5):
        old=bytop[f'stdm_tune_{i:02d}']
        for style in ('binary','csd'):
            new=dict(old,top=old['top']+'_'+style,style=style)
            selected.append(new)
            ablation.append(dict(reference=old['top'],candidate=new['top'],kind='exact_coefficient_multiply'))
    # Input masking that actually changes the original L3 finalist; compare
    # original widths, compact widths, and its effective-drop equivalent.
    train=data(2026091601,65536)
    c=calibrate(train,3,15,16,17,8,input_bits=6)[0]
    c.update(top='stdm_input_mask6')
    masked=dict(c,top='stdm_input_mask6_narrow',narrow=True)
    effective=dict(c,top='stdm_input_effective17',dx=17,dy=17,input_bits=23)
    selected.extend([c,masked,effective])
    ablation.extend([dict(reference=c['top'],candidate=v['top'],kind=kind) for v,kind in
                     [(masked,'input_mask_compact_width'),(effective,'input_mask_effective_residual_drop')]])
    xy=data(2026091604,200000)
    assert np.array_equal(core(xy,c),core(xy,effective))
    (HERE/'selected.json').write_text(json.dumps(selected,indent=2))
    (HERE/'ablation_pairs.json').write_text(json.dumps(ablation,indent=2))
    prepare.generate=generate
    prepare.main()
    for pair in ablation:
        a=(HERE/(pair['reference']+'.rtl.expected.hex')).read_bytes()
        b=(HERE/(pair['candidate']+'.rtl.expected.hex')).read_bytes()
        assert a==b,pair
    (HERE/'ablation_model_check.json').write_text(json.dumps(dict(pairs=len(ablation),cases_per_pair=len(np.load(HERE/'inputs.npy')),mismatches=0),indent=2))
    print('All ablation pairs are bitwise identical in the independent integer model.')


if __name__=='__main__':main()
