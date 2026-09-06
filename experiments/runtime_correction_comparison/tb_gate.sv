`timescale 1ns/1ps
module tb;
reg [31:0] x,y; reg [1:0] level; reg divide_mode;
wire [31:0] d,c,t,dg,cg,tg;
oadm_runtime_opt D(x,y,level,divide_mode,d);
oadm_runtime_correction_common C(x,y,level,divide_mode,c);
oadm_runtime_correction_tapped T(x,y,level,divide_mode,t);
oadm_runtime_opt_gate DG(x,y,level,divide_mode,dg);
oadm_runtime_correction_common_gate CG(x,y,level,divide_mode,cg);
oadm_runtime_correction_tapped_gate TG(x,y,level,divide_mode,tg);
integer i,l,m,seed=32'h63212027,checked=0; reg [31:0] word;
initial begin
 for(i=0;i<256;i=i+1) begin
   word=$random(seed);x={word[31],8'd127,word[22:0]};
   word=$random(seed);y={word[31],8'd127,word[22:0]};
   for(l=0;l<4;l=l+1) for(m=0;m<2;m=m+1) begin
     level=l;divide_mode=m;#10;checked=checked+1;
     if(d!==dg||c!==cg||t!==tg||d!==c||d!==t)
       $fatal(1,"GATE MISMATCH i=%0d l=%0d m=%0d",i,l,m);
   end
 end
 $display("RUNTIME_CORRECTION_GATE PASS checked=%0d",checked);$finish;
end
endmodule
