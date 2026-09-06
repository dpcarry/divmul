"""Preserve author partial sums/CSA; insert Eq.27 difference truncation only."""
import difflib
import hashlib
import json
import random
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
DROPS = (0, 4, 8, 12, 14, 15, 16, 17, 18)


def replace_once(source, old, new):
    assert source.count(old) == 1, old
    return source.replace(old, new, 1)


def main():
    cores, patches, manifest = [], [], {}
    for level in range(1,5):
        name = f'Mantissa_Div_L{level}' + ('_Kec' if level==4 else '')
        path = ROOT/f'PACE/L{level}/{name}.v'
        original = path.read_text()
        manifest[str(path.relative_to(ROOT))] = hashlib.sha256(path.read_bytes()).hexdigest()
        source = replace_once(original, f'module {name} #(', f'module pace_ztrunc_l{level} #(\n    parameter DROP = 0,')
        source = replace_once(source, 'assign x_sub_y= Mantissa_X - Mantissa_Y;', '''// Full input difference first; floor to the selected signed binary grid.
    wire signed [MANTISSA_WIDTH+1:0] z_full =
        $signed({2'b00, Mantissa_X}) - $signed({2'b00, Mantissa_Y});
    wire signed [MANTISSA_WIDTH+1:0] z_quant = (z_full >>> DROP) <<< DROP;
    // An extra sign bit is needed when z_quant=-1 and -z_quant=+1.
    wire signed [MANTISSA_WIDTH+1:0] z_negative = -z_quant;
    assign x_sub_y = z_quant[MANTISSA_WIDTH:0];''')
        if level > 1:
            source = replace_once(source, 'assign y_sub_x= Mantissa_Y - Mantissa_X;',
                                  'assign y_sub_x = z_negative[MANTISSA_WIDTH:0];')
            source = replace_once(source, 'assign sign_ysubx=y_sub_x[MANTISSA_WIDTH];',
                                  'assign sign_ysubx=z_negative[MANTISSA_WIDTH+1];')
        cores.append(source)
        patches.extend(difflib.unified_diff(original.splitlines(True), source.splitlines(True),
                                           fromfile=str(path.relative_to(ROOT)), tofile=f'generated_l{level}'))
    (HERE/'cores.v').write_text('\n'.join(cores))
    (HERE/'author_changes.diff').write_text(''.join(patches))
    (HERE/'author_sha256.json').write_text(json.dumps(manifest,indent=2)+'\n')
    configs=[]
    tops=[]
    for level in range(1,5):
        for drop in DROPS:
            name=f'pace_z_l{level}_d{drop}'
            configs.append(dict(design=name,level=level,drop=drop,retained_difference_fraction_bits=23-drop))
            tops.append(f'''module {name}(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l{level} #(.MANTISSA_WIDTH(23),.DROP({drop})) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule
''')
    (HERE/'tops.v').write_text('\n'.join(tops))
    (HERE/'designs.json').write_text(json.dumps(configs,indent=2)+'\n')
    (HERE/'tops.txt').write_text('\n'.join(c['design'] for c in configs)+'\n')
    # Stress borrowing at each truncation boundary, both signs, and all y cells.
    boundary={(0,0),(0,0x7fffff),(0x7fffff,0),(0x7fffff,0x7fffff)}
    for drop in DROPS:
        step=1<<drop
        for cell in range(17):
            for eps in (-1,0,1):
                y=min(0x7fffff,max(0,(cell<<19)+eps))
                for delta in (-2*step,-step-1,-step,-step+1,-1,0,1,step-1,step,step+1,2*step):
                    x=min(0x7fffff,max(0,y+delta))
                    boundary.add((x,y))
    for x in (0,1,2,15,31):
        for y in (0x7fffff,0x7ffffe,0x7fff00):
            boundary.add((x,y)); boundary.add((y,x))
    vectors=[(1,0x3f800000|x,0x3f800000|y) for x,y in sorted(boundary)]
    rng=random.Random(20260905)
    for _ in range(1000):
        vectors.append((2,(rng.getrandbits(1)<<31)|(rng.randrange(110,145)<<23)|rng.getrandbits(23),
                        (rng.getrandbits(1)<<31)|(rng.randrange(110,145)<<23)|rng.getrandbits(23)))
    with (ROOT/'experiments/input_trunc_bias/audit/inputs.txt').open() as f:
        for line in f:
            dataset,x,y=line.split()
            if dataset!='0': break
            vectors.append((0,int(x,16),int(y,16)))
    with (HERE/'inputs.txt').open('w') as f:
        for dataset,x,y in vectors: f.write(f'{dataset} {x:08x} {y:08x}\n')
    # Gate test covers every targeted case and 1,000 random pairs.
    gate_count=sum(d!=0 for d,x,y in vectors)+1000
    (HERE/'counts.json').write_text(json.dumps(dict(total=len(vectors),gate=gate_count,uniform=100000),indent=2)+'\n')
    n=len(configs)
    instances='\n'.join(f"{c['design']} d{i}(x,y,z[{i}]);" for i,c in enumerate(configs))
    references='\n'.join(f'wire [31:0] ref{l}; pace_fp32_l{l} r{l}(x,y,ref{l});' for l in range(1,5))
    controls='\n'.join(f'if(z[{(l-1)*len(DROPS)}] !== ref{l}) $fatal(1,"CONTROL_MISMATCH L{l}");' for l in range(1,5))
    gates='\n'.join(f"wire [31:0] g{i}; {c['design']}_gate gd{i}(x,y,g{i});" for i,c in enumerate(configs))
    gatechecks='\n'.join(f'if(z[{i}] !== g{i}) $fatal(1,"GATE_MISMATCH {i} count=%0d",count);' for i in range(n))
    fmt='%d '+' '.join(['%08h']*(n+2))+'\\n'
    args=','.join(['dataset','x','y']+[f'z[{i}]' for i in range(n)])
    (HERE/'tb.sv').write_text(f'''`timescale 1ns/1ps
module tb;
reg [31:0] x,y;
wire [31:0] z[0:{n-1}];
integer fd,fo,scan,count,dataset;
{instances}
{references}
`ifdef GATE
{gates}
`endif
initial begin
fd=$fopen("{HERE}/inputs.txt","r");
if(!fd) $fatal(1,"missing inputs");
`ifndef GATE
fo=$fopen("{HERE}/rtl_outputs.txt","w");
`endif
count=0;
while(!$feof(fd)) begin
scan=$fscanf(fd,"%d %h %h\\n",dataset,x,y);
if(scan!=3) $fatal(1,"bad input");
#10;
{controls}
`ifdef GATE
{gatechecks}
if(count=={gate_count-1}) begin
$display("ZTRUNC_GATE PASS: {gate_count} vectors per DUT"); $finish;
end
`else
$fwrite(fo,"{fmt}",{args});
`endif
count=count+1;
end
$display("ZTRUNC_RTL PASS: %0d vectors; four drop0 controls match author RTL",count);
$finish;
end
endmodule
''')
    print(json.dumps(dict(designs=n,vectors=len(vectors),gate_vectors=gate_count)))


if __name__=='__main__': main()
