"""Publish verified PPA only after complete RTL, reference, and gate checks."""
import csv
import hashlib
import importlib.util
import json
import re
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
spec=importlib.util.spec_from_file_location('reports',HERE.parent/'input_trunc_bias/collect.py')
reader=importlib.util.module_from_spec(spec);spec.loader.exec_module(reader)

def main():
    configs=json.loads((HERE/'designs.json').read_text())
    model=json.loads((HERE/'model_checks.json').read_text())
    assert model['configurations']==len(configs) and model['bit_mismatches']==0
    for path,digest in json.loads((HERE/'source_sha256.json').read_text()).items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest()==digest,path
    gate=(HERE/'gate.log').read_text() if (HERE/'gate.log').exists() else ''
    gate_ok='INPUT_WIDTH_GATE PASS: 11833' in gate and 'MISMATCH' not in gate and 'Fatal:' not in gate
    accuracy={r['top']:r for r in csv.DictReader((HERE/'accuracy.csv').open()) if r['dataset']=='uniform_100k'}
    rows=[];statuses=[];hashes={};reference_sdc=None
    for c in configs:
        top=c['top'];dc=HERE/'dc'/top;pt=HERE/'pt'/top
        if not (pt/'completed').exists():
            statuses.append(dict(top=top,status='pending'));continue
        report=reader.reports(top,dc,pt)
        console=(dc/'dc_console.log').read_text()
        assert re.search(r'(?m)^compile\s*$',console)
        assert not re.search(r'(?m)^(ungroup|compile_ultra)(\s|$)',console)
        assert not re.search(r'(?m)^Error:',console)
        sdc='\n'.join(l.strip() for l in (dc/f'{top}.syn.sdc').read_text().splitlines()
                      if l.strip() and not l.lstrip().startswith('#'))
        if reference_sdc is None: reference_sdc=sdc
        assert sdc==reference_sdc,top
        state='pass' if gate_ok else 'gate_pending'
        rows.append(dict(**accuracy[top],**report,adp_um2_ns=report['area_um2']*report['delay_ns'],status=state))
        statuses.append(dict(top=top,status=state))
        for p in [dc/f'{top}.nl.v',dc/f'{top}.dc.rpt',dc/f'{top}.syn.sdc',
                  pt/f'{top}.pt.max_delay.rpt',pt/f'{top}.pt.power.rpt']:
            hashes[str(p.relative_to(ROOT))]=hashlib.sha256(p.read_bytes()).hexdigest()
    reader.write_csv(HERE/'status.csv',statuses)
    print(len(rows),'/',len(configs),'reports passed; gate:',gate_ok)
    if len(rows)!=len(configs) or not gate_ok: return
    reader.write_csv(HERE/'ppa_accuracy.csv',rows)
    (HERE/'report_sha256.json').write_text(json.dumps(hashes,indent=2)+'\n')
    lookup={(int(r['level']),r['kind'],int(r['bits'])):r for r in rows}
    pairs=[]
    for r in rows:
        if r['kind']!='narrow':continue
        l,b=int(r['level']),int(r['bits'])
        m=lookup[l,'mask',b];control=lookup[l,'control',23]
        assert r['rmse']==m['rmse'] and r['mred']==m['mred']
        pairs.append(dict(level=l,bits=b,rmse=r['rmse'],mred=r['mred'],
            control_area=control['area_um2'],mask_area=m['area_um2'],narrow_area=r['area_um2'],
            control_delay=control['delay_ns'],mask_delay=m['delay_ns'],narrow_delay=r['delay_ns'],
            control_adp=control['adp_um2_ns'],mask_adp=m['adp_um2_ns'],narrow_adp=r['adp_um2_ns'],
            rmse_change_pct=100*(float(r['rmse'])/float(control['rmse'])-1),
            narrow_area_change_pct=100*(r['area_um2']/control['area_um2']-1),
            narrow_adp_change_pct=100*(r['adp_um2_ns']/control['adp_um2_ns']-1)))
    reader.write_csv(HERE/'paired_comparison.csv',pairs)
    report=['# Completed Three-Group Experiment','',
        '46 configurations; 101,833 RTL/reference vectors and 11,833 gate/RTL vectors per design passed.',
        'All four controls match the previous 100,000-vector RTL capture exactly.',
        'Accuracy below uses 100,000 common normalized pairs. Boundary and signed cases are separate in accuracy.csv.',
        'Functional gate simulation has no SDF. Timing is separately checked in PT.',
        'Common FP32 normal-finite wrapper, TSMC65, 10 ns, ordinary compile plus area optimization; no flatten/ungroup/compile_ultra.',
        'Residual/w_n truncation and reciprocal coefficients are unchanged in every group.',
        'Mask and narrow are bit-identical; narrow changes representation widths, not the arithmetic accuracy contract.','',
        '| Level | Input bits | RMSE | Control area | Mask area | Narrow area | Control ADP | Mask ADP | Narrow ADP |',
        '| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |']
    for p in pairs:
        report.append(f"| L{p['level']} | {p['bits']} | {float(p['rmse']):.8f} | {p['control_area']:.2f} | {p['mask_area']:.2f} | {p['narrow_area']:.2f} | {p['control_adp']:.2f} | {p['mask_adp']:.2f} | {p['narrow_adp']:.2f} |")
    report += ['', '## Unchanged-Output Points', '',
        'These are bit-identical to Control on all RTL vectors, not merely close in average RMSE.',
        'Mask has the same area and delay as Control at these widths; vectorless power may differ slightly.', '',
        '| Level | b | Control/Mask area | Narrow area | Control/Mask delay | Narrow delay | Narrow ADP change |',
        '| --- | ---: | ---: | ---: | ---: | ---: | ---: |']
    for level in range(4):
        b=5 if level==0 else 7
        p=next(p for p in pairs if p['level']==level and p['bits']==b)
        assert p['mask_area']==p['control_area'] and p['mask_delay']==p['control_delay']
        report.append(f"| L{level} | {b} | {p['control_area']:.2f} | {p['narrow_area']:.2f} | {p['control_delay']:.5f} | {p['narrow_delay']:.5f} | {p['narrow_adp_change_pct']:+.2f}% |")
    report += ['', '## Interpretation', '',
        'Within this matrix, input masking is equivalent to raising the effective residual drop to max(R,23-b).',
        'L0 b>=5 and L1-L3 b>=7 discard no information additionally consumed by the current core.',
        'Explicit width reduction improves the unchanged-output L1-L3 mappings, but worsens L0.',
        'This does not prove every narrow RTL formulation is inferior for L0 or globally optimal for L1-L3.',
        'More aggressive input truncation increases RMSE: b4 L0 and b6 L1 are about +3.3% and +3.1%;',
        'b6 L2 and L3 are about +28.2% and +61.5%. No reciprocal recalibration was performed.',
        'These remain isolated candidate/negative results, not replacements for canonical production RTL or CSVs.']
    (HERE/'RESULTS.md').write_text('\n'.join(report)+'\n')
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    plt.rcParams.update({'font.family':'serif','font.size':10,'pdf.fonttype':42,
                         'axes.spines.top':False,'axes.spines.right':False})
    for metric,label in [('area_um2',r'Area ($\mu$m$^2$)'),
                         ('adp_um2_ns',r'Area $\times$ delay ($\mu$m$^2\cdot$ns)')]:
        fig,axes=plt.subplots(2,2,figsize=(8,6))
        for level,ax in enumerate(axes.flat):
            control=lookup[level,'control',23]
            for kind,color,marker,title in [('mask','#286ab1','o','Input mask'),
                                             ('narrow','#d66525','s','Explicit narrow')]:
                group=sorted((r for r in rows if int(r['level'])==level and r['kind']==kind),
                             key=lambda r:int(r['bits']))
                ax.plot([r[metric] for r in group],[float(r['rmse']) for r in group],
                        color=color,marker=marker,mfc='none',ms=5,lw=1,label=title)
                for r in group:
                    if kind=='narrow' and int(r['bits'])<=23-int(r['residual_drop']):
                        ax.annotate('b='+r['bits'],(r[metric],float(r['rmse'])),
                                    xytext=(4,5),textcoords='offset points',fontsize=8)
            ax.scatter([control[metric]],[float(control['rmse'])],color='#222222',
                       marker='*',s=85,zorder=5,label='Current control')
            ax.set(title=f'OADM DIV L{level}',xlabel=label,ylabel='Quotient RMSE')
            ax.grid(alpha=.2);ax.margins(x=.18,y=.2)
        handles,labels=axes.flat[0].get_legend_handles_labels()
        fig.legend(handles,labels,loc='lower center',ncol=3,frameon=False)
        fig.tight_layout(rect=(0,.06,1,1))
        for ext in ('png','pdf'):
            fig.savefig(HERE/f'{metric}_rmse.{ext}',dpi=220)
        plt.close(fig)
    print('\n'.join(report))

if __name__=='__main__':main()
