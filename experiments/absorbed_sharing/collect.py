"""Collect only verified, same-output separate/shared implementations."""
import csv
import hashlib
import importlib.util
import json
import re

from prepare import HERE, ROOT, ABS, absmodel

spec = importlib.util.spec_from_file_location('reader',ROOT/'experiments/input_trunc_bias/collect.py')
reader = importlib.util.module_from_spec(spec)
spec.loader.exec_module(reader)


def main():
    for path,h in json.loads((HERE/'sources.json').read_text()).items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest() == h,path
    selected = json.loads((HERE/'selected.json').read_text())
    accuracy = {(int(r['level']),r['mode']):r for r in csv.DictReader((HERE/'accuracy.csv').open()) if r['dataset'] == 'random_200k'}
    rows,hierarchy = [],[]
    for c in selected:
        top = c['top']
        counts = {}
        for phase in ('rtl','gate'):
            assert (HERE/phase/top/'done.sha256').exists()
            expected = (HERE/f'{top}.{phase}.expected.hex').read_bytes()
            assert (HERE/phase/top/'outputs.hex').read_bytes() == expected
            counts[phase] = len(expected)//9
            log = (HERE/phase/top/'sim.log').read_text()
            assert f'TUNING_CHECK PASS count={counts[phase]}' in log
            assert not re.search(r'\*\*\s*(Error|Fatal)',log)
        dc,pt = HERE/'dc'/top,HERE/'pt'/top
        assert (pt/'done.sha256').exists()
        console = (dc/'console.log').read_text()
        assert re.search(r'(?m)^compile$',console)
        assert not re.search(r'(?m)^(ungroup|compile_ultra)(\s|$)',console)
        p = reader.reports(top,dc,pt)
        net = (dc/f'{top}.nl.v').read_text()
        assert len(re.findall(r'\bwrapper\s*\(',net)) == 1
        if c['kind'] == 'shared':
            assert len(re.findall(r'\bshared_core\s*\(',net)) == 1
            assert not re.search(r'\b(?:div_core|mul_core)\s*\(',net)
        else:
            assert len(re.findall(r'\bdiv_core\s*\(',net)) == 1
            assert len(re.findall(r'\bmul_core\s*\(',net)) == 1
        report = (dc/f'{top}.dc.rpt').read_text()
        for instance in (('shared_core','wrapper') if c['kind'] == 'shared' else ('div_core','mul_core','wrapper')):
            m = re.search(r'^\s*'+instance+r'\s+([\d.]+)\s',report,re.M)
            assert m,(top,instance)
            hierarchy.append(dict(top=top,instance=instance,inclusive_area_um2=float(m.group(1))))
        rows.append(dict(top=top,level=c['level'],kind=c['kind'],**p,adp_um2_ns=p['area_um2']*p['delay_ns'],
            div_mred=float(accuracy[c['level'],'div']['mred']),div_rmse=float(accuracy[c['level'],'div']['rmse']),
            mul_mred=float(accuracy[c['level'],'mul']['mred']),mul_rmse=float(accuracy[c['level'],'mul']['rmse']),
            rtl_checks=counts['rtl'],gate_checks=counts['gate'],critical_startpoint=re.search(r'Startpoint:\s+([^\n]+)',(pt/f'{top}.pt.max_delay.rpt').read_text()).group(1).strip(),status='PASS'))
    comparisons = []
    for n in range(4):
        group = {r['kind']:r for r in rows if r['level'] == n}
        for phase in ('rtl','gate'):
            a = (HERE/phase/group['shared']['top']/'outputs.hex').read_bytes()
            for kind in ('separate','separate_native_mul'):
                assert (HERE/phase/group[kind]['top']/'outputs.hex').read_bytes() == a
        for kind in ('separate','separate_native_mul'):
            sep,shared = group[kind],group['shared']
            comparisons.append(dict(level=n,baseline=kind,shared=shared['top'],
                area_saved_um2=sep['area_um2']-shared['area_um2'],
                area_saved_pct=100*(1-shared['area_um2']/sep['area_um2']),
                power_saved_pct=100*(1-shared['power_mw']/sep['power_mw']),
                delay_change_pct=100*(shared['delay_ns']/sep['delay_ns']-1),
                adp_saved_pct=100*(1-shared['adp_um2_ns']/sep['adp_um2_ns']),bit_identical=True))
    absmodel.write_csv(HERE/'ppa.csv',rows)
    absmodel.write_csv(HERE/'comparison.csv',comparisons)
    absmodel.write_csv(HERE/'hierarchy.csv',hierarchy)
    # Historical shared result: different DIV approximation, so not a sharing ablation.
    original = ROOT.parent/'research'
    old_rows,old_hashes = [],{}
    reader.ROOT = original
    for old in csv.DictReader((original/'experiments/arithmetic_sharing/ppa.csv').open()):
        if old['role'] != 'C':
            continue
        top,n = old['top'],int(old['level'])
        dc,pt = original/'experiments/arithmetic_sharing/dc'/top,original/'experiments/arithmetic_sharing/pt'/top
        p = reader.reports(top,dc,pt)
        for key in ('area_um2','delay_ns','power_mw'):
            assert abs(p[key]-float(old[key])) < 1e-8
        new = next(r for r in rows if r['level'] == n and r['kind'] == 'shared')
        old_rows.append(dict(level=n,old_top=top,new_top=new['top'],old_area_um2=p['area_um2'],old_delay_ns=p['delay_ns'],old_power_mw=p['power_mw'],
            area_change_pct=100*(new['area_um2']/p['area_um2']-1),delay_change_pct=100*(new['delay_ns']/p['delay_ns']-1),
            power_change_pct=100*(new['power_mw']/p['power_mw']-1),
            adp_change_pct=100*(new['adp_um2_ns']/(p['area_um2']*p['delay_ns'])-1),same_div_outputs=False))
        for path in [dc/f'{top}.dc.rpt',*pt.glob('*.rpt')]:
            old_hashes[str(path)] = hashlib.sha256(path.read_bytes()).hexdigest()
    reader.ROOT = ROOT
    absmodel.write_csv(HERE/'versus_old_shared.csv',old_rows)
    (HERE/'old_report_sha256.json').write_text(json.dumps(old_hashes,indent=2))
    report = ['# Sharing after Reciprocal Absorption: Results','',
        'All three implementations at each level produce the same DIV and MUL outputs.',
        f"Each design passed {rows[0]['rtl_checks']} RTL/model/reference checks and {rows[0]['gate_checks']} gate checks.",
        'All rows use the common normalized-finite FP32 wrapper and the same 10 ns ordinary-compile DC/PT flow.',
        'Power is vectorless, with mode probability 0.5 and the same activity policy on all inputs.','',
        '| Level | Structure | Area (um2) | Delay (ns) | Power (uW) | ADP |',
        '|---|---|---:|---:|---:|---:|']
    for r in rows:
        report.append(f"| L{r['level']} | {r['kind']} | {r['area_um2']:.2f} | {r['delay_ns']:.5f} | {r['power_mw']*1000:.3f} | {r['adp_um2_ns']:.2f} |")
    report += ['', '## Net Sharing Benefit','',
        'Positive area/power/ADP savings indicate improvement; positive delay change indicates a regression.', '',
        '| Level | Baseline | Area saved (%) | Power saved (%) | Delay change (%) | ADP saved (%) |',
        '|---|---|---:|---:|---:|---:|']
    for r in comparisons:
        report.append(f"| L{r['level']} | {r['baseline']} | {r['area_saved_pct']:.2f} | {r['power_saved_pct']:.2f} | {r['delay_change_pct']:.2f} | {r['adp_saved_pct']:.2f} |")
    report += ['', '## Accuracy on the Paired 200k Inputs','',
        '| Level | DIV MRED (%) | DIV RMSE | MUL MRED (%) | MUL RMSE |',
        '|---|---:|---:|---:|---:|']
    for r in rows:
        if r['kind'] == 'shared':
            report.append(f"| L{r['level']} | {r['div_mred']*100:.5f} | {r['div_rmse']:.6f} | {r['mul_mred']*100:.5f} | {r['mul_rmse']:.6f} |")
    report += ['', '## Interpretation','',
        'separate uses independent table-based cores and only shares normalization/wrapping.',
        'separate_native_mul retains the original balanced MUL arithmetic instead of its constant table.',
        'shared uses one coefficient/mode decode and one pair of multipliers plus the common signed sum.',
        'The shared arithmetic is sized for the wider MUL residuals. DIV no longer owns a post-plane coefficient multiplier.',
        'Net savings include all mode selection, width alignment, table, adder, normalization and synthesis effects.',
        'Do not interpret these figures as the area of exactly two removed multipliers.',
        'Netlist checks confirm separate core instances versus one shared core, and one wrapper in every design.',
        'There is no added operand isolation. A workload/isolation study is needed before making application-energy claims.',
        'The experiment does not claim an exhaustive or formal equivalence proof for all FP32 inputs.',
        'versus_old_shared.csv compares overall PPA with the old shared design; DIV accuracy differs, so it is not an equal-output ablation.',
        'No production RTL, manuscript, or canonical CSV is replaced.']
    (HERE/'RESULTS.md').write_text('\n'.join(report)+'\n')
    (HERE/'audit.json').write_text(json.dumps(dict(status='PASS',designs=len(rows),levels=4,rtl_checks_per_design=rows[0]['rtl_checks'],gate_checks_per_design=rows[0]['gate_checks'],
        same_outputs_across_structures=True,standalone_rtl_references=True,integer_model=True,netlist_hierarchy_checked=True),indent=2))
    evidence = [p for p in HERE.rglob('*') if p.is_file() and 'work' not in p.parts and (p.suffix in ('.rpt','.v','.sv','.sdc','.csv','.json','.py') or p.name in ('console.log','sim.log','done.sha256'))]
    (HERE/'evidence_sha256.json').write_text(json.dumps({str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in evidence if p.name != 'evidence_sha256.json'},indent=2))
    print('\n'.join(report))


if __name__ == '__main__':
    main()
