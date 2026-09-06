"""Publish only model/RTL/gate/report-verified difference-truncation points."""
import csv
import hashlib
import importlib.util
import json
import re
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
spec=importlib.util.spec_from_file_location('report_reader',ROOT/'experiments/input_trunc_bias/collect.py')
reader=importlib.util.module_from_spec(spec)
spec.loader.exec_module(reader)


def main():
    checks=json.loads((HERE/'model_checks.json').read_text())
    counts=json.loads((HERE/'counts.json').read_text())
    assert checks['bit_mismatches']==0 and checks['cases_per_design']==counts['total']
    gate=(HERE/'gate.log').read_text()
    assert f"ZTRUNC_GATE PASS: {counts['gate']}" in gate
    assert 'MISMATCH' not in gate and 'Fatal:' not in gate
    for p,h in json.loads((HERE/'author_sha256.json').read_text()).items():
        assert hashlib.sha256((ROOT/p).read_bytes()).hexdigest()==h,p
    accuracy=[r for r in reader.read_csv(HERE/'accuracy.csv') if r['dataset']=='uniform_100k']
    rows=[]; hashes={}
    for a in accuracy:
        top=a['design']; dc=HERE/'dc'/top; pt=HERE/'pt'/top
        console=(dc/'dc_console.log').read_text()
        assert re.search(r'(?m)^compile\s*$',console)
        assert not re.search(r'(?m)^(ungroup|compile_ultra)(\s|$)',console)
        assert not re.search(r'(?m)^Error:',console)
        p=reader.reports(top,dc,pt)
        limit={1:18,2:18,3:17,4:16}[int(a['level'])]
        rows.append(dict(**a,**p,scope='figure8_count_range' if int(a['drop'])<=limit else 'extra_stress',
                         adp_um2_ns=p['area_um2']*p['delay_ns'],
                         gate_vectors=counts['gate'],status='pass'))
        for path in [dc/f'{top}.nl.v',dc/f'{top}.dc.rpt',dc/f'{top}.syn.sdc',
                     pt/f'{top}.pt.max_delay.rpt',pt/f'{top}.pt.power.rpt']:
            hashes[str(path.relative_to(ROOT))]=hashlib.sha256(path.read_bytes()).hexdigest()
    for path in (HERE/'cores.v',HERE/'tops.v',HERE/'accuracy.csv',HERE/'measure.py'):
        hashes[str(path.relative_to(ROOT))]=hashlib.sha256(path.read_bytes()).hexdigest()
    reader.write_csv(HERE/'ppa_accuracy.csv',rows)
    (HERE/'sha256.json').write_text(json.dumps(hashes,indent=2)+'\n')
    old=reader.read_csv(ROOT/'experiments/div_truncation_figure/comparison.csv')
    for r in old:
        assert int(r['cases'])==100000
        dc_report=ROOT/r['dc_report']
        verified=reader.reports(r['top'],dc_report.parent,ROOT/r['pt_dir'])
        for key in ('area_um2','delay_ns','power_mw'):
            assert abs(float(r[key])-verified[key])<1e-8,(r['design'],key)
    combined=[]
    for r in rows+old:
        pace=r['design'].startswith('pace_')
        group='pace_difference_truncation' if pace else ('oadm_fixed_div' if r['design'].startswith('oadm') else 'direct_integer_div')
        combined.append(dict(group=group,design=r['design'],scope=r.get('scope','existing_comparison'),level=r.get('level',''),
                             difference_drop=r['drop'] if pace else '',
                             input_fraction_bits=r.get('bits','') or 23,input_half_step_bias=r.get('bias',''),
                             quotient_fraction_bits=r.get('quotient_fraction_bits',''),
                             residual_drop=r.get('residual_drop',''),wn_drop=r.get('wn_drop',''),
                             cases=r['cases'],rmse=r['rmse'],mred=r['mred'],max_relative=r['max_relative'],
                             area_um2=r['area_um2'],delay_ns=r['delay_ns'],power_mw=r['power_mw'],
                             adp_um2_ns=r['adp_um2_ns'],dc_report=r['dc_report'],pt_dir=r['pt_dir']))
    reader.write_csv(HERE/'comparison.csv',combined)
    report=['# Completed Difference-Truncation Results','',
            f"36 configurations; {counts['total']} RTL/model vectors and {counts['gate']} gate vectors per configuration.",
            'Four drop=0 controls match author RTL. All DC/PT report checks passed.',
            'Uniform statistics below use the same 100,000 pairs as the OADM/direct-divider comparison.',
            'This is an equation-based fixed-core reconstruction, not verified Fig. 8 experiment RTL.', '',
            '33 points use the count ranges shown in Fig. 8; L3 d18 and L4 d17/d18 are extra stress points, excluded from the plots.', '',
            '| Level | Difference LSBs removed | MRED (%) | Packed RMSE | Eq.27 RMSE | Area (um^2) | Delay (ns) | Power (uW) | Normalizer out-of-range cases |',
            '|---|---:|---:|---:|---:|---:|---:|---:|---:|']
    for r in rows:
        report.append(f"| L{r['level']} | {r['drop']} | {100*float(r['mred']):.5f} | {float(r['rmse']):.7f} | {float(r['equation27_normalized_rmse']):.7f} | {r['area_um2']:.2f} | {r['delay_ns']:.5f} | {1000*r['power_mw']:.3f} | {r['author_normalizer_out_of_range_cases']} |")
    report+=['','The normalizer column counts approximate pre-packing quotients outside [0.5,2).',
             'It does not mean the input was exceptional. The original author normalizer is retained;',
             'equation-level and packed-output errors must not be substituted for one another.',
             'Boundary/signed-distribution results and sampled maximum errors are in accuracy.csv.',
             'No claim of worst-case bounds or automatic equivalence to input truncation is made.','']
    (HERE/'RESULTS.md').write_text('\n'.join(report))
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    plt.rcParams.update({'font.family':'serif','font.size':10,'pdf.fonttype':42,'axes.spines.top':False,'axes.spines.right':False})
    for comparison in (False,True):
        fig,ax=plt.subplots(figsize=(7.2,4.8))
        for level,color in ((1,'#bf4b45'),(2,'#458753'),(3,'#8665a9'),(4,'#268a98')):
            group=[r for r in rows if int(r['level'])==level and r['scope']=='figure8_count_range']
            ax.plot([r['adp_um2_ns'] for r in group],[float(r['rmse']) for r in group],
                    color=color,marker='o',markersize=4,linewidth=1.2,label=f'PACE L{level}: difference truncation')
            for r in group:
                if int(r['drop']) in (0,{1:18,2:18,3:17,4:16}[level]):
                    ax.annotate(r['drop'],(r['adp_um2_ns'],float(r['rmse'])),
                                xytext=(4,5) if int(r['drop'])==0 else (-7,7),
                                ha='left' if int(r['drop'])==0 else 'right',
                                textcoords='offset points',fontsize=8,color=color)
        if comparison:
            for bias,color in (('0','#245987'),('1','#ce6b14')):
                group=[r for r in old if r['bias']==bias]
                ax.plot([float(r['adp_um2_ns']) for r in group],[float(r['rmse']) for r in group],
                        color=color,marker='s',markersize=4,linestyle='--',
                        label='Truncated integer DIV'+(' + bias' if bias=='1' else ''))
            group=[r for r in old if r['design'].startswith('oadm')]
            ax.scatter([float(r['adp_um2_ns']) for r in group],[float(r['rmse']) for r in group],
                       color='black',marker='D',s=30,label='OADM selected fixed DIV',zorder=4)
            for r in group:
                ax.annotate(f"L{r['level']}",(float(r['adp_um2_ns']),float(r['rmse'])),
                            xytext=(-8,-7) if int(r['level'])==3 else ((-8,-12) if int(r['level'])==2 else (5,7)),
                            ha='right' if int(r['level'])>=2 else 'left',
                            textcoords='offset points',fontsize=9)
        ax.set_xscale('log')
        ax.set_xlabel(r'Area $\times$ delay ($\mu$m$^2\cdot$ns), log scale')
        ax.set_ylabel('RMSE of packed FP32 quotient')
        ax.set_ylim(bottom=0)
        ax.grid(axis='y',alpha=.25)
        ax.legend(loc='upper center',bbox_to_anchor=(.5,1.30 if comparison else 1.21),
                  ncol=2,frameon=False,fontsize=8)
        fig.tight_layout()
        stem='comparison_adp_rmse' if comparison else 'pace_adp_rmse'
        for ext in ('pdf','png'): fig.savefig(HERE/f'{stem}.{ext}',dpi=220)
        plt.close(fig)
    print(f'Published {len(rows)} verified PACE points and {len(combined)} combined rows')


if __name__=='__main__': main()
