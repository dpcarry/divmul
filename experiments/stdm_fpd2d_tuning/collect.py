"""Report only verified measured candidates, with all error/PPA matches explicit."""
import csv
import hashlib
import json
from pathlib import Path

import numpy as np

from sweep import HERE, ROOT, write_csv


def main():
    selected=json.loads((HERE/'selected.json').read_text())
    accuracy=list(csv.DictReader((HERE/'accuracy_model.csv').open()))
    bytop={r['top']:r for r in accuracy if r['dataset']=='random_200k'}
    rows=[]
    pending=[]
    for c in selected:
        top=c['top']
        if not all((HERE/phase/top/'done.sha256').exists() for phase in ('rtl','gate','pt')):
            pending.append(top);continue
        a=bytop[top]
        p=json.loads((HERE/'pt'/top/'summary.json').read_text())
        rows.append(dict(top=top,level=c['level'],dx=c['dx'],dy=c['dy'],w=c['w'],b=c['b'],
                         input_bits=c.get('input_bits',23),style=c.get('style','direct'),narrow=c.get('narrow',False),
                         coefficients=' '.join(map(str,c['coefficients'])),**p,
                         adp_um2_ns=p['area_um2']*p['delay_ns'],
                         **{k:float(a[k]) for k in ('mae','mred','rmse','max_relative','p99_relative')},
                         rtl_cases=(HERE/f'{top}.rtl.expected.hex').stat().st_size//9,
                         gate_cases=(HERE/f'{top}.gate.expected.hex').stat().st_size//9,status='verified'))
    if not rows:
        print('No complete PPA rows yet. Pending:',pending);return
    write_csv(HERE/'ppa_accuracy.csv',rows)
    baseline=list(csv.DictReader((HERE/'baseline.csv').open()))
    comparisons=[]
    for ref in baseline:
        for r in rows:
            both=r['mred']<=float(ref['mred']) and r['rmse']<=float(ref['rmse'])
            comparisons.append(dict(candidate=r['top'],reference=ref['top'],
                mred_change_pct=100*(r['mred']/float(ref['mred'])-1),
                rmse_change_pct=100*(r['rmse']/float(ref['rmse'])-1),
                area_change_pct=100*(r['area_um2']/float(ref['area_um2'])-1),
                delay_change_pct=100*(r['delay_ns']/float(ref['delay_ns'])-1),
                power_change_pct=100*(r['power_mw']/float(ref['power_mw'])-1),
                adp_change_pct=100*(r['adp_um2_ns']/float(ref['adp_um2_ns'])-1),
                both_errors_no_worse=both,strict_adp_win=both and r['adp_um2_ns']<float(ref['adp_um2_ns'])))
    write_csv(HERE/'comparison.csv',comparisons)
    report=['# Tuning Results','',f'Completed: {len(rows)} / {len(selected)} candidates. Pending: {", ".join(pending) or "none"}.','',
      'Common 200k positive normalized pairs. Error columns below are percentages only for MRED.',
      'All published PPA rows passed RTL/model and gate tests plus the common DC/PT checks.',
      'Power is vectorless; sample maximum relative error is not a worst-case proof.','',
      '| Design | L | Dx/Dy/W/B | MRED (%) | RMSE | Area (um2) | Delay (ns) | Power (uW) | ADP |',
      '|---|---:|---|---:|---:|---:|---:|---:|---:|']
    for r in rows:
        report.append(f'| {r["top"]} | {r["level"]} | {r["dx"]}/{r["dy"]}/{r["w"]}/{r["b"]} | {100*r["mred"]:.5f} | {r["rmse"]:.6f} | {r["area_um2"]:.2f} | {r["delay_ns"]:.4f} | {1000*r["power_mw"]:.2f} | {r["adp_um2_ns"]:.2f} |')
    report+=['','## Primary FPD2D Matches','',
             'The MILP references are independent paper reconstructions, not author RTL.',
             'Each match requires both MRED and RMSE no worse; minimum measured ADP is then selected.','']
    for ref in baseline:
        if 'milp' not in ref['top']:continue
        feasible=[p for p in comparisons if p['reference']==ref['top'] and p['both_errors_no_worse']]
        if not feasible:report.append(f'- {ref["top"]}: no strictly accuracy-matched candidate.');continue
        best=min(feasible,key=lambda p:p['adp_change_pct'])
        report.append(f'- {ref["top"]}: {best["candidate"]}; ADP {best["adp_change_pct"]:+.2f}%, area {best["area_change_pct"]:+.2f}%, delay {best["delay_change_pct"]:+.2f}%, power {best["power_change_pct"]:+.2f}%.')
    report+=['','## Scope and Evidence','',
       '- Parameters were selected using independent calibration/screen seeds, before the common final 200k comparison.',
       '- `screen.csv` records the numerical search; its cost proxy is not measured area.',
       '- `accuracy_model.csv` separates uniform, independent uniform, grid endpoints, diagonal, signed and cell-boundary inputs.',
       '- `control_model_check.json` checks all four unchanged controls against pre-existing RTL outputs.',
       '- `baseline.csv` and `baseline_sha256.json` freeze references and methodology.',
       '- Per-top RTL, DC netlists, PT reports and gate checks remain in their named folders.',
       '- Production RTL, manuscript and canonical results have not been updated.','']
    (HERE/'RESULTS.md').write_text('\n'.join(report))
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    fig,ax=plt.subplots(figsize=(7.5,4.5))
    for family,marker in [('FPD2D','s'),('STDM','o')]:
        points=[r for r in baseline if r['family'].startswith(family)]
        ax.scatter([float(r['rmse']) for r in points],[float(r['adp_um2_ns']) for r in points],label=family+' references',marker=marker)
    ax.scatter([r['rmse'] for r in rows],[r['adp_um2_ns'] for r in rows],label='STDM tuned (verified)',marker='x',color='crimson')
    ax.set(xlabel='RMSE',ylabel='Area-delay product (um2 ns)',xscale='log',yscale='log')
    ax.grid(alpha=.2);ax.legend();fig.tight_layout()
    fig.savefig(HERE/'comparison.png',dpi=180);fig.savefig(HERE/'comparison.pdf');plt.close(fig)
    files=[HERE/'selected.json',HERE/'ppa_accuracy.csv',HERE/'accuracy_model.csv']
    for r in rows:
        top=r['top']
        files += [HERE/(top+'.v'),HERE/'dc'/top/(top+'.nl.v'),HERE/'dc'/top/(top+'.dc.rpt')]
        files += list((HERE/'pt'/top).glob('*.rpt'))
        files += [HERE/phase/top/'sim.log' for phase in ('rtl','gate')]
    (HERE/'evidence_sha256.json').write_text(json.dumps({str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in files},indent=2))
    print('\n'.join(report[-22:]),flush=True)


if __name__=='__main__':main()
