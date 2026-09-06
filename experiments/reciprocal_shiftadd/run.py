"""Run isolated exact scale-multiplier ablation through RTL, DC, PT, gate."""
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import tempfile

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]


def run(args, log, env=None, cwd=None):
    with log.open('w') as f:
        subprocess.run(args,cwd=cwd or HERE,env=env,stdout=f,stderr=subprocess.STDOUT,check=True)
    text=log.read_text(errors='replace')
    assert not re.search(r'(?m)^(?:#\s*)?(Error:|Fatal:|\*\* Error)',text),log
    return text


def main():
    for path,h in json.loads((HERE/'sources.json').read_text()).items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest()==h,path
    designs=json.loads((HERE/'designs.json').read_text())
    sources=[ROOT/'PACE/common/FP_DIV_WRAPPER_32.v',ROOT/'rtl/root_opt/oadm_fixed_divmul_root_opt.v',
             HERE/'binary.v',HERE/'csd.v']
    kind=sys.argv[1] if len(sys.argv)>1 else 'all'
    phases=['rtl','ppa','gate'] if kind=='all' else [kind]
    for phase in phases:
        if phase=='ppa':
            for l in range(4):
                log=(HERE/f'rtl_l{l}.log').read_text()
                assert f'RECIP_SHIFTADD PASS L{l} checked=208608' in log
            for d in sorted(designs,key=lambda d:(d['level'],d['kind'])):
                top=d['top'];dc=HERE/'dc'/top;pt=HERE/'pt'/top
                dc.mkdir(parents=True,exist_ok=True);pt.mkdir(parents=True,exist_ok=True)
                # Completion markers are reusable only with the original hashed inputs.
                marker=dc/'completed.json'
                if marker.exists():
                    for p,h in json.loads(marker.read_text()).items():
                        assert hashlib.sha256((ROOT/p).read_bytes()).hexdigest()==h,p
                    print('PPA cached '+top,flush=True);continue
                env=dict(os.environ,TOP_LEVEL=top,OUTPUT_DIR=str(dc),PERIOD_NS='10.0',
                         RTL_FILES='|'.join(map(str,sources)))
                run(['dc_shell','-f','module.tcl'],dc/'dc_console.log',env,ROOT/'dc/hier_compile_10ns')
                env.update(DC_OUTPUT_DIR=str(dc),REPORT_DIR=str(pt))
                run(['pt_shell','-file',str(ROOT/'pt_dc/canonical_refresh/pt.tcl')],pt/'pt_console.log',env)
                evidence=list(dc.glob('*.rpt'))+list(dc.glob('*.v'))+list(dc.glob('*.sdc'))+list(pt.glob('*.rpt'))
                assert (dc/f'{top}.nl.v').exists() and (pt/f'{top}.pt.power.rpt').exists()
                marker.write_text(json.dumps({str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in evidence},indent=2)+'\n')
                print('PPA completed '+top,flush=True)
        else:
            assert phase in ('rtl','gate')
            with tempfile.TemporaryDirectory(prefix='recip_shiftadd_') as tmp:
                tmp=Path(tmp)
                for l in range(4):
                    work=tmp/f'work{l}'
                    run(['vlib',str(work)],HERE/f'{phase}_vlib_l{l}.log')
                    extra=[]
                    if phase=='gate':
                        extra=['+define+GATE','/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v']
                        for d in designs:
                            if d['level']!=l:continue
                            top=d['top'];dest=tmp/f'{top}.v'
                            subprocess.run([sys.executable,str(ROOT/'scripts/prefix_verilog_modules.py'),
                                str(HERE/'dc'/top/f'{top}.nl.v'),str(dest),top],check=True)
                            extra.append(str(dest))
                    run(['vlog','-sv','-timescale','1ns/1ps','-work',str(work),
                         *map(str,sources),*extra,str(HERE/f'tb{l}.sv')],HERE/f'{phase}_build_l{l}.log')
                    run(['vsim','-c','-quiet','-lib',str(work),'-l',str(HERE/f'{phase}_l{l}.log'),'tb',
                         '-do','onerror {quit -code 1}; run -all; quit -f'],HERE/f'{phase}_console_l{l}.log')
                    log=(HERE/f'{phase}_l{l}.log').read_text()
                    expected=208608 if phase=='rtl' else 10608
                    assert f'RECIP_SHIFTADD PASS L{l} checked={expected}' in log
                    assert 'Errors: 0' in log and 'MISMATCH' not in log and 'Fatal:' not in log
                    print(f'{phase.upper()} PASS L{l}: {expected} vectors per design',flush=True)


if __name__=='__main__':main()
