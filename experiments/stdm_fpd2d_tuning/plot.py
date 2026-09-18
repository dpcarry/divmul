"""Keep reconstructed coefficient variants visually distinct."""
import csv
import os
os.environ.setdefault('MPLCONFIGDIR','/tmp/stdm-mpl')
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from sweep import HERE

base=list(csv.DictReader((HERE/'baseline.csv').open()))
rows=list(csv.DictReader((HERE/'ppa_accuracy.csv').open()))
groups=[([r for r in base if r['family']=='STDM'],'STDM controls','o','#252525'),
        ([r for r in base if 'milp' in r['top']],'FPD2D 8x8 reoptimized','s','#12806a'),
        ([r for r in base if r['family'].startswith('FPD2D') and 'milp' not in r['top']],
         'FPD2D printed tables','^','#999999'),
        (rows,'STDM tuning, verified','x','#b13d50')]
fig,axes=plt.subplots(1,2,figsize=(11,4.4))
for ax,metric,label in zip(axes,['mred','rmse'],['MRED (%)','RMSE']):
    for points,name,marker,color in groups:
        scale=100 if metric=='mred' else 1
        ax.scatter([scale*float(r[metric]) for r in points],
                   [float(r['adp_um2_ns']) for r in points],label=name,marker=marker,c=color,s=38)
    ax.set(xlabel=label,ylabel='Area-delay product (um2 ns)',xscale='log',yscale='log')
    ax.grid(alpha=.18)
axes[0].legend(fontsize=8)
fig.tight_layout()
fig.savefig(HERE/'comparison.png',dpi=180)
fig.savefig(HERE/'comparison.pdf')
