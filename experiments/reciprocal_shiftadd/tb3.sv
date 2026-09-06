`timescale 1ns/1ps
module tb;
reg [31:0] x,y; reg divide_mode;
integer fd,s,ds,n=0,checked=0,mode,k,j,scale_checks=0;
reg [28:0] test_plane; reg [31:0] expected; integer coeff;
wire [31:0] control;
oadm_fixed_l3_divmul_root_opt dut_control(x,y,divide_mode,control);
`ifdef GATE
wire [31:0] gate_control;
oadm_fixed_l3_divmul_root_opt_gate g_control(x,y,divide_mode,gate_control);
`endif
wire [31:0] binary;
oadm_fixed_l3_divmul_root_opt_binary dut_binary(x,y,divide_mode,binary);
`ifdef GATE
wire [31:0] gate_binary;
oadm_fixed_l3_divmul_root_opt_binary_gate g_binary(x,y,divide_mode,gate_binary);
`endif
wire [31:0] csd;
oadm_fixed_l3_divmul_root_opt_csd dut_csd(x,y,divide_mode,csd);
`ifdef GATE
wire [31:0] gate_csd;
oadm_fixed_l3_divmul_root_opt_csd_gate g_csd(x,y,divide_mode,gate_csd);
`endif
initial begin
x=32'h3f800000; y=32'h3f800000; divide_mode=1;
`ifndef GATE
force dut_control.implementation.plane_value = test_plane;
force dut_binary.implementation.plane_value = test_plane;
force dut_csd.implementation.plane_value = test_plane;
for(j=0;j<8;j=j+1) begin
y=32'h3f800000 | (j << 20);
case(j)
0: coeff=227;
1: coeff=182;
2: coeff=149;
3: coeff=124;
4: coeff=105;
5: coeff=90;
6: coeff=78;
7: coeff=68;
endcase
for(k=0;k<512;k=k+1) begin
test_plane=k<<16; expected=k*coeff; #10;
if(dut_control.implementation.reduced_scale_product !== expected[16:0]) $fatal(1,"SCALE MISMATCH control");
if(dut_binary.implementation.reduced_scale_product !== expected[16:0]) $fatal(1,"SCALE MISMATCH binary");
if(dut_csd.implementation.reduced_scale_product !== expected[16:0]) $fatal(1,"SCALE MISMATCH csd");
scale_checks=scale_checks+1;
end
end
release dut_control.implementation.plane_value;
release dut_binary.implementation.plane_value;
release dut_csd.implementation.plane_value;
`endif
fd=$fopen("/homes/user/stud/fall25/pd2827/ee6321/research/experiments/arithmetic_sharing/inputs.txt","r");
if(!fd) $fatal(1,"inputs missing");
while(!$feof(fd)) begin
s=$fscanf(fd,"%d %h %h\n",ds,x,y);
if(s==3) begin
`ifdef GATE
if(ds!=0 || n<1000) begin
`endif
for(mode=0;mode<2;mode=mode+1) begin
divide_mode=mode; #10; checked=checked+1;
if(binary !== control || csd !== control) $fatal(1,"RTL MISMATCH x=%h y=%h mode=%d",x,y,mode);
`ifdef GATE
if(gate_control !== control) $fatal(1,"GATE MISMATCH control x=%h y=%h mode=%d",x,y,mode);
if(gate_binary !== control) $fatal(1,"GATE MISMATCH binary x=%h y=%h mode=%d",x,y,mode);
if(gate_csd !== control) $fatal(1,"GATE MISMATCH csd x=%h y=%h mode=%d",x,y,mode);
`endif
end
`ifdef GATE
end
`endif
n=n+1;
end
end
$fclose(fd);
`ifdef GATE
if(checked!=10608) $fatal(1,"gate count");
`else
if(checked!=208608 || scale_checks!=4096) $fatal(1,"RTL count");
`endif
$display("RECIP_SHIFTADD PASS L3 checked=%0d scale=%0d",checked,scale_checks);
$finish;
end
endmodule
