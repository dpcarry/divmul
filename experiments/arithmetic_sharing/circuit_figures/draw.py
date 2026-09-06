"""Detailed fixed-level RTL schematics; no paper or existing figure changes."""
from pathlib import Path
import hashlib
import json

import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.patches import Circle, FancyArrowPatch, Polygon, Rectangle

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
INK = '#30383d'
BLUE = '#287aba'
GREY = '#e4e7e9'
YELLOW = '#fff1c9'
INPUT = '#dceefb'
COEFFICIENTS = [[59], [83, 42], [203, 136, 97, 73],
                [227, 182, 149, 124, 105, 90, 78, 68]]


def draw(level):
    plt.rcParams.update({'font.family': 'DejaVu Serif', 'mathtext.fontset': 'dejavuserif',
                         'font.size': 12, 'pdf.fonttype': 42, 'svg.fonttype': 'none'})
    fig, ax = plt.subplots(figsize=(18, 11))
    ax.set(xlim=(0, 18), ylim=(0, 11))
    ax.set_aspect('equal')
    ax.axis('off')

    def txt(x, y, text, size=12, color=INK, ha='center'):
        return ax.text(x, y, text, fontsize=size, color=color, ha=ha, va='center')

    def box(x, y, w, h, text, color=GREY, size=12):
        ax.add_patch(Rectangle((x, y-h/2), w, h, facecolor=color, edgecolor=INK, lw=1.2, zorder=3))
        txt(x+w/2, y, text, size)

    def wire(points, color=INK, arrow=True):
        if len(points) > 2:
            ax.plot(*zip(*points[:-1]), color=color, lw=1.2, zorder=1)
        if arrow:
            ax.add_patch(FancyArrowPatch(points[-2], points[-1], arrowstyle='-|>',
                                        mutation_scale=10, lw=1.2, color=color, zorder=2))
        else:
            ax.plot(*zip(*points[-2:]), color=color, lw=1.2, zorder=1)

    def dot(x, y):
        ax.add_patch(Circle((x, y), .035, color=INK, zorder=3))

    def op(x, y, symbol):
        ax.add_patch(Circle((x, y), .28, facecolor='white', edgecolor=INK, lw=1.4, zorder=3))
        txt(x, y, symbol, 19)

    def mux(x, y, height=1.05):
        ax.add_patch(Polygon([(x,y+height/2), (x+.56,y+height*.31),
                              (x+.56,y-height*.31), (x,y-height/2)],
                             facecolor=YELLOW, edgecolor=INK, lw=1.2, zorder=3))
        txt(x+.14,y+.23,'1',10)
        txt(x+.14,y-.23,'0',10)
        wire([(x+.28,y-.86),(x+.28,y-height*.40)],BLUE)
        txt(x+.28,y-.98,r'$m$',12,BLUE)

    r = 23-level
    dd = 18 if level == 0 else 16
    dm = [16,14,12,10][level]
    dw = dd
    cb = 7 if level < 2 else 8
    width = r-dm
    txt(.35,10.65,f'L{level} shared DIV/MUL mantissa datapath',19,ha='left')
    txt(17.65,10.65,r'$m=1$: DIV     $m=0$: MUL',13,BLUE,ha='right')
    txt(.35,10.08,'(a) Residual recoding, precision selection, and shared products',13,ha='left')

    for var,y,other in [('x',9.15,'y'),('y',7.3,'x')]:
        box(.35,y,1.25,.54,rf'${var}_m[23:0]$',INPUT)
        wire([(1.6,y),(1.92,y)])
        box(1.92,y,3.25,.66,
            rf'$r_{var}=\{{\neg {var}_m[{22-level}],\ {var}_m[{21-level}:0]\}}$',size=12)
        txt(3.55,y-.52,f'{r}-bit signed',10)
        wire([(5.17,y),(5.4,y)],arrow=False)
        dot(5.4,y)
        for dy,label in [(.36,rf'$\{{r_{var}[{r-1}:{dd}],\ {dd-dm}\mathrm{{\ zeros}}\}}$'),
                         (-.36,rf'$r_{var}[{r-1}:{dm}]$')]:
            wire([(5.4,y),(5.4,y+dy),(5.68,y+dy)])
            box(5.68,y+dy,2.4,.48,label,size=11)
            wire([(8.08,y+dy),(8.35,y+dy),(8.5,y+(.23 if dy>0 else -.23))])
        mux(8.5,y)
        wire([(9.06,y),(10.22,y)])
        txt(9.62,y+.23,f'{width} bits',10)
        op(10.5,y,r'$\times$')
        wire([(10.78,y),(11.55,y)])
        txt(11.68,y,rf'$P_{var}$',15,ha='left')
        wire([(10.5,y+.91),(10.5,y+.28)])
        txt(10.5,y+1.04,rf'$K_{other}$',13)

    # Named K nets are the same signals at every labeled terminal below.
    if level:
        text=(rf'$i_x=x_m[22:{23-level}],\quad i_y=y_m[22:{23-level}]$'+'\n'+
              rf'$K_x={16+2**(3-level)}+{2**(4-level)}i_x$'+'\n'+
              rf'$K_y={16+2**(3-level)}+{2**(4-level)}i_y$')
    else:
        text=r'$K_x=K_y=24$'+'\n'+r'$k_x=k_y=1.5$'
    box(12.5,8.75,4.8,1.48,text,INPUT,13)
    txt(14.9,7.72,r'$K_x=16k_x,\quad K_y=16k_y$',12)
    txt(14.9,7.28,r'$P_x=r_{x,\mathrm{sel}}K_y$'+',  '+r'$P_y=r_{y,\mathrm{sel}}K_x$',12)
    ax.plot([.35,17.65],[6.45,6.45],color='#bfc8ce',lw=.8)

    txt(.35,6.12,'(b) Shared plane and MUL compensation',13,ha='left')
    txt(9.35,6.12,'(c) DIV scaling and mode selection',13,ha='left')

    box(.35,5.52,3.3,.54,r'$(K_xK_y)\ll15$')
    wire([(3.65,5.52),(7.8,5.52),(7.8,4.83)])
    box(.35,4.75,3.3,.54,rf'$A=\mathrm{{sext}}_{{29}}(P_x)\ll{dm-4}$',size=11)
    wire([(3.65,4.75),(7.18,4.75),(7.54,4.66)])
    box(.35,3.65,3.3,.54,rf'$B=\mathrm{{sext}}_{{29}}(P_y)\ll{dm-4}$',size=11)
    wire([(3.65,3.65),(3.9,3.65)],arrow=False)
    dot(3.9,3.65)
    wire([(3.9,3.65),(3.9,4.01),(4.22,4.01)])
    box(4.22,4.01,1.1,.44,r'$-B$',size=12)
    wire([(5.32,4.01),(5.62,4.01),(5.88,3.88)])
    wire([(3.9,3.65),(3.9,3.42),(5.88,3.42)])
    mux(5.88,3.65)
    wire([(6.44,3.65),(7.1,3.65),(7.53,4.43)])
    box(.35,2.03,3.3,.54,rf'$\beta=(K_x+K_y)\ll{dm-5}$',size=12)
    wire([(3.65,2.03),(4.1,2.03),(4.1,1.8),(5.88,1.8)])
    box(4.45,2.38,.72,.4,'0')
    wire([(5.17,2.38),(5.55,2.38),(5.88,2.26)])
    mux(5.88,2.03)
    wire([(6.44,2.03),(7.8,2.03),(7.8,4.27)])
    op(7.8,4.55,r'$+$')
    wire([(8.08,4.55),(9.8,4.55)],arrow=False)
    txt(8.93,4.8,r'$W$',15)
    txt(7.8,1.46,'29-bit plane',11)

    dot(9.8,4.55)
    wire([(9.8,4.55),(10.13,4.55)])
    box(10.13,4.55,1.95,.54,rf'$W[24:{dw}]$',size=13)
    wire([(12.08,4.55),(12.62,4.55)])
    op(12.9,4.55,r'$\times$')
    txt(12.0,4.98,f'{25-dw} bits',10)
    box(11.42,5.45,2.97,.48,rf'$C={COEFFICIENTS[level][0]}$' if level==0 else r'$C=C[i_y]$',INPUT)
    wire([(12.9,5.21),(12.9,4.83)])
    wire([(13.18,4.55),(13.55,4.55)])
    box(13.55,4.55,1.87,.54,rf'$\ll{dw-cb}$',size=13)
    wire([(15.42,4.55),(15.62,4.55),(15.8,4.43)])
    mux(15.8,4.2)
    wire([(9.8,4.55),(9.8,3.37),(15.45,3.37),(15.45,3.97),(15.8,3.97)])
    txt(11.55,3.59,'MUL bypass',11)
    wire([(16.36,4.2),(17.65,4.2)])
    txt(17.05,4.47,r'$V$',14)
    txt(16.9,3.71,'to normalization',10)
    txt(16.9,3.45,'and FP32 packing',10)
    txt(12.7,2.78,rf'DIV coefficient format: Q0.{cb}',12)
    values=', '.join(str(v) for v in COEFFICIENTS[level])
    txt(13.3,2.36,rf'$C=[{values}]$',11)
    if level:
        txt(13.3,2.02,rf'$i_y=0,\ldots,{2**level-1}$',11)
    txt(13.3,1.49,r'$W=A+(m?\!-B:B)+(K_xK_y\ll15)+(m?\!0:\beta)$',11)

    ax.plot([.35,17.65],[.86,.86],color='#bfc8ce',lw=.8)
    txt(.35,.5,'All arithmetic blocks are exact on the retained operands; shifts are fixed wiring.',11,ha='left')
    txt(17.65,.5,'Named terminals denote connected nets. Fixed level; live operation mode.',10,ha='right')
    fig.subplots_adjust(left=.015,right=.985,bottom=.015,top=.985)
    stem=HERE/f'oadm_fixed_l{level}_circuit'
    for ext in ('pdf','svg','png'):
        fig.savefig(stem.with_suffix('.'+ext),dpi=180,facecolor='white')
    plt.close(fig)


if __name__ == '__main__':
    HERE.mkdir(parents=True, exist_ok=True)
    for level in range(4):
        draw(level)
    rtl=ROOT/'rtl/root_opt/oadm_fixed_divmul_root_opt.v'
    (HERE/'source.json').write_text(json.dumps({str(rtl.relative_to(ROOT)):
        hashlib.sha256(rtl.read_bytes()).hexdigest()},indent=2)+'\n')
    print('Generated fixed L0-L3 detailed circuit figures: PDF, SVG, PNG.')
