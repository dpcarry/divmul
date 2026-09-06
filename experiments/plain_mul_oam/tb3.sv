module tb;
reg [31:0] x,y;
wire [31:0] plain,author,original;
wire [22:0] om; wire os; wire [7:0] oe;
plain_mul_l3 p(x,y,plain);
amlib_oam_l3_fp32_common a(x,y,author);
top original_top(.mantissa_x(x[22:0]),.mantissa_y(y[22:0]),.sign_x(x[31]),.sign_y(y[31]),
 .exp_x(x[30:23]),.exp_y(y[30:23]),.mantissa_out(om),.sign_out(os),.exp_out(oe));
assign original={os,oe,om};
`ifdef GATE
wire [31:0] pg,ag;
plain_mul_l3_gate gp(x,y,pg);
amlib_oam_l3_fp32_common_gate ga(x,y,ag);
`endif
integer fd,fo,status,ds,n=0;
initial begin
fd=$fopen("/homes/user/stud/fall25/pd2827/ee6321/research/experiments/plain_mul_oam/inputs.txt","r");
`ifndef GATE
fo=$fopen("/homes/user/stud/fall25/pd2827/ee6321/research/experiments/plain_mul_oam/outputs_l3.txt","w");
`endif
while(!$feof(fd)) begin
 status=$fscanf(fd,"%d %h %h\n",ds,x,y);
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
 $fwrite(fo,"%d %h %h %h %h\n",ds,x,y,plain,author);
`endif
 n=n+1;
 end
end
$display("PLAIN_OAM PASS L3 scanned=%0d",n);
$fclose(fd);
`ifndef GATE
$fclose(fo);
`endif
$finish;
end
endmodule
