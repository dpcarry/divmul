"""Controlled runtime truncation ablation; production sources remain untouched."""
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
TOPS = ['oadm_runtime_root_opt', 'runtime_residual', 'runtime_wn', 'runtime_both']


def main():
    source = (ROOT/'rtl/root_opt/oadm_root_opt.v').read_text()
    source = source[:source.index('module oadm_fixed_div_root_opt')]
    generated = []
    for name, residual, wn in [(TOPS[1], True, False), (TOPS[2], False, True), (TOPS[3], True, True)]:
        code = source.replace('oadm_runtime_root_opt', name).replace('oadm_runtime_plane_pruned', name+'_plane')
        if residual:
            start = code.index('    wire signed [22-RESIDUAL_DROP:0] x_residual_hi')
            end = code.index('    wire signed [28-RESIDUAL_DROP:0] x_product')
            code = code[:start]+'''    reg signed [12:0] x_residual_hi, y_residual_hi;
    always @* begin
        if (divide_mode) begin
            if (level == 0) begin
                x_residual_hi = {x_residual[22:18], 8'b0};
                y_residual_hi = {y_residual[22:18], 8'b0};
            end else begin
                x_residual_hi = {x_residual[22:16], 6'b0};
                y_residual_hi = {y_residual[22:16], 6'b0};
            end
        end else begin
            case (level)
                0: begin
                    x_residual_hi = {x_residual[22:16], 6'b0};
                    y_residual_hi = {y_residual[22:16], 6'b0};
                end
                1: begin
                    x_residual_hi = {x_residual[22:14], 4'b0};
                    y_residual_hi = {y_residual[22:14], 4'b0};
                end
                2: begin
                    x_residual_hi = {x_residual[22:12], 2'b0};
                    y_residual_hi = {y_residual[22:12], 2'b0};
                end
                default: begin
                    x_residual_hi = x_residual[22:10];
                    y_residual_hi = y_residual[22:10];
                end
            endcase
        end
    end
''' + code[end:]
        if wn:
            start = code.index('    // Q0.7 scaling')
            end = code.index('    wire signed [28:0] core_value', start)
            code = code[:start]+'''    wire [8:0] scale_operand = level == 0
        ? {shared_value[24:18], 2'b0} : shared_value[24:16];
    wire [15:0] reduced_scale_product = scale_operand * coefficient;
    wire signed [28:0] divided_value =
        $signed({4'b0, reduced_scale_product, 9'b0});
''' + code[end:]
        generated.append(code)
    (HERE/'variants.v').write_text('\n'.join(generated))
    inputs = ROOT/'experiments/arithmetic_sharing/inputs.txt'
    counts = json.loads((inputs.parent/'counts.json').read_text())
    (HERE/'counts.json').write_text(json.dumps(counts))
    files = [ROOT/'rtl/root_opt/oadm_root_opt.v', ROOT/'PACE/common/FP_DIV_WRAPPER_32.v', inputs, HERE/'variants.v']
    (HERE/'sources.json').write_text(json.dumps({str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in files}, indent=2))
    for i, top in enumerate(TOPS):
        (HERE/f'tb{i}.sv').write_text(f'''`timescale 1ns/1ps
module tb;
reg [31:0] x,y; reg divide_mode; reg [1:0] level;
wire [31:0] out;
{top} DUT(x,y,level,divide_mode,out);
`ifdef GATE
wire [31:0] gate_out;
{top}_gate G(x,y,level,divide_mode,gate_out);
`endif
integer fd,fo,status,ds,n=0,checked=0,l,m;
initial begin
fd=$fopen("{inputs}","r"); if(!fd) $fatal(1,"missing inputs");
`ifndef GATE
fo=$fopen("{HERE}/outputs{i}.txt","w");
`endif
while(!$feof(fd)) begin
status=$fscanf(fd,"%d %h %h\\n",ds,x,y);
if(status==3) begin
`ifdef GATE
if(ds!=0 || n<1000) begin
`endif
for(l=0;l<4;l=l+1) for(m=0;m<2;m=m+1) begin
level=l; divide_mode=m; #10; checked=checked+1;
`ifdef GATE
if(out !== gate_out) $fatal(1,"GATE MISMATCH l=%d m=%d x=%h y=%h",l,m,x,y);
`else
$fwrite(fo,"%d %d %d %h %h %h\\n",ds,l,m,x,y,out);
`endif
end
`ifdef GATE
end
`endif
n=n+1;
end
end
`ifdef GATE
if(checked!={8*(1000+counts['1']+counts['2'])}) $fatal(1,"count");
`else
if(checked!={8*sum(counts.values())}) $fatal(1,"count");
$fclose(fo);
`endif
$display("RUNTIME PASS checked=%0d",checked); $finish;
end
endmodule
''')


if __name__ == '__main__':
    main()
