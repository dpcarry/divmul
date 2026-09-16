module tb;
reg [31:0] x,y; reg divide_mode; wire [31:0] result;
reg [63:0] vectors[0:30834]; reg [31:0] expected[0:61669];
integer i,mode,fd;
unified_div_drop_l2_separate dut(.x(x),.y(y),.divide_mode(divide_mode),.result(result));

initial begin
$readmemh("/homes/user/stud/fall25/pd2827/ee6321/research-absorbed-reciprocal/experiments/absorbed_sharing/gate_inputs.hex",vectors);
$readmemh("/homes/user/stud/fall25/pd2827/ee6321/research-absorbed-reciprocal/experiments/absorbed_unified_drop/div_drop_l2.gate.expected.hex",expected);
fd=$fopen("outputs.hex","w");
for(i=0;i<30835;i=i+1) begin
{x,y}=vectors[i];
for(mode=0;mode<2;mode=mode+1) begin
divide_mode=mode; #10;
if(result !== expected[2*i+mode]) $fatal(1,"MODEL MISMATCH %0d mode=%0d got=%h expected=%h",i,mode,result,expected[2*i+mode]);

$fdisplay(fd,"%08h",result);
end
end
$fclose(fd); $display("TUNING_CHECK PASS count=61670"); $finish;
end
endmodule
