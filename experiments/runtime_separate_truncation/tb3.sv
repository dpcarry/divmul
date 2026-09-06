`timescale 1ns/1ps
module tb;
reg [31:0] x,y; reg divide_mode; reg [1:0] level;
wire [31:0] out;
runtime_both DUT(x,y,level,divide_mode,out);
`ifdef GATE
wire [31:0] gate_out;
runtime_both_gate G(x,y,level,divide_mode,gate_out);
`endif
integer fd,fo,status,ds,n=0,checked=0,l,m;
initial begin
fd=$fopen("/homes/user/stud/fall25/pd2827/ee6321/research/experiments/arithmetic_sharing/inputs.txt","r"); if(!fd) $fatal(1,"missing inputs");
`ifndef GATE
fo=$fopen("/homes/user/stud/fall25/pd2827/ee6321/research/experiments/runtime_separate_truncation/outputs3.txt","w");
`endif
while(!$feof(fd)) begin
status=$fscanf(fd,"%d %h %h\n",ds,x,y);
if(status==3) begin
`ifdef GATE
if(ds!=0 || n<1000) begin
`endif
for(l=0;l<4;l=l+1) for(m=0;m<2;m=m+1) begin
level=l; divide_mode=m; #10; checked=checked+1;
`ifdef GATE
if(out !== gate_out) $fatal(1,"GATE MISMATCH l=%d m=%d x=%h y=%h",l,m,x,y);
`else
$fwrite(fo,"%d %d %d %h %h %h\n",ds,l,m,x,y,out);
`endif
end
`ifdef GATE
end
`endif
n=n+1;
end
end
`ifdef GATE
if(checked!=42432) $fatal(1,"count");
`else
if(checked!=834432) $fatal(1,"count");
$fclose(fo);
`endif
$display("RUNTIME PASS checked=%0d",checked); $finish;
end
endmodule
