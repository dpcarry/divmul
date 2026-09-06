`timescale 1ns/1ps
module tb;
reg [31:0] x,y; reg [1:0] level; reg divide_mode;
wire [31:0] direct, common, tapped;
oadm_runtime_opt D(x,y,level,divide_mode,direct);
oadm_runtime_correction_common C(x,y,level,divide_mode,common);
oadm_runtime_correction_tapped T(x,y,level,divide_mode,tapped);
integer i,l,m,seed=32'h63212026,checked=0;
reg [31:0] word;
task check;
begin #1; checked=checked+1;
 if(direct!==common || direct!==tapped)
   $fatal(1,"MISMATCH i=%0d l=%0d m=%0d x=%h y=%h d=%h c=%h t=%h",i,level,divide_mode,x,y,direct,common,tapped);
end endtask
initial begin
 for(i=0;i<100000;i=i+1) begin
   word=$random(seed); x={word[31],8'd127,word[22:0]};
   word=$random(seed); y={word[31],8'd127,word[22:0]};
   for(l=0;l<4;l=l+1) for(m=0;m<2;m=m+1) begin level=l;divide_mode=m;check;end
 end
 // Exercise every partition boundary and the adjacent FP32 values.
 for(i=0;i<=16;i=i+1) begin
   x={1'b0,8'd127,(i*(1<<19))&23'h7fffff};
   y={1'b0,8'd127,((16-i)*(1<<19))&23'h7fffff};
   for(l=0;l<4;l=l+1) for(m=0;m<2;m=m+1) begin level=l;divide_mode=m;check;end
 end
 $display("RUNTIME_CORRECTION_EQUIV PASS checked=%0d",checked); $finish;
end
endmodule
