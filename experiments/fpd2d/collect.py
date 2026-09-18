"""Collect only completed, gate-checked same-flow PPA and common-input accuracy."""
import csv
import hashlib
import importlib.util
import json
from pathlib import Path
import re
import numpy as np

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
spec=importlib.util.spec_from_file_location('reader',ROOT/'experiments/input_trunc_bias/collect.py')
reader=importlib.util.module_from_spec(spec);spec.loader.exec_module(reader)


def main():
    designs=json.loads((HERE/'designs.json').read_text())
    designs+=json.loads((HERE/'designs_milp.json').read_text())
    for name in ['sources.json','sources_milp.json']:
        for path,h in json.loads((HERE/name).read_text()).items():
            assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest()==h,path
    xy=np.load(HERE/'inputs.npy')
    exact=xy[:,0].copy().view(np.float32).astype(float)/xy[:,1].copy().view(np.float32).astype(float)
    datasets={'uniform_200k':slice(0,200000),'retained_grid':slice(200000,265536),
              'retained_grid_low_ones':slice(265536,331072),'signed_exponents':slice(331072,333072)}
    rows=[];errors=[];hashes={};constraints=[]
    for d in designs:
        top=d['top'];dc=HERE/'dc'/top;pt=HERE/'pt'/top
        for phase in ['rtl','gate']:
            log=(HERE/phase/top/'sim.log').read_text()
            assert 'FPD2D_CHECK PASS count=333072' in log and 'Fatal:' not in log
            assert 'Errors: 0' in log
            for f in [HERE/phase/top/'sim.log',HERE/phase/top/'outputs.hex']:
                hashes[str(f.relative_to(ROOT))]=hashlib.sha256(f.read_bytes()).hexdigest()
        rtl=(HERE/'rtl'/top/'outputs.hex').read_bytes()
        assert rtl==(HERE/'gate'/top/'outputs.hex').read_bytes()
        approx=np.array([int(s,16) for s in rtl.splitlines()],dtype=np.uint32).view(np.float32).astype(float)
        for dataset,section in datasets.items():
            ref=exact[section];e=approx[section]-ref;r=np.abs(e/ref)
            errors.append(dict(top=top,dataset=dataset,cases=len(ref),mae=float(np.mean(np.abs(e))),
                               mred=float(np.mean(r)),rmse=float(np.sqrt(np.mean(e*e))),
                               mean_relative=float(np.mean(e/ref)),max_relative=float(np.max(r)),
                               p99_relative=float(np.quantile(r,.99))))
        console=(dc/'console.log').read_text()
        assert re.search(r'(?m)^compile\s*$',console)
        assert not re.search(r'(?m)^(?:ungroup|compile_ultra)(?:\s|$)|^Error:',console)
        p=reader.reports(top,dc,pt)
        sdc=(dc/f'{top}.syn.sdc').read_text()
        constraints.append('\n'.join(s.strip() for s in sdc.splitlines() if s.strip() and not s.lstrip().startswith('#')))
        a=next(a for a in errors if a['top']==top and a['dataset']=='uniform_200k')
        rows.append(dict(top=top,family=d['family'],configuration=f"L{d['level']}" if 'level' in d else f"{d['nx']}x{d['ny']},t={d['t']}",
                         paper_mred_pct=d.get('paper_mred_pct',''),**p,
                         adp_um2_ns=p['area_um2']*p['delay_ns'],
                         **{k:a[k] for k in ['mae','mred','rmse','max_relative']},
                         rtl_cases=333072,gate_cases=333072,status='verified local reconstruction' if d['family']!='STDM' else 'verified control'))
        for f in list(dc.glob('*.rpt'))+list(dc.glob('*.nl.v'))+list(dc.glob('*.sdc'))+list(pt.glob('*.rpt')):
            hashes[str(f.relative_to(ROOT))]=hashlib.sha256(f.read_bytes()).hexdigest()
    assert len(set(constraints))==1,'Exported constraints differ'
    reader.write_csv(HERE/'ppa_accuracy.csv',rows)
    reader.write_csv(HERE/'accuracy.csv',errors)
    controls=[r for r in rows if r['family']=='STDM']
    pairs=[]
    for c in controls:
        eligible=[r for r in rows if r['family']!='STDM' and r['mred']<=c['mred'] and r['rmse']<=c['rmse']]
        if eligible:
            r=min(eligible,key=lambda r:r['adp_um2_ns'])
            pairs.append(dict(stdm=c['configuration'],candidate=r['top'],criterion='both MRED and RMSE no worse than STDM',
                              stdm_mred=c['mred'],candidate_mred=r['mred'],stdm_rmse=c['rmse'],candidate_rmse=r['rmse'],
                              stdm_adp=c['adp_um2_ns'],candidate_adp=r['adp_um2_ns'],
                              candidate_adp_change_pct=100*(r['adp_um2_ns']/c['adp_um2_ns']-1)))
        else:
            pairs.append(dict(stdm=c['configuration'],candidate='none among evaluated points',criterion='both MRED and RMSE no worse than STDM',
                              stdm_mred=c['mred'],candidate_mred='',stdm_rmse=c['rmse'],candidate_rmse='',stdm_adp=c['adp_um2_ns'],candidate_adp='',candidate_adp_change_pct=''))
    reader.write_csv(HERE/'matched_comparison.csv',pairs)
    drift=[]
    for r in controls:
        top=r['top'];base=ROOT/'experiments/fixed_div_level_specialization'
        old=reader.reports(top,base/'dc'/top,base/'pt'/top)
        drift.append(dict(top=top,**{k+'_drift':r[k]-old[k] for k in ['area_um2','delay_ns','power_mw']}))
    reader.write_csv(HERE/'control_drift.csv',drift)
    text=['# FPD2D versus current STDM DIV-only','',
          'TSMC65 typical CCS, ordinary compile + area optimization, preserved hierarchy, no flatten/ultra.',
          'Same common FP32 wrapper and identical exported 10 ns constraints for every top.',
          'Power is vectorless PrimeTime power, not the paper\'s 28 nm activity-annotated measurement.',
          'All 14 designs: 333072 RTL checks and identical gate outputs, no timing violations or sequential cells.',
          'Accuracy below uses the same 200000 normalized positive mantissa pairs and complete FP32 outputs.',
          'The other 133072 checks include every t=15 retained input combination at both low-bit extremes and signed exponent cases.','',
          '| Design | Configuration | MRED % | Paper MRED % | RMSE | Area um2 | Delay ns | Power uW | ADP um2 ns |',
          '|---|---|---:|---:|---:|---:|---:|---:|---:|']
    for r in rows:
        text.append(f"| {r['family']} | {r['configuration']} | {100*r['mred']:.5f} | {r['paper_mred_pct']} | {r['rmse']:.6f} | {r['area_um2']:.2f} | {r['delay_ns']:.5f} | {1000*r['power_mw']:.3f} | {r['adp_um2_ns']:.2f} |")
    text+=['','## Interpretation','',
           'FPD2D uses coefficients printed in Fig. 6. FPD2D_MILP independently solves Algorithm 1 for all 64 tiles.',
           'These are paper-derived reconstructions, not author RTL. Fig. 5 fixes the fused carry-save architecture but not a unique compressor schedule.',
           'The original 8x8 printed table has anomalous cells; see coefficient_audit.json. The independent MILP table is not silently substituted.',
           'Neither set of local errors is asserted to exactly reproduce Table I. No paper PPA is scaled between technologies.',
           'A design with larger error cannot be called better solely because its ADP is lower.',
           'matched_comparison.csv finds minimum-ADP candidates with BOTH MRED and RMSE no worse than each STDM level.',
           'No global Pareto claim or claim about untested partition/precision settings is supported.','']
    text+=['## Accuracy-matched comparison','',
           'Candidates must have both MRED and RMSE no higher than the STDM control; select the lowest ADP among those candidates.','',
           '| STDM | Eligible minimum-ADP candidate | STDM ADP | Candidate ADP | Candidate ADP change % |',
           '|---|---|---:|---:|---:|']
    for pair in pairs:
        cadp=f"{pair['candidate_adp']:.2f}" if pair['candidate_adp']!='' else '--'
        change=f"{pair['candidate_adp_change_pct']:+.2f}" if pair['candidate_adp_change_pct']!='' else '--'
        text.append(f"| {pair['stdm']} | {pair['candidate']} | {pair['stdm_adp']:.2f} | {cadp} | {change} |")
    text+=['','An absent eligible candidate means these sampled designs do not reach both error targets; it does not establish that the other architecture cannot reach them.','']
    (HERE/'RESULTS.md').write_text('\n'.join(text))
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    fig,axes=plt.subplots(1,2,figsize=(10,4.5))
    for ax,metric,label in zip(axes,['area_um2','adp_um2_ns'],[r'Area ($\mu$m$^2$)',r'ADP ($\mu$m$^2$ ns)']):
        for family,marker,color in [('STDM','o','#19764b'),('FPD2D','s','#3975b7'),('FPD2D_MILP','^','#b34842')]:
            rs=[r for r in rows if r['family']==family]
            legend={'STDM':'STDM','FPD2D':'FPD2D (Fig. 6)','FPD2D_MILP':'FPD2D (Algorithm 1)'}[family]
            ax.scatter([100*r['mred'] for r in rs],[r[metric] for r in rs],label=legend,marker=marker,color=color)
            for r in rs:
                offset=(-5,4) if family=='FPD2D_MILP' else (4,4)
                ax.annotate(r['configuration'],(100*r['mred'],r[metric]),xytext=offset,
                            ha='right' if family=='FPD2D_MILP' else 'left',textcoords='offset points',fontsize=7)
        ax.set(xlabel='MRED (%)',ylabel=label,xscale='log',yscale='log')
        ax.grid(alpha=.2);ax.legend(fontsize=8);ax.margins(.2)
    fig.tight_layout()
    fig.savefig(HERE/'comparison.pdf')
    fig.savefig(HERE/'comparison.png',dpi=180)
    for f in list(HERE.glob('*.py'))+list(HERE.glob('*.v'))+list(HERE.glob('*.json'))+list(HERE.glob('*.csv')):
        if f.name!='evidence_sha256.json':hashes[str(f.relative_to(ROOT))]=hashlib.sha256(f.read_bytes()).hexdigest()
    for f in [ROOT/'FP2D2.pdf',ROOT/'dc/common_scripts/common.tcl',ROOT/'dc/common_scripts/namingrules.tcl']:
        hashes[str(f.relative_to(ROOT))]=hashlib.sha256(f.read_bytes()).hexdigest()
    (HERE/'evidence_sha256.json').write_text(json.dumps(hashes,indent=2)+'\n')
    print('\n'.join(text))


if __name__=='__main__':main()
