"""Join verified reports with shared-vector RTL accuracy and draw ADP/RMSE."""
import csv
import hashlib
import importlib.util
import json
import math
import re
import struct
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
BASE = ROOT / 'experiments/input_trunc_bias'
spec = importlib.util.spec_from_file_location('report_reader', BASE / 'collect.py')
reader = importlib.util.module_from_spec(spec)
spec.loader.exec_module(reader)


def fp(word):
    return struct.unpack('>f', struct.pack('>I', word))[0]


def word(value):
    return struct.unpack('>I', struct.pack('>f', value))[0]


def main():
    for kind, marker in (('rtl', 'FIGURE_RTL PASS: 100000'), ('gate', 'FIGURE_GATE PASS: 20000')):
        log = (HERE / f'{kind}.log').read_text()
        assert marker in log and 'MISMATCH' not in log and 'Fatal:' not in log
    manifest = json.loads((BASE / 'results/sha256.json').read_text())
    for path, digest in manifest.items():
        assert hashlib.sha256((ROOT / path).read_bytes()).hexdigest() == digest, path
    designs = json.loads((HERE / 'designs.json').read_text())
    errors = [[] for _ in designs]
    relative = [[] for _ in designs]
    cases = 0
    with (HERE / 'rtl_outputs.txt').open() as f:
        for line in f:
            values = [int(v,16) for v in line.split()]
            assert len(values) == len(designs)+2
            x,y = map(fp,values[:2])
            reference = x/y
            for i,d in enumerate(designs):
                actual = fp(values[i+2])
                assert math.isfinite(actual)
                if d['bits'] != '':
                    b = d['bits']
                    a = (math.floor(x*2**b) + d['bias']*.5)/2**b
                    den = (math.floor(y*2**b) + d['bias']*.5)/2**b
                    expected = math.floor((a/den)*2**(b+2))/2**(b+2)
                    assert word(expected) == values[i+2], (d['design'], cases)
                error = actual-reference
                errors[i].append(error)
                relative[i].append(abs(error/reference))
            cases += 1
    assert cases == 100000
    rows = []
    hashes = {}
    for i,d in enumerate(designs):
        top = d['top']
        if d['level'] != '':
            base = ROOT / 'experiments/fixed_div_level_specialization'
        else:
            base = BASE if d['bias'] else HERE
        dc,pt = base/'dc'/top, base/'pt'/top
        report = reader.reports(top, dc, pt)
        console = (dc/'dc_console.log').read_text()
        assert re.search(r'(?m)^compile\s*$', console), top
        assert not re.search(r'(?m)^(ungroup|compile_ultra)(\s|$)',console), top
        assert not re.search(r'(?m)^Error:',console), top
        for p in [dc/f'{top}.nl.v', dc/f'{top}.dc.rpt', dc/f'{top}.syn.sdc',
                  pt/f'{top}.pt.max_delay.rpt', pt/f'{top}.pt.power.rpt']:
            hashes[str(p.relative_to(ROOT))] = hashlib.sha256(p.read_bytes()).hexdigest()
        rows.append(dict(**d, **report, adp_um2_ns=report['area_um2']*report['delay_ns'],
                         cases=cases, rmse=math.sqrt(math.fsum(v*v for v in errors[i])/cases),
                         mred=math.fsum(relative[i])/cases,
                         mae=math.fsum(abs(v) for v in errors[i])/cases,
                         mean_error=math.fsum(errors[i])/cases, max_relative=max(relative[i]),
                         residual_drop=(18 if d['level']==0 else 16) if d['level']!='' else '',
                         wn_drop=(18 if d['level']==0 else 16) if d['level']!='' else '',
                         quotient_fraction_bits=d['bits']+2 if d['bits']!='' else '',
                         status='pass'))
    reader.write_csv(HERE/'comparison.csv',rows)
    (HERE/'report_sha256.json').write_text(json.dumps(hashes,indent=2)+'\n')
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    plt.rcParams.update({'font.family':'serif', 'font.size':11, 'pdf.fonttype':42,
                         'ps.fonttype':42, 'axes.spines.top':False, 'axes.spines.right':False})
    for logarithmic_y,suffix in ((False,''),(True,'_log_rmse')):
        fig,ax = plt.subplots(figsize=(6.8,4.6))
        for bias,color,marker,label in ((0,'#245987','o','Truncated exact integer DIV'),
                                        (1,'#ce6b14','s','Truncated exact integer DIV + bias')):
            group = [r for r in rows if r['bias']==bias]
            ax.plot([r['adp_um2_ns'] for r in group],[r['rmse'] for r in group],
                    color=color, marker=marker, markersize=6, linewidth=1.5,
                    linestyle='--' if bias else '-', label=label)
            for r in group:
                offset = (-6,10) if bias==0 else (10,-16)
                alignment = 'center'
                if bias==0 and r['bits']==7:
                    offset = (-18,-8)
                    alignment = 'right'
                if bias==1 and r['bits'] in (3,7):
                    offset = (10,3)
                    alignment = 'left'
                ax.annotate(f"b={r['bits']}",(r['adp_um2_ns'],r['rmse']),
                            xytext=offset, textcoords='offset points',
                            ha=alignment,fontsize=9,color=color)
        group = [r for r in rows if r['level']!='']
        ax.scatter([r['adp_um2_ns'] for r in group],[r['rmse'] for r in group],
                   color='#347657',marker='D',s=48,zorder=4,label='OADM DIV (selected fixed levels)')
        for r in group:
            offset = (7,7) if r['level']!=3 else (7,14)
            ax.annotate(f"L{r['level']}",(r['adp_um2_ns'],r['rmse']),xytext=offset,
                        textcoords='offset points',fontsize=10,color='#24563e')
        ax.set_xscale('log')
        if logarithmic_y:
            ax.set_yscale('log')
            ax.set_ylim(.0018,.085)
        else:
            ax.set_ylim(-.002,.076)
        ax.set_xlim(500,10000)
        ax.set_xlabel(r'Area $\times$ delay ($\mu$m$^2\cdot$ns), log scale')
        ax.set_ylabel('RMSE of packed FP32 quotient')
        ax.grid(axis='y',alpha=.25)
        ax.legend(loc='upper right',fontsize=9,frameon=False)
        fig.tight_layout()
        for ext in ('pdf','png'):
            fig.savefig(HERE/f'adp_rmse{suffix}.{ext}',dpi=240)
        plt.close(fig)
    print(json.dumps([{k:r[k] for k in ('design','area_um2','delay_ns','adp_um2_ns','rmse','mred')} for r in rows],indent=2))


if __name__ == '__main__':
    main()
