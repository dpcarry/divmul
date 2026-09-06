"""Generate isolated fixed-level tops and identical independent test vectors."""
import hashlib
import json
import random
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
MASK=(1<<23)-1

def main():
    rng=random.Random(20260904)
    vectors=[(0,0x3f800000|rng.getrandbits(23),0x3f800000|rng.getrandbits(23)) for _ in range(100000)]
    edges={0,MASK}
    for k in range(17):
        for d in (-1,0,1):
            v=k*(1<<19)+d
            if 0<=v<=MASK: edges.add(v)
    vectors += [(1,0x3f800000|x,0x3f800000|y) for x in sorted(edges) for y in sorted(edges)]
    for _ in range(2000):
        x=(rng.getrandbits(1)<<31)|(rng.randrange(110,145)<<23)|rng.getrandbits(23)
        y=(rng.getrandbits(1)<<31)|(rng.randrange(110,145)<<23)|rng.getrandbits(23)
        vectors.append((2,x,y))
    (HERE/'inputs.txt').write_text(''.join(f'{d} {x:08x} {y:08x}\n' for d,x,y in vectors))
    counts={str(i):sum(d==i for d,_,_ in vectors) for i in range(3)}
    (HERE/'counts.json').write_text(json.dumps(counts,indent=2)+'\n')
    hashes={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
            for p in sorted((ROOT/'third_party/amlib_oam').glob('L*/src/*.v'))}
    (HERE/'author_sha256.json').write_text(json.dumps(hashes,indent=2)+'\n')
    for level in range(4):
        top=f'plain_mul_l{level}'
        (HERE/f'top{level}.v').write_text(f'module {top}(input wire [31:0] x,y, output wire [31:0] result);\n'
            f'plain_mul_plane #(.LEVEL({level})) core(x,y,result);\nendmodule\n')
        tb=f'''module tb;
reg [31:0] x,y;
wire [31:0] plain,author,original;
wire [22:0] om; wire os; wire [7:0] oe;
{top} p(x,y,plain);
amlib_oam_l{level}_fp32_common a(x,y,author);
top original_top(.mantissa_x(x[22:0]),.mantissa_y(y[22:0]),.sign_x(x[31]),.sign_y(y[31]),
 .exp_x(x[30:23]),.exp_y(y[30:23]),.mantissa_out(om),.sign_out(os),.exp_out(oe));
assign original={{os,oe,om}};
`ifdef GATE
wire [31:0] pg,ag;
{top}_gate gp(x,y,pg);
amlib_oam_l{level}_fp32_common_gate ga(x,y,ag);
`endif
integer fd,fo,status,ds,n=0;
initial begin
fd=$fopen("{HERE}/inputs.txt","r");
fo=$fopen("{HERE}/outputs_l{level}.txt","w");
while(!$feof(fd)) begin
 status=$fscanf(fd,"%d %h %h\\n",ds,x,y);
 if(status==3) begin
`ifdef GATE
 if(ds!=0 || n<1000) begin
`endif
 #10;
 if(author !== original) $fatal(1,"WRAPPER MISMATCH %h %h",x,y);
`ifdef GATE
 if(plain !== pg || author !== ag) $fatal(1,"GATE MISMATCH %h %h",x,y);
 end
`else
 $fwrite(fo,"%d %h %h %h %h\\n",ds,x,y,plain,author);
`endif
 n=n+1;
 end
end
$display("PLAIN_OAM PASS L{level} scanned=%0d",n);
$fclose(fd);
`ifndef GATE
$fclose(fo);
`endif
$finish;
end
endmodule
'''
        # Gate runs must not overwrite the measured RTL outputs.
        tb=tb.replace(f'fo=$fopen("{HERE}/outputs_l{level}.txt","w");',
                      f'`ifndef GATE\nfo=$fopen("{HERE}/outputs_l{level}.txt","w");\n`endif')
        (HERE/f'tb{level}.sv').write_text(tb)

if __name__=='__main__': main()
