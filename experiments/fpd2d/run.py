"""Run each paper reconstruction and unchanged STDM control through RTL/DC/PT/gate."""
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
SOURCES=[ROOT/'PACE/common/FP_DIV_WRAPPER_32.v', HERE/'fpd2d.v',
         ROOT/'experiments/fixed_div_level_specialization/specialized_rtl.v']
VARIANT=os.environ.get('FPD2D_VARIANT','')
if VARIANT=='milp':SOURCES.append(HERE/'fpd2d_milp.v')
CELL=Path('/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v')


def call(args, cwd, log, env=None):
    with log.open('w') as f:
        subprocess.run(list(map(str,args)),cwd=cwd,env=env,stdout=f,stderr=subprocess.STDOUT,check=True)
    s=log.read_text(errors='replace')
    if re.search(r'(?m)^(?:#\s*)?(?:Error:|Fatal:|\*\* Error)',s):
        raise RuntimeError(str(log))


def simulate(top,phase):
    folder=HERE/phase/top
    folder.mkdir(parents=True,exist_ok=True)
    work=folder/'work'
    call(['vlib',work],folder,folder/'vlib.log')
    sources=SOURCES if phase=='rtl' else [CELL,HERE/'dc'/top/f'{top}.nl.v']
    call(['vlog','-sv','-timescale','1ns/1ps','-work',work,*sources,HERE/f'{top}.tb.sv'],folder,folder/'vlog.log')
    call(['vsim','-c','-quiet','-lib',work,'-l',folder/'sim.log','tb',
          '-do','onerror {quit -code 1}; run -all; quit -f'],folder,folder/'console.log')
    assert 'FPD2D_CHECK PASS count=333072' in (folder/'sim.log').read_text()
    assert (folder/'outputs.hex').stat().st_size==333072*9
    if phase=='gate':
        assert (folder/'outputs.hex').read_bytes()==(HERE/'rtl'/top/'outputs.hex').read_bytes(),top
    print(phase+' PASS '+top,flush=True)


def main():
    for path,h in json.loads((HERE/'sources.json').read_text()).items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest()==h,path
    if VARIANT=='milp':
        for path,h in json.loads((HERE/'sources_milp.json').read_text()).items():
            assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest()==h,path
    phase=sys.argv[1] if len(sys.argv)>1 else 'all'
    for d in json.loads((HERE/('designs_milp.json' if VARIANT=='milp' else 'designs.json')).read_text()):
        top=d['top']
        if len(sys.argv)>2 and top!=sys.argv[2]:continue
        if phase in ('rtl','all'):simulate(top,'rtl')
        if phase in ('ppa','all'):
            assert 'FPD2D_CHECK PASS count=333072' in (HERE/'rtl'/top/'sim.log').read_text()
            dc=HERE/'dc'/top;pt=HERE/'pt'/top
            dc.mkdir(parents=True,exist_ok=True);pt.mkdir(parents=True,exist_ok=True)
            env=dict(os.environ,TOP_LEVEL=top,OUTPUT_DIR=str(dc),PERIOD_NS='10.0',RTL_FILES='|'.join(map(str,SOURCES)))
            call(['dc_shell','-f','module.tcl'],ROOT/'dc/hier_compile_10ns',dc/'console.log',env)
            env.update(DC_OUTPUT_DIR=str(dc),REPORT_DIR=str(pt))
            call(['pt_shell','-file',ROOT/'pt_dc/canonical_refresh/pt.tcl'],HERE,pt/'console.log',env)
            assert (dc/f'{top}.nl.v').exists() and (pt/f'{top}.pt.power.rpt').exists()
            print('PPA completed '+top,flush=True)
        if phase in ('gate','all'):simulate(top,'gate')


if __name__=='__main__':main()
