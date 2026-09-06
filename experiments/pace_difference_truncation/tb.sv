`timescale 1ns/1ps
module tb;
reg [31:0] x,y;
wire [31:0] z[0:35];
integer fd,fo,scan,count,dataset;
pace_z_l1_d0 d0(x,y,z[0]);
pace_z_l1_d4 d1(x,y,z[1]);
pace_z_l1_d8 d2(x,y,z[2]);
pace_z_l1_d12 d3(x,y,z[3]);
pace_z_l1_d14 d4(x,y,z[4]);
pace_z_l1_d15 d5(x,y,z[5]);
pace_z_l1_d16 d6(x,y,z[6]);
pace_z_l1_d17 d7(x,y,z[7]);
pace_z_l1_d18 d8(x,y,z[8]);
pace_z_l2_d0 d9(x,y,z[9]);
pace_z_l2_d4 d10(x,y,z[10]);
pace_z_l2_d8 d11(x,y,z[11]);
pace_z_l2_d12 d12(x,y,z[12]);
pace_z_l2_d14 d13(x,y,z[13]);
pace_z_l2_d15 d14(x,y,z[14]);
pace_z_l2_d16 d15(x,y,z[15]);
pace_z_l2_d17 d16(x,y,z[16]);
pace_z_l2_d18 d17(x,y,z[17]);
pace_z_l3_d0 d18(x,y,z[18]);
pace_z_l3_d4 d19(x,y,z[19]);
pace_z_l3_d8 d20(x,y,z[20]);
pace_z_l3_d12 d21(x,y,z[21]);
pace_z_l3_d14 d22(x,y,z[22]);
pace_z_l3_d15 d23(x,y,z[23]);
pace_z_l3_d16 d24(x,y,z[24]);
pace_z_l3_d17 d25(x,y,z[25]);
pace_z_l3_d18 d26(x,y,z[26]);
pace_z_l4_d0 d27(x,y,z[27]);
pace_z_l4_d4 d28(x,y,z[28]);
pace_z_l4_d8 d29(x,y,z[29]);
pace_z_l4_d12 d30(x,y,z[30]);
pace_z_l4_d14 d31(x,y,z[31]);
pace_z_l4_d15 d32(x,y,z[32]);
pace_z_l4_d16 d33(x,y,z[33]);
pace_z_l4_d17 d34(x,y,z[34]);
pace_z_l4_d18 d35(x,y,z[35]);
wire [31:0] ref1; pace_fp32_l1 r1(x,y,ref1);
wire [31:0] ref2; pace_fp32_l2 r2(x,y,ref2);
wire [31:0] ref3; pace_fp32_l3 r3(x,y,ref3);
wire [31:0] ref4; pace_fp32_l4 r4(x,y,ref4);
`ifdef GATE
wire [31:0] g0; pace_z_l1_d0_gate gd0(x,y,g0);
wire [31:0] g1; pace_z_l1_d4_gate gd1(x,y,g1);
wire [31:0] g2; pace_z_l1_d8_gate gd2(x,y,g2);
wire [31:0] g3; pace_z_l1_d12_gate gd3(x,y,g3);
wire [31:0] g4; pace_z_l1_d14_gate gd4(x,y,g4);
wire [31:0] g5; pace_z_l1_d15_gate gd5(x,y,g5);
wire [31:0] g6; pace_z_l1_d16_gate gd6(x,y,g6);
wire [31:0] g7; pace_z_l1_d17_gate gd7(x,y,g7);
wire [31:0] g8; pace_z_l1_d18_gate gd8(x,y,g8);
wire [31:0] g9; pace_z_l2_d0_gate gd9(x,y,g9);
wire [31:0] g10; pace_z_l2_d4_gate gd10(x,y,g10);
wire [31:0] g11; pace_z_l2_d8_gate gd11(x,y,g11);
wire [31:0] g12; pace_z_l2_d12_gate gd12(x,y,g12);
wire [31:0] g13; pace_z_l2_d14_gate gd13(x,y,g13);
wire [31:0] g14; pace_z_l2_d15_gate gd14(x,y,g14);
wire [31:0] g15; pace_z_l2_d16_gate gd15(x,y,g15);
wire [31:0] g16; pace_z_l2_d17_gate gd16(x,y,g16);
wire [31:0] g17; pace_z_l2_d18_gate gd17(x,y,g17);
wire [31:0] g18; pace_z_l3_d0_gate gd18(x,y,g18);
wire [31:0] g19; pace_z_l3_d4_gate gd19(x,y,g19);
wire [31:0] g20; pace_z_l3_d8_gate gd20(x,y,g20);
wire [31:0] g21; pace_z_l3_d12_gate gd21(x,y,g21);
wire [31:0] g22; pace_z_l3_d14_gate gd22(x,y,g22);
wire [31:0] g23; pace_z_l3_d15_gate gd23(x,y,g23);
wire [31:0] g24; pace_z_l3_d16_gate gd24(x,y,g24);
wire [31:0] g25; pace_z_l3_d17_gate gd25(x,y,g25);
wire [31:0] g26; pace_z_l3_d18_gate gd26(x,y,g26);
wire [31:0] g27; pace_z_l4_d0_gate gd27(x,y,g27);
wire [31:0] g28; pace_z_l4_d4_gate gd28(x,y,g28);
wire [31:0] g29; pace_z_l4_d8_gate gd29(x,y,g29);
wire [31:0] g30; pace_z_l4_d12_gate gd30(x,y,g30);
wire [31:0] g31; pace_z_l4_d14_gate gd31(x,y,g31);
wire [31:0] g32; pace_z_l4_d15_gate gd32(x,y,g32);
wire [31:0] g33; pace_z_l4_d16_gate gd33(x,y,g33);
wire [31:0] g34; pace_z_l4_d17_gate gd34(x,y,g34);
wire [31:0] g35; pace_z_l4_d18_gate gd35(x,y,g35);
`endif
initial begin
fd=$fopen("/homes/user/stud/fall25/pd2827/ee6321/research/experiments/pace_difference_truncation/inputs.txt","r");
if(!fd) $fatal(1,"missing inputs");
`ifndef GATE
fo=$fopen("/homes/user/stud/fall25/pd2827/ee6321/research/experiments/pace_difference_truncation/rtl_outputs.txt","w");
`endif
count=0;
while(!$feof(fd)) begin
scan=$fscanf(fd,"%d %h %h\n",dataset,x,y);
if(scan!=3) $fatal(1,"bad input");
#10;
if(z[0] !== ref1) $fatal(1,"CONTROL_MISMATCH L1");
if(z[9] !== ref2) $fatal(1,"CONTROL_MISMATCH L2");
if(z[18] !== ref3) $fatal(1,"CONTROL_MISMATCH L3");
if(z[27] !== ref4) $fatal(1,"CONTROL_MISMATCH L4");
`ifdef GATE
if(z[0] !== g0) $fatal(1,"GATE_MISMATCH 0 count=%0d",count);
if(z[1] !== g1) $fatal(1,"GATE_MISMATCH 1 count=%0d",count);
if(z[2] !== g2) $fatal(1,"GATE_MISMATCH 2 count=%0d",count);
if(z[3] !== g3) $fatal(1,"GATE_MISMATCH 3 count=%0d",count);
if(z[4] !== g4) $fatal(1,"GATE_MISMATCH 4 count=%0d",count);
if(z[5] !== g5) $fatal(1,"GATE_MISMATCH 5 count=%0d",count);
if(z[6] !== g6) $fatal(1,"GATE_MISMATCH 6 count=%0d",count);
if(z[7] !== g7) $fatal(1,"GATE_MISMATCH 7 count=%0d",count);
if(z[8] !== g8) $fatal(1,"GATE_MISMATCH 8 count=%0d",count);
if(z[9] !== g9) $fatal(1,"GATE_MISMATCH 9 count=%0d",count);
if(z[10] !== g10) $fatal(1,"GATE_MISMATCH 10 count=%0d",count);
if(z[11] !== g11) $fatal(1,"GATE_MISMATCH 11 count=%0d",count);
if(z[12] !== g12) $fatal(1,"GATE_MISMATCH 12 count=%0d",count);
if(z[13] !== g13) $fatal(1,"GATE_MISMATCH 13 count=%0d",count);
if(z[14] !== g14) $fatal(1,"GATE_MISMATCH 14 count=%0d",count);
if(z[15] !== g15) $fatal(1,"GATE_MISMATCH 15 count=%0d",count);
if(z[16] !== g16) $fatal(1,"GATE_MISMATCH 16 count=%0d",count);
if(z[17] !== g17) $fatal(1,"GATE_MISMATCH 17 count=%0d",count);
if(z[18] !== g18) $fatal(1,"GATE_MISMATCH 18 count=%0d",count);
if(z[19] !== g19) $fatal(1,"GATE_MISMATCH 19 count=%0d",count);
if(z[20] !== g20) $fatal(1,"GATE_MISMATCH 20 count=%0d",count);
if(z[21] !== g21) $fatal(1,"GATE_MISMATCH 21 count=%0d",count);
if(z[22] !== g22) $fatal(1,"GATE_MISMATCH 22 count=%0d",count);
if(z[23] !== g23) $fatal(1,"GATE_MISMATCH 23 count=%0d",count);
if(z[24] !== g24) $fatal(1,"GATE_MISMATCH 24 count=%0d",count);
if(z[25] !== g25) $fatal(1,"GATE_MISMATCH 25 count=%0d",count);
if(z[26] !== g26) $fatal(1,"GATE_MISMATCH 26 count=%0d",count);
if(z[27] !== g27) $fatal(1,"GATE_MISMATCH 27 count=%0d",count);
if(z[28] !== g28) $fatal(1,"GATE_MISMATCH 28 count=%0d",count);
if(z[29] !== g29) $fatal(1,"GATE_MISMATCH 29 count=%0d",count);
if(z[30] !== g30) $fatal(1,"GATE_MISMATCH 30 count=%0d",count);
if(z[31] !== g31) $fatal(1,"GATE_MISMATCH 31 count=%0d",count);
if(z[32] !== g32) $fatal(1,"GATE_MISMATCH 32 count=%0d",count);
if(z[33] !== g33) $fatal(1,"GATE_MISMATCH 33 count=%0d",count);
if(z[34] !== g34) $fatal(1,"GATE_MISMATCH 34 count=%0d",count);
if(z[35] !== g35) $fatal(1,"GATE_MISMATCH 35 count=%0d",count);
if(count==4868) begin
$display("ZTRUNC_GATE PASS: 4869 vectors per DUT"); $finish;
end
`else
$fwrite(fo,"%d %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h %08h\n",dataset,x,y,z[0],z[1],z[2],z[3],z[4],z[5],z[6],z[7],z[8],z[9],z[10],z[11],z[12],z[13],z[14],z[15],z[16],z[17],z[18],z[19],z[20],z[21],z[22],z[23],z[24],z[25],z[26],z[27],z[28],z[29],z[30],z[31],z[32],z[33],z[34],z[35]);
`endif
count=count+1;
end
$display("ZTRUNC_RTL PASS: %0d vectors; four drop0 controls match author RTL",count);
$finish;
end
endmodule
