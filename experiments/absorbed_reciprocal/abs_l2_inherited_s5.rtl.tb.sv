module tb;
reg [31:0] x,y; wire [31:0] result;
reg [63:0] vectors[0:343789]; reg [31:0] expected[0:343789];
integer i,fd; abs_l2_inherited_s5 dut(x,y,result);
initial begin
$readmemh("/homes/user/stud/fall25/pd2827/ee6321/research-absorbed-reciprocal/experiments/absorbed_reciprocal/inputs.hex",vectors); $readmemh("/homes/user/stud/fall25/pd2827/ee6321/research-absorbed-reciprocal/experiments/absorbed_reciprocal/abs_l2_inherited_s5.rtl.expected.hex",expected);
fd=$fopen("outputs.hex","w");
for(i=0;i<343790;i=i+1) begin
{x,y}=vectors[i]; #10;
if(result !== expected[i]) $fatal(1,"MISMATCH %0d %h %h",i,result,expected[i]);
$fdisplay(fd,"%08h",result);
end
$fclose(fd); $display("TUNING_CHECK PASS count=343790"); $finish;
end
endmodule
