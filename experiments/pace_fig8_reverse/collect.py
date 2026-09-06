"""Plot the accuracy reconstruction; publish PPA only after report/gate checks."""
import csv
import hashlib
import importlib.util
import json
import re
from pathlib import Path
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
spec=importlib.util.spec_from_file_location('reports',HERE.parent/'input_trunc_bias/collect.py')
reader=importlib.util.module_from_spec(spec);spec.loader.exec_module(reader)
plt.rcParams.update({'font.family':'serif','font.size':10,'pdf.fonttype':42,
                     'ps.fonttype':42,'axes.spines.top':False,'axes.spines.right':False})
COLORS=['#286ab1','#ee6817','#2b9f40','#c92430','#8850a7']
def read(name): return list(csv.DictReader((HERE/name).open()))
def save(fig,name):
    fig.tight_layout(rect=(0,.10,1,1) if fig.legends else None)
    for ext in ('png','pdf'): fig.savefig(HERE/f'{name}.{ext}',dpi=240)
    plt.close(fig)

def main():
    aligned=read('paper_accuracy_alignment.csv')
    fig,axes=plt.subplots(1,2,figsize=(10,4))
    for level in range(5):
        group=[r for r in aligned if int(r['level'])==level]
        label='Exact DW' if level==0 else f'PACE L{level}'
        for ax,key,style,marker in ((axes[0],'paper_rmse','--','o'),
                                    (axes[0],'local_rmse','-','x')):
            ax.plot([int(r['drop']) for r in group],[float(r[key]) for r in group],
                    color=COLORS[level],ls=style,marker=marker,ms=4,lw=1,
                    label=label if key=='local_rmse' else None)
        axes[1].plot([int(r['drop']) for r in group],
                     [float(r['rmse_delta']) for r in group],color=COLORS[level],
                     marker='o',ms=4,lw=1,label=label)
    axes[0].set(xlabel='Removed fraction bits',ylabel='Quotient RMSE',
                title='Paper (dashed) and reconstructed RTL (solid)')
    axes[1].set(xlabel='Removed fraction bits',ylabel='Local RMSE - paper RMSE',
                title='Difference from PDF vector coordinates')
    axes[1].ticklabel_format(axis='y',style='sci',scilimits=(0,0))
    for ax in axes:
        ax.grid(alpha=.2);ax.set_xticks([0,4,8,12,14,16,18])
    handles,labels=axes[0].get_legend_handles_labels()
    fig.legend(handles,labels,loc='lower center',ncol=5,frameon=False,fontsize=9)
    save(fig,'accuracy_alignment')

    configs=json.loads((HERE/'designs.json').read_text())
    accuracy={r['top']:r for r in read('accuracy.csv') if r['dataset']=='uniform_10k'}
    gate=(HERE/'gate.log').read_text() if (HERE/'gate.log').exists() else ''
    count=json.loads((HERE/'counts.json').read_text())['gate']
    gate_pass=f'FIG8_GATE PASS: {count}' in gate and 'MISMATCH' not in gate and 'Fatal:' not in gate
    statuses=[]; rows=[]; hashes={}; reference_sdc=None
    for path,digest in json.loads((HERE/'experiment_sha256.json').read_text()).items():
        assert hashlib.sha256((HERE/path).read_bytes()).hexdigest()==digest,path
    for path,digest in json.loads((HERE/'source_sha256.json').read_text()).items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest()==digest,path
    for c in configs:
        top=c['top'];dc=HERE/'dc'/top;pt=HERE/'pt'/top
        if not (pt/'completed').exists():
            statuses.append(dict(top=top,status='pending'));continue
        try:
            report=reader.reports(top,dc,pt)
            console=(dc/'dc_console.log').read_text()
            assert re.search(r'(?m)^compile\s*$',console)
            assert not re.search(r'(?m)^(ungroup|compile_ultra)(\s|$)',console)
            assert not re.search(r'(?m)^Error:',console)
            sdc=(dc/f'{top}.syn.sdc').read_text()
            normalized_sdc='\n'.join(line.strip() for line in sdc.splitlines()
                                     if line.strip() and not line.lstrip().startswith('#'))
            if reference_sdc is None: reference_sdc=normalized_sdc
            assert normalized_sdc==reference_sdc, 'SDC mismatch: '+top
        except (AssertionError,ValueError,FileNotFoundError) as e:
            statuses.append(dict(top=top,status='report_check_failed:'+str(e)));continue
        statuses.append(dict(top=top,status='pass' if gate_pass else 'gate_pending'))
        rows.append(dict(**accuracy[top],**report,
                         adp_um2_ns=report['area_um2']*report['delay_ns'],
                         status='pass' if gate_pass else 'gate_pending'))
        for p in [dc/f'{top}.nl.v',dc/f'{top}.dc.rpt',dc/f'{top}.syn.sdc',
                  pt/f'{top}.pt.max_delay.rpt',pt/f'{top}.pt.power.rpt']:
            hashes[str(p.relative_to(ROOT))]=hashlib.sha256(p.read_bytes()).hexdigest()
    reader.write_csv(HERE/'status.csv',statuses)
    if not gate_pass or len(rows)!=len(configs):
        print('Accuracy plot complete. PPA publication pending:',len(rows),'/',len(configs),
              'reports checked; gate PASS:',gate_pass)
        return
    reader.write_csv(HERE/'ppa_accuracy.csv',rows)
    (HERE/'report_sha256.json').write_text(json.dumps(hashes,indent=2)+'\n')
    primary=[r for r in rows if r['top'] in {p['local_top'] for p in aligned}]
    fig,axes=plt.subplots(1,2,figsize=(10,4.2))
    for level in range(5):
        p=[r for r in aligned if int(r['level'])==level]
        local=[next(r for r in primary if r['top']==a['local_top']) for a in p]
        label='Exact DW (RTZ)' if level==0 else f'PACE L{level}'
        axes[0].plot([float(r['paper_adp']) for r in p],[float(r['paper_rmse']) for r in p],
                     color=COLORS[level],marker='o',ms=4,lw=1,
                     label='Exact' if level==0 else label)
        axes[1].plot([r['adp_um2_ns'] for r in local],[float(r['rmse']) for r in local],
                     color=COLORS[level],marker='o',ms=4,lw=1,label=label)
        for ax,data,xkey,ykey in ((axes[0],p,'paper_adp','paper_rmse'),
                                  (axes[1],local,'adp_um2_ns','rmse')):
            for r in (data[0],data[-1]):
                ax.annotate(str(r['drop']),(float(r[xkey]),float(r[ykey])),
                            xytext=(3,4),textcoords='offset points',fontsize=7)
    for ax,title in zip(axes,('Paper Fig. 8: UMC40 (plot-derived)',
                              'Whole-datapath hypothesis: TSMC65, 10 ns')):
        ax.set(xscale='log',xlabel=r'Area $\times$ delay ($\mu$m$^2\cdot$ns)',
               ylabel='Quotient RMSE',title=title,ylim=(-.001,.057))
        ax.grid(axis='y',alpha=.2);ax.legend(frameon=False,fontsize=8,loc='upper right')
    save(fig,'fig8_reconstruction')
    fig,ax=plt.subplots(figsize=(6.4,4.2))
    for level in range(5):
        group=[r for r in primary if (r['family']=='dw' if level==0 else
                                      r['family']=='pace' and int(r['level'])==level)]
        ax.plot([r['adp_um2_ns'] for r in group],[float(r['rmse']) for r in group],
                color=COLORS[level],marker='o',ms=4,lw=1.2,
                label='Exact DW (RTZ)' if level==0 else f'PACE L{level}')
        for r in (group[0],group[-1]):
            ax.annotate(str(r['drop']),(r['adp_um2_ns'],float(r['rmse'])),
                        xytext=(4,4),textcoords='offset points',fontsize=8)
    pace=[r for r in primary if r['family']=='pace']
    frontier=[r for r in pace if not any(
        s['adp_um2_ns']<=r['adp_um2_ns'] and float(s['rmse'])<=float(r['rmse']) and
        (s['adp_um2_ns']<r['adp_um2_ns'] or float(s['rmse'])<float(r['rmse'])) for s in pace)]
    frontier.sort(key=lambda r:r['adp_um2_ns'])
    ax.plot([r['adp_um2_ns'] for r in frontier],[float(r['rmse']) for r in frontier],
            color='#885345',ls='--',marker='o',mfc='none',ms=6,lw=1,
            label='Measured PACE front')
    ax.set(xscale='log',xlabel=r'Area $\times$ delay ($\mu$m$^2\cdot$ns)',
           ylabel='RMSE of packed FP32 quotient',ylim=(-.001,.057))
    ax.legend(frameon=False,fontsize=8,loc='upper right');ax.grid(axis='y',alpha=.2)
    save(fig,'fig8_local')
    lookup={r['top']:r for r in rows}
    p=lookup['fig8_pace_l3_d17'];d=lookup['fig8_dw_d18']
    summary=dict(pace_l3_d17=p,exact_d18=d,adp_ratio=p['adp_um2_ns']/d['adp_um2_ns'],
                 adp_reduction_pct=100*(1-p['adp_um2_ns']/d['adp_um2_ns']))
    (HERE/'key_comparison.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps(summary,indent=2))

if __name__=='__main__': main()
