`timescale 1ns/1ps
module tb_audit;
reg [31:0] x,y;
wire [31:0] z[0:18];
integer fd,outfile,scan,dataset,count;
input_div_b3_bias1 dut0(x,y,z[0]);
input_div_b5_bias1 dut1(x,y,z[1]);
input_div_b7_bias1 dut2(x,y,z[2]);
input_mul_b3_bias1 dut3(x,y,z[3]);
input_mul_b5_bias1 dut4(x,y,z[4]);
input_mul_b7_bias1 dut5(x,y,z[5]);
input_mul_b9_bias1 dut6(x,y,z[6]);
oadm_fixed_l0_div_specialized dut7(x,y,z[7]);
oadm_fixed_l1_div_specialized dut8(x,y,z[8]);
oadm_fixed_l2_div_specialized dut9(x,y,z[9]);
oadm_fixed_l3_div_specialized dut10(x,y,z[10]);
oadm_fixed_l0_mul_root_opt dut11(x,y,z[11]);
oadm_fixed_l1_mul_root_opt dut12(x,y,z[12]);
oadm_fixed_l2_mul_root_opt dut13(x,y,z[13]);
oadm_fixed_l3_mul_root_opt dut14(x,y,z[14]);
pace_fp32_l1 dut15(x,y,z[15]);
pace_fp32_l3 dut16(x,y,z[16]);
audit_pace_l1_b5 dut17(x,y,z[17]);
audit_pace_l3_b6 dut18(x,y,z[18]);
`ifdef GATE
wire [31:0] gz17;
audit_pace_l1_b5_gate gd17(x,y,gz17);
wire [31:0] gz18;
audit_pace_l3_b6_gate gd18(x,y,gz18);
`endif
initial begin
    fd=$fopen("/homes/user/stud/fall25/pd2827/ee6321/research/experiments/input_trunc_bias/audit/inputs.txt","r");
    if(!fd) $fatal(1,"missing inputs");
`ifndef GATE
    outfile=$fopen("/homes/user/stud/fall25/pd2827/ee6321/research/experiments/input_trunc_bias/audit/rtl_outputs.txt","w");
`endif
    count=0;
    while(!$feof(fd)) begin
        scan=$fscanf(fd,"%d %h %h\n",dataset,x,y);
        if(scan!=3) $fatal(1,"bad input");
        #10;
`ifdef GATE
        if(z[17] !== gz17) $fatal(1,"PACE gate mismatch i=%0d",count);
if(z[18] !== gz18) $fatal(1,"PACE gate mismatch i=%0d",count);
        if(count==19999) begin
            $display("AUDIT_GATE PASS: 20000 vectors per PACE top");
            $finish;
        end
`else
        $fwrite(outfile,"%0d %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h\n",dataset, x, y, z[0], z[1], z[2], z[3], z[4], z[5], z[6], z[7], z[8], z[9], z[10], z[11], z[12], z[13], z[14], z[15], z[16], z[17], z[18]);
`endif
        count=count+1;
    end
    $display("AUDIT_RTL_DUMP PASS: %0d vectors",count);
    $finish;
end
endmodule
