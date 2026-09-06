`timescale 1ns/1ps
module tb;
reg [31:0] x,y; reg divide_mode;
wire [31:0] b,c,d,m;
oadm_fixed_l3_divmul_unshared B(x,y,divide_mode,b);
oadm_fixed_l3_divmul_root_opt C(x,y,divide_mode,c);
oadm_fixed_l3_div_specialized D(x,y,d);
oadm_fixed_l3_mul_root_opt M(x,y,m);
`ifdef GATE
wire [31:0] bg,cg;
oadm_fixed_l3_divmul_unshared_gate BG(x,y,divide_mode,bg);
oadm_fixed_l3_divmul_root_opt_gate CG(x,y,divide_mode,cg);
`endif
integer fd,fo,status,ds,n=0,checked=0,mode;
initial begin
fd=$fopen("/homes/user/stud/fall25/pd2827/ee6321/research/experiments/arithmetic_sharing/inputs.txt","r");
if(!fd) $fatal(1,"input file missing");
`ifndef GATE
fo=$fopen("/homes/user/stud/fall25/pd2827/ee6321/research/experiments/arithmetic_sharing/outputs_l3.txt","w");
`endif
while(!$feof(fd)) begin
 status=$fscanf(fd,"%d %h %h\n",ds,x,y);
 if(status==3) begin
`ifdef GATE
 if(ds!=0 || n<1000) begin
`endif
 for(mode=0;mode<2;mode=mode+1) begin
 divide_mode=mode; #10; checked=checked+1;
 if(b !== c || b !== (divide_mode ? d : m))
   $fatal(1,"RTL MISMATCH L3 mode=%0d x=%h y=%h b=%h c=%h d=%h m=%h",mode,x,y,b,c,d,m);
`ifdef GATE
 if(b !== bg || c !== cg) $fatal(1,"GATE MISMATCH L3 mode=%0d x=%h y=%h",mode,x,y);
`else
 $fwrite(fo,"%d %d %h %h %h\n",ds,mode,x,y,b);
`endif
 end
`ifdef GATE
 end
`endif
 n=n+1;
 end
end
`ifdef GATE
if(checked!=10608) $fatal(1,"gate count");
`else
if(checked!=208608) $fatal(1,"RTL count");
$fclose(fo);
`endif
$fclose(fd);
$display("ARITHMETIC_SHARING PASS L3 checked=%0d",checked);
$finish;
end
endmodule
