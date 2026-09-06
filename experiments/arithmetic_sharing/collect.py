"""Publish the matched-shell arithmetic-sharing ablation after all checks."""
import hashlib
import importlib.util
import json
import re
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
spec=importlib.util.spec_from_file_location('reader',ROOT/'experiments/input_trunc_bias/collect.py')
reader=importlib.util.module_from_spec(spec);spec.loader.exec_module(reader)

def area_for(report,instance):
    m=re.search(r'^\s*'+re.escape(instance)+r'\s+([\d.]+)\s',report,re.M)
    assert m,instance
    return float(m.group(1))

def main():
    counts=json.loads((HERE/'counts.json').read_text())
    rtl_count=2*sum(counts.values());gate_count=2*(1000+counts['1']+counts['2'])
    checks=json.loads((HERE/'checks.json').read_text())
    for path,h in json.loads((HERE/'source_sha256.json').read_text()).items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest()==h,path
    for c in checks:
        assert c['checks']==rtl_count
        assert c['independent_model_mismatches']==c['b_c_mismatches']==c['standalone_mismatches']==0
        for kind,count in [('rtl',rtl_count),('gate',gate_count)]:
            log=(HERE/f'{kind}_l{c["level"]}.log').read_text()
            assert f'ARITHMETIC_SHARING PASS L{c["level"]} checked={count}' in log
            assert 'Errors: 0' in log and 'MISMATCH' not in log and 'Fatal:' not in log
    metrics=[];summary=[];hierarchy=[];hashes={}
    def get(top,dc,pt):
        console=(dc/'dc_console.log').read_text()
        assert re.search(r'(?m)^compile\s*$',console)
        assert not re.search(r'(?m)^(ungroup|compile_ultra)(\s|$)|^Error:',console)
        p=reader.reports(top,dc,pt)
        for path in [dc/f'{top}.dc.rpt',dc/f'{top}.nl.v',dc/f'{top}.syn.sdc',
                     pt/f'{top}.pt.max_delay.rpt',pt/f'{top}.pt.power.rpt',
                     pt/f'{top}.pt.min_delay.rpt']:
            hashes[str(path.relative_to(ROOT))]=hashlib.sha256(path.read_bytes()).hexdigest()
        return p
    for l in range(4):
        b=f'oadm_fixed_l{l}_divmul_unshared';c=f'oadm_fixed_l{l}_divmul_root_opt'
        d=f'oadm_fixed_l{l}_div_specialized';m=f'oadm_fixed_l{l}_mul_root_opt'
        B=get(b,HERE/'dc'/b,HERE/'pt'/b); C=get(c,HERE/'dc'/c,HERE/'pt'/c)
        base=ROOT/'experiments/fixed_div_level_specialization'
        D=get(d,base/'dc'/d,base/'pt'/d)
        M=get(m,ROOT/'dc/hier_compile_10ns/outputs/mul_root'/m,
              ROOT/'pt_dc/hier_compile_10ns/reports/mul_root'/m)
        oldC=get(c,ROOT/'dc/hier_compile_10ns/outputs/root_shared'/c,
                 ROOT/'pt_dc/hier_compile_10ns/reports/root_shared'/c)
        bn=(HERE/'dc'/b/f'{b}.nl.v').read_text()
        cn=(HERE/'dc'/c/f'{c}.nl.v').read_text()
        for instance in ('div_plane','mul_plane'):
            assert len(re.findall(r'\b'+instance+r'\s*\(',bn))==1,instance
            assert not re.search(r'\b'+instance+r'\s*\(',cn),instance
        for net in (bn,cn):
            assert len(re.findall(r'\bfp_wrapper\s*\(',net))==1
        br=(HERE/'dc'/b/f'{b}.dc.rpt').read_text()
        cr=(HERE/'dc'/c/f'{c}.dc.rpt').read_text()
        bd=area_for(br,'implementation/div_plane');bm=area_for(br,'implementation/mul_plane')
        bw=area_for(br,'implementation/fp_wrapper');cw=area_for(cr,'implementation/fp_wrapper')
        assert bd>0 and bm>0 and B['area_um2']>=bd+bm+bw-0.001
        hierarchy.append(dict(level=l,b_div_plane_area_um2=bd,b_mul_plane_area_um2=bm,
            b_fp_wrapper_area_um2=bw,c_fp_wrapper_area_um2=cw,
            b_other_area_um2=B['area_um2']-bd-bm-bw,
            note='inclusive hierarchy totals; other includes DIV scaling, mux, normalization and glue'))
        for role,top,p,fresh in [('A_DIV',d,D,False),('A_MUL',m,M,False),('B',b,B,True),('C',c,C,True)]:
            metrics.append(dict(level=l,role=role,top=top,**p,adp_um2_ns=p['area_um2']*p['delay_ns'],
                fresh_run=fresh,rtl_checks=rtl_count if fresh else 'existing campaign',
                gate_checks=gate_count if fresh else 'existing campaign',status='pass'))
        aa=D['area_um2']+M['area_um2']
        starts={}
        for role,top in [('b',b),('c',c)]:
            timing=(HERE/'pt'/top/f'{top}.pt.max_delay.rpt').read_text()
            starts[role]=re.search(r'Startpoint:\s+([^\n]+)',timing).group(1).strip()
        summary.append(dict(level=l,a_div_area_um2=D['area_um2'],a_mul_area_um2=M['area_um2'],
            a_sum_area_um2=aa,b_area_um2=B['area_um2'],c_area_um2=C['area_um2'],
            a_to_b_area_change_um2=aa-B['area_um2'],
            b_to_c_area_saved_um2=B['area_um2']-C['area_um2'],
            b_to_c_area_saved_pct=100*(1-C['area_um2']/B['area_um2']),
            a_to_c_area_saved_pct=100*(1-C['area_um2']/aa),
            b_delay_ns=B['delay_ns'],c_delay_ns=C['delay_ns'],
            b_critical_startpoint=starts['b'],c_critical_startpoint=starts['c'],
            c_delay_overhead_pct=100*(C['delay_ns']/B['delay_ns']-1),
            b_adp=B['area_um2']*B['delay_ns'],c_adp=C['area_um2']*C['delay_ns'],
            adp_saved_pct=100*(1-C['area_um2']*C['delay_ns']/(B['area_um2']*B['delay_ns'])),
            b_vectorless_power_mw=B['power_mw'],c_vectorless_power_mw=C['power_mw'],
            c_area_change_from_previous_um2=C['area_um2']-oldC['area_um2'],
            status='pass'))
    reader.write_csv(HERE/'ppa.csv',metrics)
    reader.write_csv(HERE/'comparison.csv',summary)
    reader.write_csv(HERE/'hierarchy.csv',hierarchy)
    report=['# Completed Matched-Shell Arithmetic Sharing','',
        f'{rtl_count} RTL/model checks and {gate_count} gate checks per B/C design; all passed.',
        'Both modes match their current standalone references bitwise on every RTL input.',
        'Fresh B/C DC/PT: TSMC65, 10 ns, ordinary compile, no flatten/ultra, no pipeline.',
        'All min/max constraint checks pass; no sequential cells or black boxes.',
        'A is a reused raw-report sum of two standalone units, not a throughput-matched selectable top.','',
        '| Level | A sum area | B area | C area | B-to-C area saved | B delay | C delay | ADP saved |',
        '|---|---:|---:|---:|---:|---:|---:|---:|']
    for r in summary:
        report.append(f'| L{r["level"]} | {r["a_sum_area_um2"]:.2f} | {r["b_area_um2"]:.2f} | {r["c_area_um2"]:.2f} | '
            f'{r["b_to_c_area_saved_pct"]:.2f}% | {r["b_delay_ns"]:.5f} | {r["c_delay_ns"]:.5f} | {r["adp_saved_pct"]:.2f}% |')
    report+=['','Area units: um2; delay units: ns. Negative savings mean a regression.',
        'B netlists retain separate div_plane and mul_plane instances; both B/C retain one fp_wrapper.',
        'See hierarchy.csv for inclusive core and wrapper areas; do not add nested children twice.',
        'B-to-C is net arithmetic-organization benefit, not exclusively multiplier area.',
        'A-to-B includes extra mode-selection cost and is not pure wrapper savings.',
        'Power in ppa.csv is vectorless; no matched-workload energy claim or operand-isolation study.',
        'Current shared source is unchanged; c_area_change_from_previous_um2 records rerun drift.',
        'Original canonical PPA and RTL remain untouched.','']
    (HERE/'RESULTS.md').write_text('\n'.join(report))
    for path in list(HERE.glob('*.py'))+list(HERE.glob('*.v'))+list(HERE.glob('*.sv'))+list(HERE.glob('*.log'))+[
        HERE/'run.sh',HERE/'inputs.txt',HERE/'accuracy.csv',HERE/'checks.json']:
        hashes[str(path.relative_to(ROOT))]=hashlib.sha256(path.read_bytes()).hexdigest()
    (HERE/'sha256.json').write_text(json.dumps(hashes,indent=2)+'\n')
    print('\n'.join(report))

if __name__=='__main__':main()
