module tb;
reg [31:0] x,y; wire [31:0] result;
reg [63:0] vectors[0:21042]; reg [31:0] expected[0:21042];
integer i,fd; abs_l1_exact dut(x,y,result);
initial begin
$readmemh("/homes/user/stud/fall25/pd2827/ee6321/research-absorbed-reciprocal/experiments/absorbed_reciprocal/gate_inputs.hex",vectors); $readmemh("/homes/user/stud/fall25/pd2827/ee6321/research-absorbed-reciprocal/experiments/absorbed_reciprocal/abs_l1_exact.gate.expected.hex",expected);
fd=$fopen("outputs.hex","w");
for(i=0;i<21043;i=i+1) begin
{x,y}=vectors[i]; #10;
if(result !== expected[i]) $fatal(1,"MISMATCH %0d %h %h",i,result,expected[i]);
$fdisplay(fd,"%08h",result);
end
$fclose(fd); $display("TUNING_CHECK PASS count=21043"); $finish;
end
endmodule
