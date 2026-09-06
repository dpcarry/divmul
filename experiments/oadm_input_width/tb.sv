`timescale 1ns/1ps
module tb;
reg [31:0] x,y;
wire [31:0] z[0:45];
integer fd,fo,scan,dataset,count;
input_l0_control_b23 d0(x,y,z[0]);
`ifdef GATE
wire [31:0] g0; input_l0_control_b23_gate gd0(x,y,g0);
`endif
input_l0_mask_b3 d1(x,y,z[1]);
`ifdef GATE
wire [31:0] g1; input_l0_mask_b3_gate gd1(x,y,g1);
`endif
input_l0_narrow_b3 d2(x,y,z[2]);
`ifdef GATE
wire [31:0] g2; input_l0_narrow_b3_gate gd2(x,y,g2);
`endif
input_l0_mask_b4 d3(x,y,z[3]);
`ifdef GATE
wire [31:0] g3; input_l0_mask_b4_gate gd3(x,y,g3);
`endif
input_l0_narrow_b4 d4(x,y,z[4]);
`ifdef GATE
wire [31:0] g4; input_l0_narrow_b4_gate gd4(x,y,g4);
`endif
input_l0_mask_b5 d5(x,y,z[5]);
`ifdef GATE
wire [31:0] g5; input_l0_mask_b5_gate gd5(x,y,g5);
`endif
input_l0_narrow_b5 d6(x,y,z[6]);
`ifdef GATE
wire [31:0] g6; input_l0_narrow_b5_gate gd6(x,y,g6);
`endif
input_l0_mask_b6 d7(x,y,z[7]);
`ifdef GATE
wire [31:0] g7; input_l0_mask_b6_gate gd7(x,y,g7);
`endif
input_l0_narrow_b6 d8(x,y,z[8]);
`ifdef GATE
wire [31:0] g8; input_l0_narrow_b6_gate gd8(x,y,g8);
`endif
input_l0_mask_b7 d9(x,y,z[9]);
`ifdef GATE
wire [31:0] g9; input_l0_mask_b7_gate gd9(x,y,g9);
`endif
input_l0_narrow_b7 d10(x,y,z[10]);
`ifdef GATE
wire [31:0] g10; input_l0_narrow_b7_gate gd10(x,y,g10);
`endif
input_l0_mask_b8 d11(x,y,z[11]);
`ifdef GATE
wire [31:0] g11; input_l0_mask_b8_gate gd11(x,y,g11);
`endif
input_l0_narrow_b8 d12(x,y,z[12]);
`ifdef GATE
wire [31:0] g12; input_l0_narrow_b8_gate gd12(x,y,g12);
`endif
input_l1_control_b23 d13(x,y,z[13]);
`ifdef GATE
wire [31:0] g13; input_l1_control_b23_gate gd13(x,y,g13);
`endif
input_l1_mask_b4 d14(x,y,z[14]);
`ifdef GATE
wire [31:0] g14; input_l1_mask_b4_gate gd14(x,y,g14);
`endif
input_l1_narrow_b4 d15(x,y,z[15]);
`ifdef GATE
wire [31:0] g15; input_l1_narrow_b4_gate gd15(x,y,g15);
`endif
input_l1_mask_b5 d16(x,y,z[16]);
`ifdef GATE
wire [31:0] g16; input_l1_mask_b5_gate gd16(x,y,g16);
`endif
input_l1_narrow_b5 d17(x,y,z[17]);
`ifdef GATE
wire [31:0] g17; input_l1_narrow_b5_gate gd17(x,y,g17);
`endif
input_l1_mask_b6 d18(x,y,z[18]);
`ifdef GATE
wire [31:0] g18; input_l1_mask_b6_gate gd18(x,y,g18);
`endif
input_l1_narrow_b6 d19(x,y,z[19]);
`ifdef GATE
wire [31:0] g19; input_l1_narrow_b6_gate gd19(x,y,g19);
`endif
input_l1_mask_b7 d20(x,y,z[20]);
`ifdef GATE
wire [31:0] g20; input_l1_mask_b7_gate gd20(x,y,g20);
`endif
input_l1_narrow_b7 d21(x,y,z[21]);
`ifdef GATE
wire [31:0] g21; input_l1_narrow_b7_gate gd21(x,y,g21);
`endif
input_l1_mask_b8 d22(x,y,z[22]);
`ifdef GATE
wire [31:0] g22; input_l1_mask_b8_gate gd22(x,y,g22);
`endif
input_l1_narrow_b8 d23(x,y,z[23]);
`ifdef GATE
wire [31:0] g23; input_l1_narrow_b8_gate gd23(x,y,g23);
`endif
input_l2_control_b23 d24(x,y,z[24]);
`ifdef GATE
wire [31:0] g24; input_l2_control_b23_gate gd24(x,y,g24);
`endif
input_l2_mask_b4 d25(x,y,z[25]);
`ifdef GATE
wire [31:0] g25; input_l2_mask_b4_gate gd25(x,y,g25);
`endif
input_l2_narrow_b4 d26(x,y,z[26]);
`ifdef GATE
wire [31:0] g26; input_l2_narrow_b4_gate gd26(x,y,g26);
`endif
input_l2_mask_b5 d27(x,y,z[27]);
`ifdef GATE
wire [31:0] g27; input_l2_mask_b5_gate gd27(x,y,g27);
`endif
input_l2_narrow_b5 d28(x,y,z[28]);
`ifdef GATE
wire [31:0] g28; input_l2_narrow_b5_gate gd28(x,y,g28);
`endif
input_l2_mask_b6 d29(x,y,z[29]);
`ifdef GATE
wire [31:0] g29; input_l2_mask_b6_gate gd29(x,y,g29);
`endif
input_l2_narrow_b6 d30(x,y,z[30]);
`ifdef GATE
wire [31:0] g30; input_l2_narrow_b6_gate gd30(x,y,g30);
`endif
input_l2_mask_b7 d31(x,y,z[31]);
`ifdef GATE
wire [31:0] g31; input_l2_mask_b7_gate gd31(x,y,g31);
`endif
input_l2_narrow_b7 d32(x,y,z[32]);
`ifdef GATE
wire [31:0] g32; input_l2_narrow_b7_gate gd32(x,y,g32);
`endif
input_l2_mask_b8 d33(x,y,z[33]);
`ifdef GATE
wire [31:0] g33; input_l2_mask_b8_gate gd33(x,y,g33);
`endif
input_l2_narrow_b8 d34(x,y,z[34]);
`ifdef GATE
wire [31:0] g34; input_l2_narrow_b8_gate gd34(x,y,g34);
`endif
input_l3_control_b23 d35(x,y,z[35]);
`ifdef GATE
wire [31:0] g35; input_l3_control_b23_gate gd35(x,y,g35);
`endif
input_l3_mask_b4 d36(x,y,z[36]);
`ifdef GATE
wire [31:0] g36; input_l3_mask_b4_gate gd36(x,y,g36);
`endif
input_l3_narrow_b4 d37(x,y,z[37]);
`ifdef GATE
wire [31:0] g37; input_l3_narrow_b4_gate gd37(x,y,g37);
`endif
input_l3_mask_b5 d38(x,y,z[38]);
`ifdef GATE
wire [31:0] g38; input_l3_mask_b5_gate gd38(x,y,g38);
`endif
input_l3_narrow_b5 d39(x,y,z[39]);
`ifdef GATE
wire [31:0] g39; input_l3_narrow_b5_gate gd39(x,y,g39);
`endif
input_l3_mask_b6 d40(x,y,z[40]);
`ifdef GATE
wire [31:0] g40; input_l3_mask_b6_gate gd40(x,y,g40);
`endif
input_l3_narrow_b6 d41(x,y,z[41]);
`ifdef GATE
wire [31:0] g41; input_l3_narrow_b6_gate gd41(x,y,g41);
`endif
input_l3_mask_b7 d42(x,y,z[42]);
`ifdef GATE
wire [31:0] g42; input_l3_mask_b7_gate gd42(x,y,g42);
`endif
input_l3_narrow_b7 d43(x,y,z[43]);
`ifdef GATE
wire [31:0] g43; input_l3_narrow_b7_gate gd43(x,y,g43);
`endif
input_l3_mask_b8 d44(x,y,z[44]);
`ifdef GATE
wire [31:0] g44; input_l3_mask_b8_gate gd44(x,y,g44);
`endif
input_l3_narrow_b8 d45(x,y,z[45]);
`ifdef GATE
wire [31:0] g45; input_l3_narrow_b8_gate gd45(x,y,g45);
`endif
initial begin
fd=$fopen("/homes/user/stud/fall25/pd2827/ee6321/research/experiments/oadm_input_width/inputs.txt","r");
if(!fd) $fatal(1,"missing inputs");
`ifndef GATE
fo=$fopen("/homes/user/stud/fall25/pd2827/ee6321/research/experiments/oadm_input_width/rtl_outputs.txt","w");
`endif
count=0;
while(!$feof(fd)) begin
scan=$fscanf(fd,"%d %h %h\n",dataset,x,y);
if(scan!=3) $fatal(1,"bad input");
#10;
if(z[2] !== z[1]) $fatal(1,"WIDTH_MISMATCH 2 count=%0d",count);
if(z[4] !== z[3]) $fatal(1,"WIDTH_MISMATCH 4 count=%0d",count);
if(z[5] !== z[0]) $fatal(1,"CONTROL_MISMATCH 5 count=%0d",count);
if(z[6] !== z[5]) $fatal(1,"WIDTH_MISMATCH 6 count=%0d",count);
if(z[6] !== z[0]) $fatal(1,"CONTROL_MISMATCH 6 count=%0d",count);
if(z[7] !== z[0]) $fatal(1,"CONTROL_MISMATCH 7 count=%0d",count);
if(z[8] !== z[7]) $fatal(1,"WIDTH_MISMATCH 8 count=%0d",count);
if(z[8] !== z[0]) $fatal(1,"CONTROL_MISMATCH 8 count=%0d",count);
if(z[9] !== z[0]) $fatal(1,"CONTROL_MISMATCH 9 count=%0d",count);
if(z[10] !== z[9]) $fatal(1,"WIDTH_MISMATCH 10 count=%0d",count);
if(z[10] !== z[0]) $fatal(1,"CONTROL_MISMATCH 10 count=%0d",count);
if(z[11] !== z[0]) $fatal(1,"CONTROL_MISMATCH 11 count=%0d",count);
if(z[12] !== z[11]) $fatal(1,"WIDTH_MISMATCH 12 count=%0d",count);
if(z[12] !== z[0]) $fatal(1,"CONTROL_MISMATCH 12 count=%0d",count);
if(z[15] !== z[14]) $fatal(1,"WIDTH_MISMATCH 15 count=%0d",count);
if(z[17] !== z[16]) $fatal(1,"WIDTH_MISMATCH 17 count=%0d",count);
if(z[19] !== z[18]) $fatal(1,"WIDTH_MISMATCH 19 count=%0d",count);
if(z[20] !== z[13]) $fatal(1,"CONTROL_MISMATCH 20 count=%0d",count);
if(z[21] !== z[20]) $fatal(1,"WIDTH_MISMATCH 21 count=%0d",count);
if(z[21] !== z[13]) $fatal(1,"CONTROL_MISMATCH 21 count=%0d",count);
if(z[22] !== z[13]) $fatal(1,"CONTROL_MISMATCH 22 count=%0d",count);
if(z[23] !== z[22]) $fatal(1,"WIDTH_MISMATCH 23 count=%0d",count);
if(z[23] !== z[13]) $fatal(1,"CONTROL_MISMATCH 23 count=%0d",count);
if(z[26] !== z[25]) $fatal(1,"WIDTH_MISMATCH 26 count=%0d",count);
if(z[28] !== z[27]) $fatal(1,"WIDTH_MISMATCH 28 count=%0d",count);
if(z[30] !== z[29]) $fatal(1,"WIDTH_MISMATCH 30 count=%0d",count);
if(z[31] !== z[24]) $fatal(1,"CONTROL_MISMATCH 31 count=%0d",count);
if(z[32] !== z[31]) $fatal(1,"WIDTH_MISMATCH 32 count=%0d",count);
if(z[32] !== z[24]) $fatal(1,"CONTROL_MISMATCH 32 count=%0d",count);
if(z[33] !== z[24]) $fatal(1,"CONTROL_MISMATCH 33 count=%0d",count);
if(z[34] !== z[33]) $fatal(1,"WIDTH_MISMATCH 34 count=%0d",count);
if(z[34] !== z[24]) $fatal(1,"CONTROL_MISMATCH 34 count=%0d",count);
if(z[37] !== z[36]) $fatal(1,"WIDTH_MISMATCH 37 count=%0d",count);
if(z[39] !== z[38]) $fatal(1,"WIDTH_MISMATCH 39 count=%0d",count);
if(z[41] !== z[40]) $fatal(1,"WIDTH_MISMATCH 41 count=%0d",count);
if(z[42] !== z[35]) $fatal(1,"CONTROL_MISMATCH 42 count=%0d",count);
if(z[43] !== z[42]) $fatal(1,"WIDTH_MISMATCH 43 count=%0d",count);
if(z[43] !== z[35]) $fatal(1,"CONTROL_MISMATCH 43 count=%0d",count);
if(z[44] !== z[35]) $fatal(1,"CONTROL_MISMATCH 44 count=%0d",count);
if(z[45] !== z[44]) $fatal(1,"WIDTH_MISMATCH 45 count=%0d",count);
if(z[45] !== z[35]) $fatal(1,"CONTROL_MISMATCH 45 count=%0d",count);
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
if(z[36] !== g36) $fatal(1,"GATE_MISMATCH 36 count=%0d",count);
if(z[37] !== g37) $fatal(1,"GATE_MISMATCH 37 count=%0d",count);
if(z[38] !== g38) $fatal(1,"GATE_MISMATCH 38 count=%0d",count);
if(z[39] !== g39) $fatal(1,"GATE_MISMATCH 39 count=%0d",count);
if(z[40] !== g40) $fatal(1,"GATE_MISMATCH 40 count=%0d",count);
if(z[41] !== g41) $fatal(1,"GATE_MISMATCH 41 count=%0d",count);
if(z[42] !== g42) $fatal(1,"GATE_MISMATCH 42 count=%0d",count);
if(z[43] !== g43) $fatal(1,"GATE_MISMATCH 43 count=%0d",count);
if(z[44] !== g44) $fatal(1,"GATE_MISMATCH 44 count=%0d",count);
if(z[45] !== g45) $fatal(1,"GATE_MISMATCH 45 count=%0d",count);
if(count==11832) begin $display("INPUT_WIDTH_GATE PASS: 11833"); $finish; end
`else
$fwrite(fo,"%d %08h %08h",dataset,x,y);
$fwrite(fo," %08h",z[0]);
$fwrite(fo," %08h",z[1]);
$fwrite(fo," %08h",z[2]);
$fwrite(fo," %08h",z[3]);
$fwrite(fo," %08h",z[4]);
$fwrite(fo," %08h",z[5]);
$fwrite(fo," %08h",z[6]);
$fwrite(fo," %08h",z[7]);
$fwrite(fo," %08h",z[8]);
$fwrite(fo," %08h",z[9]);
$fwrite(fo," %08h",z[10]);
$fwrite(fo," %08h",z[11]);
$fwrite(fo," %08h",z[12]);
$fwrite(fo," %08h",z[13]);
$fwrite(fo," %08h",z[14]);
$fwrite(fo," %08h",z[15]);
$fwrite(fo," %08h",z[16]);
$fwrite(fo," %08h",z[17]);
$fwrite(fo," %08h",z[18]);
$fwrite(fo," %08h",z[19]);
$fwrite(fo," %08h",z[20]);
$fwrite(fo," %08h",z[21]);
$fwrite(fo," %08h",z[22]);
$fwrite(fo," %08h",z[23]);
$fwrite(fo," %08h",z[24]);
$fwrite(fo," %08h",z[25]);
$fwrite(fo," %08h",z[26]);
$fwrite(fo," %08h",z[27]);
$fwrite(fo," %08h",z[28]);
$fwrite(fo," %08h",z[29]);
$fwrite(fo," %08h",z[30]);
$fwrite(fo," %08h",z[31]);
$fwrite(fo," %08h",z[32]);
$fwrite(fo," %08h",z[33]);
$fwrite(fo," %08h",z[34]);
$fwrite(fo," %08h",z[35]);
$fwrite(fo," %08h",z[36]);
$fwrite(fo," %08h",z[37]);
$fwrite(fo," %08h",z[38]);
$fwrite(fo," %08h",z[39]);
$fwrite(fo," %08h",z[40]);
$fwrite(fo," %08h",z[41]);
$fwrite(fo," %08h",z[42]);
$fwrite(fo," %08h",z[43]);
$fwrite(fo," %08h",z[44]);
$fwrite(fo," %08h",z[45]);
$fwrite(fo,"\n");
`endif
count=count+1;
if(count%10000==0) $display("PROGRESS %0d",count);
end
$display("INPUT_WIDTH_RTL PASS: %0d",count); $finish;
end
endmodule
