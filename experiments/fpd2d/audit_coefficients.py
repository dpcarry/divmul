"""Independently solve paper Algorithm 1 for 8x8; never replace printed tables."""
import json
import hashlib
import numpy as np
from scipy.optimize import milp, LinearConstraint, Bounds
from scipy.sparse import csr_matrix, eye, hstack, vstack
import prepare as p


def main():
    g=np.arange(20)/160
    u,v=np.meshgrid(g,g,indexing='ij');u=u.ravel();v=v.ravel()
    table=[];audit=[]
    for k in range(8):
        row=[]
        for h in range(8):
            exact=(1+h/8+u)/(1+k/8+v)
            matrix=csr_matrix(np.column_stack([u/4,v/4,np.ones(400)/128])/exact[:,None])
            constraint=vstack([hstack([matrix,-eye(400)]),hstack([-matrix,-eye(400)])]).tocsc()
            result=milp(np.r_[np.zeros(3),np.ones(400)],
                        integrality=np.r_[np.ones(3),np.zeros(400)],
                        bounds=Bounds(np.r_[[ -np.inf]*3,np.zeros(400)],np.inf),
                        constraints=LinearConstraint(constraint,-np.inf,np.r_[np.ones(400),-np.ones(400)]),
                        options={'time_limit':60,'mip_rel_gap':1e-9})
            assert result.success,(h,k,result.message)
            abc=np.rint(result.x[:3]).astype(int)
            assert np.max(np.abs(abc-result.x[:3]))<1e-5
            a,b,c=map(int,abc)
            assert 0<=a<8 and 0<=-b<8 and 0<=c<256
            old=p.TABLES['8x8'][k][h]
            old_error=float(np.mean(np.abs(matrix@old-1)))
            new_error=float(np.mean(np.abs(matrix@abc-1)))
            audit.append(dict(h=h,k=k,printed=old,optimized=abc.tolist(),
                              printed_training_mred=old_error,optimized_training_mred=new_error,
                              mip_gap=float(result.mip_gap)))
            row.append(abc.tolist())
            print(f'tile {h},{k}: {old} -> {abc.tolist()}',flush=True)
        table.append(row)
    (p.HERE/'coefficient_audit.json').write_text(json.dumps(audit,indent=2)+'\n')
    (p.HERE/'coefficients_milp_8x8.json').write_text(json.dumps(table,indent=2)+'\n')
    p.TABLES['8x8']=table
    xy=np.load(p.HERE/'inputs.npy')
    designs=[];rtl=[];paths=[]
    for t in [17,16,15]:
        old=f'fpd2d_8x8_t{t}';top=old+'_milp'
        rtl.append(p.rtl(8,8,t).replace(old,top))
        expected=p.model(xy[:,0],xy[:,1],8,8,t)
        dest=p.HERE/f'{top}.expected.hex';paths.append(dest)
        dest.write_text(''.join(f'{o:08x}\n' for o in expected))
        dest=p.HERE/f'{top}.tb.sv';paths.append(dest)
        dest.write_text((p.HERE/f'{old}.tb.sv').read_text().replace(old,top))
        designs.append(dict(top=top,family='FPD2D_MILP',nx=8,ny=8,t=t,
                            paper_mred_pct={17:.54,16:.42,15:.39}[t]))
    (p.HERE/'fpd2d_milp.v').write_text('\n\n'.join(rtl)+'\n')
    (p.HERE/'designs_milp.json').write_text(json.dumps(designs,indent=2)+'\n')
    paths += [p.HERE/'fpd2d_milp.v',p.HERE/'coefficients_milp_8x8.json']
    (p.HERE/'sources_milp.json').write_text(json.dumps({str(f.relative_to(p.ROOT)):hashlib.sha256(f.read_bytes()).hexdigest() for f in paths},indent=2)+'\n')


if __name__=='__main__':main()
