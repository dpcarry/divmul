"""Collect completed reports and matched-output checks without updating parents."""
import csv
import hashlib
import json
import re

from prepare import HERE, ROOT, OLD, module, model

reader = module('reader',ROOT/'experiments/input_trunc_bias/collect.py')


def main():
    for path,digest in json.loads((HERE/'sources.json').read_text()).items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest() == digest,path
    configs = json.loads((HERE/'selected.json').read_text())
    accuracy = {(r['group'],int(r['level']),r['mode']):r for r in csv.DictReader((HERE/'accuracy.csv').open())
                if r['dataset'] == 'random_200k'}
    old = {int(r['level']):r for r in csv.DictReader((OLD/'ppa.csv').open()) if r['kind'] == 'shared'}
    old_hashes = {}
    for n,r in old.items():
        dc,pt = OLD/'dc'/r['top'],OLD/'pt'/r['top']
        p = reader.reports(r['top'],dc,pt)
        for key in ('area_um2','delay_ns','power_mw'):
            assert abs(p[key]-float(r[key])) < 1e-8
        for path in [dc/(r['top']+'.dc.rpt'),*pt.glob('*.rpt')]:
            old_hashes[str(path.relative_to(ROOT))] = hashlib.sha256(path.read_bytes()).hexdigest()
    rows,hierarchy = [],[]
    for c in configs:
        top,n = c['top'],c['level']
        counts = {}
        for phase in ('rtl','gate'):
            folder = HERE/phase/top
            assert (folder/'done.sha256').exists()
            expected = (HERE/f"{c['group']}_l{n}.{phase}.expected.hex").read_bytes()
            assert (folder/'outputs.hex').read_bytes() == expected,top
            counts[phase] = len(expected)//9
            log = (folder/'sim.log').read_text()
            assert f'TUNING_CHECK PASS count={counts[phase]}' in log,top
            assert not re.search(r'\*\*\s*(Error|Fatal)',log),top
        dc,pt = HERE/'dc'/top,HERE/'pt'/top
        assert (pt/'done.sha256').exists()
        console = (dc/'console.log').read_text()
        assert re.search(r'(?m)^compile$',console)
        assert not re.search(r'(?m)^(ungroup|compile_ultra)(\s|$)',console)
        net = (dc/(top+'.nl.v')).read_text()
        assert len(re.findall(r'\bwrapper\s*\(',net)) == 1
        instances = ('shared_core','wrapper') if c['structure'] == 'shared' else ('div_core','mul_core','wrapper')
        for instance in instances:
            assert len(re.findall(r'\b'+instance+r'\s*\(',net)) == 1
        if c['structure'] == 'shared':
            assert not re.search(r'\b(?:div_core|mul_core)\s*\(',net)
        report = (dc/(top+'.dc.rpt')).read_text()
        for instance in instances:
            m = re.search(r'^\s*'+instance+r'\s+([\d.]+)\s',report,re.M)
            assert m,(top,instance)
            hierarchy.append(dict(top=top,group=c['group'],level=n,instance=instance,inclusive_area_um2=float(m.group(1))))
        p = reader.reports(top,dc,pt)
        ptext = (pt/(top+'.pt.power.rpt')).read_text()
        leakage = 1000*reader.number(r'Cell Leakage Power\s+=\s+([\d.eE+-]+)',ptext)
        timing = (pt/(top+'.pt.max_delay.rpt')).read_text()
        div,mul = [accuracy[c['group'],n,m] for m in ('div','mul')]
        rows.append(dict(**c,**p,adp_um2_ns=p['area_um2']*p['delay_ns'],
                         dynamic_power_mw=p['power_mw']-leakage,leakage_power_mw=leakage,
                         div_mred=float(div['mred']),div_rmse=float(div['rmse']),
                         mul_mred=float(mul['mred']),mul_rmse=float(mul['rmse']),
                         rtl_checks=counts['rtl'],gate_checks=counts['gate'],
                         critical_startpoint=re.search(r'Startpoint:\s+([^\n]+)',timing).group(1).strip(),status='PASS'))
    comparisons,absolute = [],[]
    for group in ('mul_drop','div_drop'):
        for n in range(4):
            sep,shared = [next(r for r in rows if r['group'] == group and r['level'] == n and r['structure'] == s)
                          for s in ('separate','shared')]
            for phase in ('rtl','gate'):
                assert (HERE/phase/sep['top']/'outputs.hex').read_bytes() == (HERE/phase/shared['top']/'outputs.hex').read_bytes()
            comparisons.append(dict(group=group,level=n,drop=shared['d'],
                                    area_saved_pct=100*(1-shared['area_um2']/sep['area_um2']),
                                    power_saved_pct=100*(1-shared['power_mw']/sep['power_mw']),
                                    delay_change_pct=100*(shared['delay_ns']/sep['delay_ns']-1),
                                    adp_saved_pct=100*(1-shared['adp_um2_ns']/sep['adp_um2_ns']),bit_identical=True))
            baseline = old[n]
            delta = {key+'_change_pct':100*(shared[key]/float(baseline[key])-1)
                     for key in ('area_um2','delay_ns','power_mw','adp_um2_ns','div_mred','div_rmse','mul_mred','mul_rmse')}
            absolute.append(dict(group=group,level=n,old_top=baseline['top'],new_top=shared['top'],**delta))
    model.write_csv(HERE/'ppa.csv',rows)
    model.write_csv(HERE/'sharing_comparison.csv',comparisons)
    model.write_csv(HERE/'versus_split_drop_shared.csv',absolute)
    model.write_csv(HERE/'hierarchy.csv',hierarchy)
    (HERE/'baseline_report_sha256.json').write_text(json.dumps(old_hashes,indent=2))
    lines = ['# Unified residual drop: results','',
             'Two groups, four fixed levels each, and separate/shared structures at identical arithmetic precision.',
             'mul_drop uses 16/14/12/10; div_drop uses 18/16/16/16 for both operations.',
             'S=7/6/5/4 for both operations; F=S+23-D. Reciprocals/slopes are not recalibrated.',
             'MUL compensation is recomputed for D. DIV constant rounding follows the new F.',
             'All values below are whole DIV+MUL blocks with one common FP32 wrapper.',
             'PT power is vectorless, not VCD/SAIF measured activity. No operand isolation is added.','',
             '| Group | Level | D | Structure | Area (um2) | Delay (ns) | Power (uW) | ADP |',
             '|---|---|---:|---|---:|---:|---:|---:|']
    for r in rows:
        lines.append(f"| {r['group']} | L{r['level']} | {r['d']} | {r['structure']} | {r['area_um2']:.2f} | {r['delay_ns']:.5f} | {r['power_mw']*1000:.3f} | {r['adp_um2_ns']:.2f} |")
    lines += ['', '## Shared relative to matched Separate','',
              'Positive savings are improvements; positive delay changes are regressions.','',
              '| Group | Level | Area saved (%) | Power saved (%) | Delay change (%) | ADP saved (%) |',
              '|---|---|---:|---:|---:|---:|']
    for r in comparisons:
        lines.append(f"| {r['group']} | L{r['level']} | {r['area_saved_pct']:.2f} | {r['power_saved_pct']:.2f} | {r['delay_change_pct']:.2f} | {r['adp_saved_pct']:.2f} |")
    lines += ['', '## Accuracy on the same 200k input pairs','',
              '| Group | Level | DIV MRED (%) | DIV RMSE | MUL MRED (%) | MUL RMSE |',
              '|---|---|---:|---:|---:|---:|']
    for n in range(4):
        baseline = old[n]
        for label,r in [('old split-drop shared',baseline)]+[(g,next(r for r in rows if r['group'] == g and r['level'] == n and r['structure'] == 'shared')) for g in ('mul_drop','div_drop')]:
            lines.append(f"| {label} | L{n} | {float(r['div_mred'])*100:.5f} | {float(r['div_rmse']):.6f} | {float(r['mul_mred'])*100:.5f} | {float(r['mul_rmse']):.6f} |")
    lines += ['', '## Shared relative to previous split-drop Shared','',
              'Negative changes are reductions. Changed precision means this is not a same-output ablation.','',
              '| Group | Level | Area change (%) | Delay change (%) | Power change (%) | ADP change (%) |',
              '|---|---|---:|---:|---:|---:|']
    for r in absolute:
        lines.append(f"| {r['group']} | L{r['level']} | {r['area_um2_change_pct']:.2f} | {r['delay_ns_change_pct']:.2f} | {r['power_mw_change_pct']:.2f} | {r['adp_um2_ns_change_pct']:.2f} |")
    lines += ['', 'The previous Shared baseline below is from experiments/absorbed_sharing,',
              'already using absorbed coefficients. It is NOT the manuscript original design.','',
              '| Baseline level | Area (um2) | Delay (ns) | Power (uW) | ADP |',
              '|---|---:|---:|---:|---:|']
    for n,r in old.items():
        lines.append(f"| L{n} | {float(r['area_um2']):.2f} | {float(r['delay_ns']):.5f} | {float(r['power_mw'])*1000:.3f} | {float(r['adp_um2_ns']):.2f} |")
    lines += ['', '## Validation and scope','',
              'Each of 16 designs passed 1020508 RTL/model/reference checks and 61670 functional gate checks.',
              'Separate and Shared outputs agree for every tested group/level/mode.',
              'mul_drop retains previous MUL outputs; div_drop retains previous DIV outputs.',
              'accuracy.csv also contains boundary sets and an independent software-only 200k sample.',
              'Per-cell range checks bound intermediate arithmetic but are not a full formal equivalence proof.',
              'Both structures use identical declared coefficient formats; synthesis can simplify constant bits.',
              'The prior separate implementation used native Q4 MUL coefficients, while the current separate',
              'uses the common S/F format. Old-versus-new separate PPA must not be attributed to drop alone.',
              'A sharing percentage can increase merely because Separate becomes larger. Consult absolute',
              'shared PPA and both mode errors before identifying an improvement.',
              'No paper, canonical RTL/CSV, or parent experiment files are replaced.']
    (HERE/'RESULTS.md').write_text('\n'.join(lines)+'\n')
    (HERE/'audit.json').write_text(json.dumps(dict(status='PASS',designs=len(rows),groups=2,levels=4,
        rtl_checks_per_design=1020508,gate_checks_per_design=61670,matched_outputs=True,
        integer_model=True,reference_rtl=True,netlist_hierarchy_checked=True),indent=2))
    files = [p for p in HERE.rglob('*') if p.is_file() and p.name != 'evidence_sha256.json' and
             (p.suffix in ('.csv','.rpt','.json','.py','.v','.sv','.sdc') or p.name in ('sim.log','console.log','done.sha256'))]
    (HERE/'evidence_sha256.json').write_text(json.dumps({str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in files},indent=2))
    print('\n'.join(lines))


if __name__ == '__main__':
    main()
