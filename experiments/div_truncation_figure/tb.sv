`timescale 1ns/1ps
module tb;
reg [31:0] x,y;
wire [31:0] z[0:9];
integer fd,fo,count,scan,dataset;
input_div_b3_bias0 u0(x,y,z[0]);
input_div_b5_bias0 u1(x,y,z[1]);
input_div_b7_bias0 u2(x,y,z[2]);
input_div_b3_bias1 u3(x,y,z[3]);
input_div_b5_bias1 u4(x,y,z[4]);
input_div_b7_bias1 u5(x,y,z[5]);
oadm_fixed_l0_div_specialized u6(x,y,z[6]);
oadm_fixed_l1_div_specialized u7(x,y,z[7]);
oadm_fixed_l2_div_specialized u8(x,y,z[8]);
oadm_fixed_l3_div_specialized u9(x,y,z[9]);
`ifdef GATE
wire [31:0] gz0; input_div_b3_bias0_gate g0(x,y,gz0);
wire [31:0] gz1; input_div_b5_bias0_gate g1(x,y,gz1);
wire [31:0] gz2; input_div_b7_bias0_gate g2(x,y,gz2);
wire [31:0] gz3; input_div_b3_bias1_gate g3(x,y,gz3);
wire [31:0] gz4; input_div_b5_bias1_gate g4(x,y,gz4);
wire [31:0] gz5; input_div_b7_bias1_gate g5(x,y,gz5);
`endif
initial begin
fd=$fopen("/homes/user/stud/fall25/pd2827/ee6321/research/experiments/input_trunc_bias/audit/inputs.txt","r");
if(!fd) $fatal(1,"missing audit inputs");
`ifndef GATE
fo=$fopen("/homes/user/stud/fall25/pd2827/ee6321/research/experiments/div_truncation_figure/rtl_outputs.txt","w");
`endif
count=0;
while(!$feof(fd)) begin
scan=$fscanf(fd,"%d %h %h\n",dataset,x,y);
if(scan!=3) $fatal(1,"bad input");
#10;
`ifdef GATE
if(z[0] !== gz0) $fatal(1,"GATE_MISMATCH 0 at %0d",count);
if(z[1] !== gz1) $fatal(1,"GATE_MISMATCH 1 at %0d",count);
if(z[2] !== gz2) $fatal(1,"GATE_MISMATCH 2 at %0d",count);
if(z[3] !== gz3) $fatal(1,"GATE_MISMATCH 3 at %0d",count);
if(z[4] !== gz4) $fatal(1,"GATE_MISMATCH 4 at %0d",count);
if(z[5] !== gz5) $fatal(1,"GATE_MISMATCH 5 at %0d",count);
if(count==19999) begin
$display("FIGURE_GATE PASS: 20000 vectors per baseline"); $finish;
end
`else
if(dataset==0) $fwrite(fo,"%08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h\n",x,y,z[0],z[1],z[2],z[3],z[4],z[5],z[6],z[7],z[8],z[9]);
if(dataset!=0) begin
$display("FIGURE_RTL PASS: %0d uniform vectors",count); $finish;
end
`endif
count=count+1;
end
$fatal(1,"unexpected end of inputs");
end
endmodule
