module tb;
reg [31:0] x,y; reg divide_mode; wire [31:0] result;
reg [63:0] vectors[0:510253]; reg [31:0] expected[0:1020507];
integer i,mode,fd;
unified_div_drop_l1_separate dut(.x(x),.y(y),.divide_mode(divide_mode),.result(result));
wire [31:0] div_ref,mul_ref;
unified_div_drop_l1_div_reference dref(x,y,div_ref);
oadm_fixed_mul_root_opt #(.LEVEL(1),.RESIDUAL_DROP(16)) mref(x,y,mul_ref);
initial begin
$readmemh("/homes/user/stud/fall25/pd2827/ee6321/research-absorbed-reciprocal/experiments/absorbed_sharing/inputs.hex",vectors);
$readmemh("/homes/user/stud/fall25/pd2827/ee6321/research-absorbed-reciprocal/experiments/absorbed_unified_drop/div_drop_l1.rtl.expected.hex",expected);
fd=$fopen("outputs.hex","w");
for(i=0;i<510254;i=i+1) begin
{x,y}=vectors[i];
for(mode=0;mode<2;mode=mode+1) begin
divide_mode=mode; #10;
if(result !== expected[2*i+mode]) $fatal(1,"MODEL MISMATCH %0d mode=%0d got=%h expected=%h",i,mode,result,expected[2*i+mode]);
if(result !== (divide_mode ? div_ref : mul_ref)) $fatal(1,"RTL REFERENCE MISMATCH %0d mode=%0d",i,mode);
$fdisplay(fd,"%08h",result);
end
end
$fclose(fd); $display("TUNING_CHECK PASS count=1020508"); $finish;
end
endmodule
