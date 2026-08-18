/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sun Aug  9 13:27:34 2026
/////////////////////////////////////////////////////////////


module recip_lut_fixed_APPROX_LEVEL1 ( y_fraction_msb, reciprocal_square );
  input [3:0] y_fraction_msb;
  output [7:0] reciprocal_square;


  INVD0 U3 ( .I(y_fraction_msb[3]), .ZN(reciprocal_square[5]) );
  BUFFD0 U4 ( .I(y_fraction_msb[3]), .Z(reciprocal_square[4]) );
endmodule


module csa3_WIDTH29_2 ( input_a, input_b, input_c, sum, carry );
  input [28:0] input_a;
  input [28:0] input_b;
  input [28:0] input_c;
  output [28:0] sum;
  output [28:0] carry;


  IAO21D0 U2 ( .A1(input_b[20]), .A2(input_a[20]), .B(carry[21]), .ZN(sum[20])
         );
  CKAN2D1 U3 ( .A1(input_b[17]), .A2(input_a[17]), .Z(carry[18]) );
  CKAN2D1 U4 ( .A1(input_b[16]), .A2(input_a[16]), .Z(carry[17]) );
  CKAN2D1 U5 ( .A1(input_b[15]), .A2(input_a[15]), .Z(carry[16]) );
  CKAN2D1 U6 ( .A1(input_b[18]), .A2(input_a[18]), .Z(carry[19]) );
  AN2D1 U7 ( .A1(input_b[19]), .A2(input_a[19]), .Z(carry[20]) );
  BUFFD0 U8 ( .I(input_b[27]), .Z(sum[27]) );
  CKAN2D1 U9 ( .A1(input_b[14]), .A2(input_a[14]), .Z(carry[15]) );
  AN2D1 U10 ( .A1(input_b[4]), .A2(input_a[4]), .Z(carry[5]) );
  BUFFD0 U11 ( .I(input_b[28]), .Z(sum[28]) );
  CKAN2D1 U12 ( .A1(input_b[5]), .A2(input_a[5]), .Z(carry[6]) );
  XOR2D0 U13 ( .A1(input_b[6]), .A2(input_a[6]), .Z(sum[6]) );
  CKAN2D1 U14 ( .A1(input_b[6]), .A2(input_a[6]), .Z(carry[7]) );
  CKAN2D1 U15 ( .A1(input_b[7]), .A2(input_a[7]), .Z(carry[8]) );
  AN2D0 U16 ( .A1(input_a[8]), .A2(input_b[8]), .Z(carry[9]) );
  CKAN2D1 U17 ( .A1(input_b[10]), .A2(input_a[10]), .Z(carry[11]) );
  CKAN2D1 U18 ( .A1(input_b[11]), .A2(input_a[11]), .Z(carry[12]) );
  CKAN2D1 U19 ( .A1(input_b[12]), .A2(input_a[12]), .Z(carry[13]) );
  CKAN2D1 U20 ( .A1(input_b[13]), .A2(input_a[13]), .Z(carry[14]) );
  CKAN2D1 U21 ( .A1(input_b[9]), .A2(input_a[9]), .Z(carry[10]) );
  CKAN2D1 U22 ( .A1(input_b[22]), .A2(input_a[22]), .Z(carry[23]) );
  CKAN2D1 U23 ( .A1(input_b[21]), .A2(input_a[21]), .Z(carry[22]) );
  BUFFD0 U24 ( .I(input_b[25]), .Z(sum[25]) );
  AN2D0 U25 ( .A1(input_b[24]), .A2(input_a[24]), .Z(carry[25]) );
  AN2D0 U26 ( .A1(input_b[23]), .A2(input_a[23]), .Z(carry[24]) );
  BUFFD0 U27 ( .I(input_b[26]), .Z(sum[26]) );
  AN2D1 U28 ( .A1(input_b[20]), .A2(input_a[20]), .Z(carry[21]) );
  IAO21D0 U29 ( .A1(input_b[14]), .A2(input_a[14]), .B(carry[15]), .ZN(sum[14]) );
  IAO21D0 U30 ( .A1(input_b[21]), .A2(input_a[21]), .B(carry[22]), .ZN(sum[21]) );
  IAO21D0 U31 ( .A1(input_b[22]), .A2(input_a[22]), .B(carry[23]), .ZN(sum[22]) );
  IAO21D0 U32 ( .A1(input_b[13]), .A2(input_a[13]), .B(carry[14]), .ZN(sum[13]) );
  IAO21D0 U33 ( .A1(input_b[18]), .A2(input_a[18]), .B(carry[19]), .ZN(sum[18]) );
  IAO21D0 U34 ( .A1(input_b[16]), .A2(input_a[16]), .B(carry[17]), .ZN(sum[16]) );
  IAO21D0 U35 ( .A1(input_b[19]), .A2(input_a[19]), .B(carry[20]), .ZN(sum[19]) );
  IAO21D0 U36 ( .A1(input_b[15]), .A2(input_a[15]), .B(carry[16]), .ZN(sum[15]) );
  IAO21D0 U37 ( .A1(input_b[17]), .A2(input_a[17]), .B(carry[18]), .ZN(sum[17]) );
  IAO21D0 U38 ( .A1(input_b[9]), .A2(input_a[9]), .B(carry[10]), .ZN(sum[9])
         );
  IAO21D0 U39 ( .A1(input_b[12]), .A2(input_a[12]), .B(carry[13]), .ZN(sum[12]) );
  IAO21D0 U40 ( .A1(input_b[23]), .A2(input_a[23]), .B(carry[24]), .ZN(sum[23]) );
  IAO21D0 U41 ( .A1(input_b[11]), .A2(input_a[11]), .B(carry[12]), .ZN(sum[11]) );
  IAO21D0 U42 ( .A1(input_b[24]), .A2(input_a[24]), .B(carry[25]), .ZN(sum[24]) );
  IAO21D0 U43 ( .A1(input_b[10]), .A2(input_a[10]), .B(carry[11]), .ZN(sum[10]) );
  XOR2D0 U44 ( .A1(input_b[7]), .A2(input_a[7]), .Z(sum[7]) );
  XOR2D0 U45 ( .A1(input_a[8]), .A2(input_b[8]), .Z(sum[8]) );
  CKAN2D0 U46 ( .A1(input_a[0]), .A2(input_b[0]), .Z(carry[1]) );
  CKAN2D0 U47 ( .A1(input_a[1]), .A2(input_b[1]), .Z(carry[2]) );
  AN2D1 U48 ( .A1(input_a[2]), .A2(input_b[2]), .Z(carry[3]) );
  AN2D1 U49 ( .A1(input_a[3]), .A2(input_b[3]), .Z(carry[4]) );
  XOR2D0 U50 ( .A1(input_a[0]), .A2(input_b[0]), .Z(sum[0]) );
  XOR2D0 U51 ( .A1(input_a[1]), .A2(input_b[1]), .Z(sum[1]) );
  XOR2D0 U52 ( .A1(input_a[2]), .A2(input_b[2]), .Z(sum[2]) );
  CKXOR2D1 U53 ( .A1(input_a[3]), .A2(input_b[3]), .Z(sum[3]) );
  CKXOR2D1 U54 ( .A1(input_b[4]), .A2(input_a[4]), .Z(sum[4]) );
  CKXOR2D1 U55 ( .A1(input_b[5]), .A2(input_a[5]), .Z(sum[5]) );
endmodule


module csa3_WIDTH29_1 ( input_a, input_b, input_c, sum, carry );
  input [28:0] input_a;
  input [28:0] input_b;
  input [28:0] input_c;
  output [28:0] sum;
  output [28:0] carry;


  IAO21D0 U2 ( .A1(input_b[22]), .A2(input_a[22]), .B(carry[23]), .ZN(sum[22])
         );
  IAO21D0 U3 ( .A1(input_b[21]), .A2(input_a[21]), .B(carry[22]), .ZN(sum[21])
         );
  IAO21D0 U4 ( .A1(input_b[19]), .A2(input_a[19]), .B(carry[20]), .ZN(sum[19])
         );
  IAO21D0 U5 ( .A1(input_b[20]), .A2(input_a[20]), .B(carry[21]), .ZN(sum[20])
         );
  CKAN2D1 U6 ( .A1(input_b[19]), .A2(input_a[19]), .Z(carry[20]) );
  CKAN2D1 U7 ( .A1(input_b[20]), .A2(input_a[20]), .Z(carry[21]) );
  CKAN2D1 U8 ( .A1(input_b[21]), .A2(input_a[21]), .Z(carry[22]) );
  CKAN2D1 U9 ( .A1(input_b[18]), .A2(input_a[18]), .Z(carry[19]) );
  CKAN2D1 U10 ( .A1(input_b[17]), .A2(input_a[17]), .Z(carry[18]) );
  CKAN2D1 U11 ( .A1(input_b[12]), .A2(input_a[12]), .Z(carry[13]) );
  CKAN2D1 U12 ( .A1(input_b[16]), .A2(input_a[16]), .Z(carry[17]) );
  CKAN2D1 U13 ( .A1(input_b[11]), .A2(input_a[11]), .Z(carry[12]) );
  CKAN2D1 U14 ( .A1(input_b[15]), .A2(input_a[15]), .Z(carry[16]) );
  CKAN2D1 U15 ( .A1(input_b[14]), .A2(input_a[14]), .Z(carry[15]) );
  CKAN2D1 U16 ( .A1(input_b[13]), .A2(input_a[13]), .Z(carry[14]) );
  CKAN2D0 U17 ( .A1(input_b[24]), .A2(input_a[24]), .Z(carry[25]) );
  CKAN2D1 U18 ( .A1(input_b[9]), .A2(input_a[9]), .Z(carry[10]) );
  CKAN2D1 U19 ( .A1(input_b[10]), .A2(input_a[10]), .Z(carry[11]) );
  AN2D0 U20 ( .A1(input_a[8]), .A2(input_b[8]), .Z(carry[9]) );
  BUFFD0 U21 ( .I(input_a[26]), .Z(sum[26]) );
  AN2D0 U22 ( .A1(input_b[25]), .A2(input_a[25]), .Z(carry[26]) );
  BUFFD0 U23 ( .I(input_a[27]), .Z(sum[27]) );
  AN2D1 U24 ( .A1(input_a[4]), .A2(input_b[4]), .Z(carry[5]) );
  CKAN2D1 U25 ( .A1(input_a[5]), .A2(input_b[5]), .Z(carry[6]) );
  XOR2D0 U26 ( .A1(input_a[6]), .A2(input_b[6]), .Z(sum[6]) );
  CKAN2D1 U27 ( .A1(input_a[6]), .A2(input_b[6]), .Z(carry[7]) );
  BUFFD0 U28 ( .I(input_a[28]), .Z(sum[28]) );
  CKAN2D1 U29 ( .A1(input_a[7]), .A2(input_b[7]), .Z(carry[8]) );
  IAO21D0 U30 ( .A1(input_b[9]), .A2(input_a[9]), .B(carry[10]), .ZN(sum[9])
         );
  IAO21D0 U31 ( .A1(input_b[10]), .A2(input_a[10]), .B(carry[11]), .ZN(sum[10]) );
  IAO21D0 U32 ( .A1(input_b[24]), .A2(input_a[24]), .B(carry[25]), .ZN(sum[24]) );
  IAO21D0 U33 ( .A1(input_b[11]), .A2(input_a[11]), .B(carry[12]), .ZN(sum[11]) );
  IAO21D0 U34 ( .A1(input_b[23]), .A2(input_a[23]), .B(carry[24]), .ZN(sum[23]) );
  IAO21D0 U35 ( .A1(input_b[12]), .A2(input_a[12]), .B(carry[13]), .ZN(sum[12]) );
  IAO21D0 U36 ( .A1(input_b[13]), .A2(input_a[13]), .B(carry[14]), .ZN(sum[13]) );
  IAO21D0 U37 ( .A1(input_b[14]), .A2(input_a[14]), .B(carry[15]), .ZN(sum[14]) );
  IAO21D0 U38 ( .A1(input_b[15]), .A2(input_a[15]), .B(carry[16]), .ZN(sum[15]) );
  IAO21D0 U39 ( .A1(input_b[18]), .A2(input_a[18]), .B(carry[19]), .ZN(sum[18]) );
  IAO21D0 U40 ( .A1(input_b[16]), .A2(input_a[16]), .B(carry[17]), .ZN(sum[16]) );
  IAO21D0 U41 ( .A1(input_b[17]), .A2(input_a[17]), .B(carry[18]), .ZN(sum[17]) );
  IAO21D0 U42 ( .A1(input_b[25]), .A2(input_a[25]), .B(carry[26]), .ZN(sum[25]) );
  CKAN2D1 U43 ( .A1(input_b[23]), .A2(input_a[23]), .Z(carry[24]) );
  CKAN2D1 U44 ( .A1(input_b[22]), .A2(input_a[22]), .Z(carry[23]) );
  XOR2D0 U45 ( .A1(input_a[7]), .A2(input_b[7]), .Z(sum[7]) );
  CKXOR2D1 U46 ( .A1(input_a[4]), .A2(input_b[4]), .Z(sum[4]) );
  XOR2D0 U47 ( .A1(input_a[8]), .A2(input_b[8]), .Z(sum[8]) );
  XOR2D0 U48 ( .A1(input_a[3]), .A2(input_b[3]), .Z(sum[3]) );
  BUFFD0 U49 ( .I(input_a[0]), .Z(sum[0]) );
  CKAN2D0 U50 ( .A1(input_a[1]), .A2(input_b[1]), .Z(carry[2]) );
  CKAN2D0 U51 ( .A1(input_a[2]), .A2(input_b[2]), .Z(carry[3]) );
  AN2D1 U52 ( .A1(input_a[3]), .A2(input_b[3]), .Z(carry[4]) );
  XOR2D0 U53 ( .A1(input_a[1]), .A2(input_b[1]), .Z(sum[1]) );
  XOR2D0 U54 ( .A1(input_a[2]), .A2(input_b[2]), .Z(sum[2]) );
  CKXOR2D1 U55 ( .A1(input_a[5]), .A2(input_b[5]), .Z(sum[5]) );
endmodule


module csa3_WIDTH29_0 ( input_a, input_b, input_c, sum, carry );
  input [28:0] input_a;
  input [28:0] input_b;
  input [28:0] input_c;
  output [28:0] sum;
  output [28:0] carry;


  IAO21D0 U2 ( .A1(input_b[24]), .A2(input_a[24]), .B(carry[25]), .ZN(sum[24])
         );
  CKAN2D1 U3 ( .A1(input_b[11]), .A2(input_a[11]), .Z(carry[12]) );
  CKAN2D1 U4 ( .A1(input_b[17]), .A2(input_a[17]), .Z(carry[18]) );
  CKAN2D1 U5 ( .A1(input_b[20]), .A2(input_a[20]), .Z(carry[21]) );
  CKAN2D1 U6 ( .A1(input_b[10]), .A2(input_a[10]), .Z(carry[11]) );
  CKAN2D1 U7 ( .A1(input_b[19]), .A2(input_a[19]), .Z(carry[20]) );
  CKAN2D1 U8 ( .A1(input_b[9]), .A2(input_a[9]), .Z(carry[10]) );
  CKAN2D1 U9 ( .A1(input_b[21]), .A2(input_a[21]), .Z(carry[22]) );
  CKAN2D1 U10 ( .A1(input_b[22]), .A2(input_a[22]), .Z(carry[23]) );
  CKAN2D1 U11 ( .A1(input_b[14]), .A2(input_a[14]), .Z(carry[15]) );
  CKAN2D1 U12 ( .A1(input_b[13]), .A2(input_a[13]), .Z(carry[14]) );
  CKAN2D1 U13 ( .A1(input_b[12]), .A2(input_a[12]), .Z(carry[13]) );
  CKAN2D1 U14 ( .A1(input_b[15]), .A2(input_a[15]), .Z(carry[16]) );
  CKAN2D1 U15 ( .A1(input_b[18]), .A2(input_a[18]), .Z(carry[19]) );
  CKAN2D1 U16 ( .A1(input_b[16]), .A2(input_a[16]), .Z(carry[17]) );
  CKAN2D0 U17 ( .A1(input_a[5]), .A2(input_b[5]), .Z(carry[6]) );
  CKAN2D0 U18 ( .A1(input_a[4]), .A2(input_b[4]), .Z(carry[5]) );
  CKAN2D0 U19 ( .A1(input_a[6]), .A2(input_b[6]), .Z(carry[7]) );
  CKAN2D1 U20 ( .A1(input_a[8]), .A2(input_b[8]), .Z(carry[9]) );
  CKAN2D1 U21 ( .A1(input_a[7]), .A2(input_b[7]), .Z(carry[8]) );
  BUFFD0 U22 ( .I(input_a[27]), .Z(sum[27]) );
  CKAN2D0 U23 ( .A1(input_b[26]), .A2(input_a[26]), .Z(carry[27]) );
  IAO21D0 U24 ( .A1(input_b[17]), .A2(input_a[17]), .B(carry[18]), .ZN(sum[17]) );
  IAO21D0 U25 ( .A1(input_b[15]), .A2(input_a[15]), .B(carry[16]), .ZN(sum[15]) );
  IAO21D0 U26 ( .A1(input_b[16]), .A2(input_a[16]), .B(carry[17]), .ZN(sum[16]) );
  IAO21D0 U27 ( .A1(input_b[14]), .A2(input_a[14]), .B(carry[15]), .ZN(sum[14]) );
  IAO21D0 U28 ( .A1(input_b[9]), .A2(input_a[9]), .B(carry[10]), .ZN(sum[9])
         );
  IAO21D0 U29 ( .A1(input_b[12]), .A2(input_a[12]), .B(carry[13]), .ZN(sum[12]) );
  IAO21D0 U30 ( .A1(input_b[10]), .A2(input_a[10]), .B(carry[11]), .ZN(sum[10]) );
  IAO21D0 U31 ( .A1(input_b[13]), .A2(input_a[13]), .B(carry[14]), .ZN(sum[13]) );
  IAO21D0 U32 ( .A1(input_b[11]), .A2(input_a[11]), .B(carry[12]), .ZN(sum[11]) );
  CKAN2D1 U33 ( .A1(input_b[23]), .A2(input_a[23]), .Z(carry[24]) );
  CKAN2D1 U34 ( .A1(input_b[24]), .A2(input_a[24]), .Z(carry[25]) );
  IAO21D0 U35 ( .A1(input_b[25]), .A2(input_a[25]), .B(carry[26]), .ZN(sum[25]) );
  IAO21D0 U36 ( .A1(input_b[26]), .A2(input_a[26]), .B(carry[27]), .ZN(sum[26]) );
  CKAN2D1 U37 ( .A1(input_b[25]), .A2(input_a[25]), .Z(carry[26]) );
  BUFFD0 U38 ( .I(input_a[28]), .Z(sum[28]) );
  XOR2D0 U39 ( .A1(input_a[7]), .A2(input_b[7]), .Z(sum[7]) );
  XOR2D0 U40 ( .A1(input_a[8]), .A2(input_b[8]), .Z(sum[8]) );
  XOR2D0 U41 ( .A1(input_a[5]), .A2(input_b[5]), .Z(sum[5]) );
  XOR2D0 U42 ( .A1(input_a[6]), .A2(input_b[6]), .Z(sum[6]) );
  BUFFD0 U43 ( .I(input_a[0]), .Z(sum[0]) );
  BUFFD0 U44 ( .I(input_a[1]), .Z(sum[1]) );
  CKAN2D0 U45 ( .A1(input_a[2]), .A2(input_b[2]), .Z(carry[3]) );
  CKAN2D0 U46 ( .A1(input_a[3]), .A2(input_b[3]), .Z(carry[4]) );
  IAO21D1 U47 ( .A1(input_b[18]), .A2(input_a[18]), .B(carry[19]), .ZN(sum[18]) );
  IAO21D1 U48 ( .A1(input_b[19]), .A2(input_a[19]), .B(carry[20]), .ZN(sum[19]) );
  IAO21D1 U49 ( .A1(input_b[20]), .A2(input_a[20]), .B(carry[21]), .ZN(sum[20]) );
  IAO21D1 U50 ( .A1(input_b[21]), .A2(input_a[21]), .B(carry[22]), .ZN(sum[21]) );
  IAO21D1 U51 ( .A1(input_b[22]), .A2(input_a[22]), .B(carry[23]), .ZN(sum[22]) );
  IAO21D1 U52 ( .A1(input_b[23]), .A2(input_a[23]), .B(carry[24]), .ZN(sum[23]) );
  XOR2D0 U53 ( .A1(input_a[2]), .A2(input_b[2]), .Z(sum[2]) );
  XOR2D0 U54 ( .A1(input_a[3]), .A2(input_b[3]), .Z(sum[3]) );
  CKXOR2D1 U55 ( .A1(input_a[4]), .A2(input_b[4]), .Z(sum[4]) );
endmodule


module sa_scale_VALUE_WIDTH29_COEFF_WIDTH8 ( clk, value, coefficient, 
        scaled_value );
  input [28:0] value;
  input [7:0] coefficient;
  output [28:0] scaled_value;
  input clk;
  wire   partial_1_2__34_, partial_1_2__33_, partial_1_2__32_,
         partial_1_2__31_, partial_1_2__30_, partial_1_2__29_,
         partial_1_2__28_, partial_1_2__27_, partial_1_2__26_,
         partial_1_2__25_, partial_1_2__24_, partial_1_2__23_,
         partial_1_2__22_, partial_1_2__21_, partial_1_2__20_,
         partial_1_2__19_, partial_1_2__18_, partial_1_2__17_,
         partial_1_2__16_, partial_1_2__15_, partial_1_2__14_,
         partial_1_2__13_, partial_1_2__12_, partial_1_2__11_,
         partial_1_2__10_, partial_1_2__9_, partial_1_2__8_, partial_1_2__7_,
         partial_1_2__6_, partial_1_2__5_, partial_1_2__4_, partial_1_3__36_,
         partial_1_3__35_, partial_1_3__34_, partial_1_3__33_,
         partial_1_3__32_, partial_1_3__31_, partial_1_3__30_,
         partial_1_3__29_, partial_1_3__28_, partial_1_3__27_,
         partial_1_3__26_, partial_1_3__25_, partial_1_3__24_,
         partial_1_3__23_, partial_1_3__22_, partial_1_3__21_,
         partial_1_3__20_, partial_1_3__19_, partial_1_3__18_,
         partial_1_3__17_, partial_1_3__16_, partial_1_3__15_,
         partial_1_3__14_, partial_1_3__13_, partial_1_3__12_,
         partial_1_3__11_, partial_1_3__10_, partial_1_3__9_, partial_1_3__8_,
         partial_1_3__7_, partial_1_3__6_, partial_1_stage_1__30_,
         partial_1_stage_1__29_, partial_1_stage_1__28_,
         partial_1_stage_1__27_, partial_1_stage_1__26_,
         partial_1_stage_1__25_, partial_1_stage_1__24_,
         partial_1_stage_1__23_, partial_1_stage_1__22_,
         partial_1_stage_1__21_, partial_1_stage_1__20_,
         partial_1_stage_1__19_, partial_1_stage_1__18_,
         partial_1_stage_1__17_, partial_1_stage_1__16_,
         partial_1_stage_1__15_, partial_1_stage_1__14_,
         partial_1_stage_1__13_, partial_1_stage_1__12_,
         partial_1_stage_1__11_, partial_1_stage_1__10_, partial_1_stage_1__9_,
         partial_1_stage_1__8_, partial_1_stage_1__7_, partial_1_stage_1__6_,
         partial_1_stage_1__5_, partial_1_stage_1__4_, partial_1_stage_2__34_,
         partial_1_stage_2__33_, partial_1_stage_2__32_,
         partial_1_stage_2__31_, partial_1_stage_2__30_,
         partial_1_stage_2__29_, partial_1_stage_2__28_,
         partial_1_stage_2__27_, partial_1_stage_2__26_,
         partial_1_stage_2__25_, partial_1_stage_2__24_,
         partial_1_stage_2__23_, partial_1_stage_2__22_,
         partial_1_stage_2__21_, partial_1_stage_2__20_,
         partial_1_stage_2__19_, partial_1_stage_2__18_,
         partial_1_stage_2__17_, partial_1_stage_2__16_,
         partial_1_stage_2__15_, partial_1_stage_2__14_,
         partial_1_stage_2__13_, partial_1_stage_2__12_,
         partial_1_stage_2__11_, partial_1_stage_2__10_, partial_1_stage_2__9_,
         partial_1_stage_2__8_, partial_1_stage_2__7_, partial_1_stage_2__6_,
         partial_1_stage_2__5_, partial_1_stage_2__4_, partial_1_stage_3__36_,
         partial_1_stage_3__35_, partial_1_stage_3__34_,
         partial_1_stage_3__33_, partial_1_stage_3__32_,
         partial_1_stage_3__31_, partial_1_stage_3__30_,
         partial_1_stage_3__29_, partial_1_stage_3__28_,
         partial_1_stage_3__27_, partial_1_stage_3__26_,
         partial_1_stage_3__25_, partial_1_stage_3__24_,
         partial_1_stage_3__23_, partial_1_stage_3__22_,
         partial_1_stage_3__21_, partial_1_stage_3__20_,
         partial_1_stage_3__19_, partial_1_stage_3__18_,
         partial_1_stage_3__17_, partial_1_stage_3__16_,
         partial_1_stage_3__15_, partial_1_stage_3__14_,
         partial_1_stage_3__13_, partial_1_stage_3__12_,
         partial_1_stage_3__11_, partial_1_stage_3__10_, partial_1_stage_3__9_,
         partial_1_stage_3__8_, partial_1_stage_3__7_, partial_1_stage_3__6_,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428;

  DFQD1 partial_1_stage_reg_1__30_ ( .D(value[28]), .CP(clk), .Q(
        partial_1_stage_1__30_) );
  DFQD1 partial_1_stage_reg_1__29_ ( .D(value[27]), .CP(clk), .Q(
        partial_1_stage_1__29_) );
  DFQD1 partial_1_stage_reg_1__28_ ( .D(value[26]), .CP(clk), .Q(
        partial_1_stage_1__28_) );
  DFQD1 partial_1_stage_reg_1__27_ ( .D(value[25]), .CP(clk), .Q(
        partial_1_stage_1__27_) );
  DFQD1 partial_1_stage_reg_1__26_ ( .D(value[24]), .CP(clk), .Q(
        partial_1_stage_1__26_) );
  DFQD1 partial_1_stage_reg_1__25_ ( .D(value[23]), .CP(clk), .Q(
        partial_1_stage_1__25_) );
  DFQD1 partial_1_stage_reg_1__24_ ( .D(value[22]), .CP(clk), .Q(
        partial_1_stage_1__24_) );
  DFQD1 partial_1_stage_reg_1__23_ ( .D(value[21]), .CP(clk), .Q(
        partial_1_stage_1__23_) );
  DFQD1 partial_1_stage_reg_1__22_ ( .D(value[20]), .CP(clk), .Q(
        partial_1_stage_1__22_) );
  DFQD1 partial_1_stage_reg_1__21_ ( .D(value[19]), .CP(clk), .Q(
        partial_1_stage_1__21_) );
  DFQD1 partial_1_stage_reg_1__20_ ( .D(value[18]), .CP(clk), .Q(
        partial_1_stage_1__20_) );
  DFQD1 partial_1_stage_reg_1__19_ ( .D(value[17]), .CP(clk), .Q(
        partial_1_stage_1__19_) );
  DFQD1 partial_1_stage_reg_1__18_ ( .D(value[16]), .CP(clk), .Q(
        partial_1_stage_1__18_) );
  DFQD1 partial_1_stage_reg_1__17_ ( .D(value[15]), .CP(clk), .Q(
        partial_1_stage_1__17_) );
  DFQD1 partial_1_stage_reg_1__16_ ( .D(value[14]), .CP(clk), .Q(
        partial_1_stage_1__16_) );
  DFQD1 partial_1_stage_reg_1__15_ ( .D(value[13]), .CP(clk), .Q(
        partial_1_stage_1__15_) );
  DFQD1 partial_1_stage_reg_1__14_ ( .D(value[12]), .CP(clk), .Q(
        partial_1_stage_1__14_) );
  DFQD1 partial_1_stage_reg_1__13_ ( .D(value[11]), .CP(clk), .Q(
        partial_1_stage_1__13_) );
  DFQD1 partial_1_stage_reg_1__12_ ( .D(value[10]), .CP(clk), .Q(
        partial_1_stage_1__12_) );
  DFQD1 partial_1_stage_reg_1__11_ ( .D(value[9]), .CP(clk), .Q(
        partial_1_stage_1__11_) );
  DFQD1 partial_1_stage_reg_1__10_ ( .D(value[8]), .CP(clk), .Q(
        partial_1_stage_1__10_) );
  DFQD1 partial_1_stage_reg_1__9_ ( .D(value[7]), .CP(clk), .Q(
        partial_1_stage_1__9_) );
  DFQD1 partial_1_stage_reg_1__8_ ( .D(value[6]), .CP(clk), .Q(
        partial_1_stage_1__8_) );
  DFQD1 partial_1_stage_reg_1__7_ ( .D(value[5]), .CP(clk), .Q(
        partial_1_stage_1__7_) );
  DFQD1 partial_1_stage_reg_1__6_ ( .D(value[4]), .CP(clk), .Q(
        partial_1_stage_1__6_) );
  DFQD1 partial_1_stage_reg_1__5_ ( .D(value[3]), .CP(clk), .Q(
        partial_1_stage_1__5_) );
  DFQD1 partial_1_stage_reg_1__4_ ( .D(value[2]), .CP(clk), .Q(
        partial_1_stage_1__4_) );
  DFQD1 partial_1_stage_reg_2__34_ ( .D(partial_1_2__34_), .CP(clk), .Q(
        partial_1_stage_2__34_) );
  DFQD1 partial_1_stage_reg_2__33_ ( .D(partial_1_2__33_), .CP(clk), .Q(
        partial_1_stage_2__33_) );
  DFQD1 partial_1_stage_reg_2__32_ ( .D(partial_1_2__32_), .CP(clk), .Q(
        partial_1_stage_2__32_) );
  DFQD1 partial_1_stage_reg_2__31_ ( .D(partial_1_2__31_), .CP(clk), .Q(
        partial_1_stage_2__31_) );
  DFQD1 partial_1_stage_reg_2__30_ ( .D(partial_1_2__30_), .CP(clk), .Q(
        partial_1_stage_2__30_) );
  DFQD1 partial_1_stage_reg_2__29_ ( .D(partial_1_2__29_), .CP(clk), .Q(
        partial_1_stage_2__29_) );
  DFQD1 partial_1_stage_reg_2__28_ ( .D(partial_1_2__28_), .CP(clk), .Q(
        partial_1_stage_2__28_) );
  DFQD1 partial_1_stage_reg_2__27_ ( .D(partial_1_2__27_), .CP(clk), .Q(
        partial_1_stage_2__27_) );
  DFQD1 partial_1_stage_reg_2__26_ ( .D(partial_1_2__26_), .CP(clk), .Q(
        partial_1_stage_2__26_) );
  DFQD1 partial_1_stage_reg_2__25_ ( .D(partial_1_2__25_), .CP(clk), .Q(
        partial_1_stage_2__25_) );
  DFQD1 partial_1_stage_reg_2__24_ ( .D(partial_1_2__24_), .CP(clk), .Q(
        partial_1_stage_2__24_) );
  DFQD1 partial_1_stage_reg_2__23_ ( .D(partial_1_2__23_), .CP(clk), .Q(
        partial_1_stage_2__23_) );
  DFQD1 partial_1_stage_reg_2__22_ ( .D(partial_1_2__22_), .CP(clk), .Q(
        partial_1_stage_2__22_) );
  DFQD1 partial_1_stage_reg_2__21_ ( .D(partial_1_2__21_), .CP(clk), .Q(
        partial_1_stage_2__21_) );
  DFQD1 partial_1_stage_reg_2__20_ ( .D(partial_1_2__20_), .CP(clk), .Q(
        partial_1_stage_2__20_) );
  DFQD1 partial_1_stage_reg_2__19_ ( .D(partial_1_2__19_), .CP(clk), .Q(
        partial_1_stage_2__19_) );
  DFQD1 partial_1_stage_reg_2__18_ ( .D(partial_1_2__18_), .CP(clk), .Q(
        partial_1_stage_2__18_) );
  DFQD1 partial_1_stage_reg_2__17_ ( .D(partial_1_2__17_), .CP(clk), .Q(
        partial_1_stage_2__17_) );
  DFQD1 partial_1_stage_reg_2__16_ ( .D(partial_1_2__16_), .CP(clk), .Q(
        partial_1_stage_2__16_) );
  DFQD1 partial_1_stage_reg_2__15_ ( .D(partial_1_2__15_), .CP(clk), .Q(
        partial_1_stage_2__15_) );
  DFQD1 partial_1_stage_reg_2__14_ ( .D(partial_1_2__14_), .CP(clk), .Q(
        partial_1_stage_2__14_) );
  DFQD1 partial_1_stage_reg_2__13_ ( .D(partial_1_2__13_), .CP(clk), .Q(
        partial_1_stage_2__13_) );
  DFQD1 partial_1_stage_reg_2__12_ ( .D(partial_1_2__12_), .CP(clk), .Q(
        partial_1_stage_2__12_) );
  DFQD1 partial_1_stage_reg_2__11_ ( .D(partial_1_2__11_), .CP(clk), .Q(
        partial_1_stage_2__11_) );
  DFQD1 partial_1_stage_reg_2__10_ ( .D(partial_1_2__10_), .CP(clk), .Q(
        partial_1_stage_2__10_) );
  DFQD1 partial_1_stage_reg_2__9_ ( .D(partial_1_2__9_), .CP(clk), .Q(
        partial_1_stage_2__9_) );
  DFQD1 partial_1_stage_reg_2__8_ ( .D(partial_1_2__8_), .CP(clk), .Q(
        partial_1_stage_2__8_) );
  DFQD1 partial_1_stage_reg_2__7_ ( .D(partial_1_2__7_), .CP(clk), .Q(
        partial_1_stage_2__7_) );
  DFQD1 partial_1_stage_reg_2__6_ ( .D(partial_1_2__6_), .CP(clk), .Q(
        partial_1_stage_2__6_) );
  DFQD1 partial_1_stage_reg_2__5_ ( .D(partial_1_2__5_), .CP(clk), .Q(
        partial_1_stage_2__5_) );
  DFQD1 partial_1_stage_reg_2__4_ ( .D(partial_1_2__4_), .CP(clk), .Q(
        partial_1_stage_2__4_) );
  DFQD1 partial_1_stage_reg_3__36_ ( .D(partial_1_3__36_), .CP(clk), .Q(
        partial_1_stage_3__36_) );
  DFQD1 partial_1_stage_reg_3__35_ ( .D(partial_1_3__35_), .CP(clk), .Q(
        partial_1_stage_3__35_) );
  DFQD1 partial_1_stage_reg_3__34_ ( .D(partial_1_3__34_), .CP(clk), .Q(
        partial_1_stage_3__34_) );
  DFQD1 partial_1_stage_reg_3__33_ ( .D(partial_1_3__33_), .CP(clk), .Q(
        partial_1_stage_3__33_) );
  DFQD1 partial_1_stage_reg_3__32_ ( .D(partial_1_3__32_), .CP(clk), .Q(
        partial_1_stage_3__32_) );
  DFQD1 partial_1_stage_reg_3__31_ ( .D(partial_1_3__31_), .CP(clk), .Q(
        partial_1_stage_3__31_) );
  DFQD1 partial_1_stage_reg_3__30_ ( .D(partial_1_3__30_), .CP(clk), .Q(
        partial_1_stage_3__30_) );
  DFQD1 partial_1_stage_reg_3__29_ ( .D(partial_1_3__29_), .CP(clk), .Q(
        partial_1_stage_3__29_) );
  DFQD1 partial_1_stage_reg_3__28_ ( .D(partial_1_3__28_), .CP(clk), .Q(
        partial_1_stage_3__28_) );
  DFQD1 partial_1_stage_reg_3__27_ ( .D(partial_1_3__27_), .CP(clk), .Q(
        partial_1_stage_3__27_) );
  DFQD1 partial_1_stage_reg_3__26_ ( .D(partial_1_3__26_), .CP(clk), .Q(
        partial_1_stage_3__26_) );
  DFQD1 partial_1_stage_reg_3__25_ ( .D(partial_1_3__25_), .CP(clk), .Q(
        partial_1_stage_3__25_) );
  DFQD1 partial_1_stage_reg_3__24_ ( .D(partial_1_3__24_), .CP(clk), .Q(
        partial_1_stage_3__24_) );
  DFQD1 partial_1_stage_reg_3__23_ ( .D(partial_1_3__23_), .CP(clk), .Q(
        partial_1_stage_3__23_) );
  DFQD1 partial_1_stage_reg_3__22_ ( .D(partial_1_3__22_), .CP(clk), .Q(
        partial_1_stage_3__22_) );
  DFQD1 partial_1_stage_reg_3__21_ ( .D(partial_1_3__21_), .CP(clk), .Q(
        partial_1_stage_3__21_) );
  DFQD1 partial_1_stage_reg_3__20_ ( .D(partial_1_3__20_), .CP(clk), .Q(
        partial_1_stage_3__20_) );
  DFQD1 partial_1_stage_reg_3__19_ ( .D(partial_1_3__19_), .CP(clk), .Q(
        partial_1_stage_3__19_) );
  DFQD1 partial_1_stage_reg_3__18_ ( .D(partial_1_3__18_), .CP(clk), .Q(
        partial_1_stage_3__18_) );
  DFQD1 partial_1_stage_reg_3__17_ ( .D(partial_1_3__17_), .CP(clk), .Q(
        partial_1_stage_3__17_) );
  DFQD1 partial_1_stage_reg_3__16_ ( .D(partial_1_3__16_), .CP(clk), .Q(
        partial_1_stage_3__16_) );
  DFQD1 partial_1_stage_reg_3__15_ ( .D(partial_1_3__15_), .CP(clk), .Q(
        partial_1_stage_3__15_) );
  DFQD1 partial_1_stage_reg_3__14_ ( .D(partial_1_3__14_), .CP(clk), .Q(
        partial_1_stage_3__14_) );
  DFQD1 partial_1_stage_reg_3__13_ ( .D(partial_1_3__13_), .CP(clk), .Q(
        partial_1_stage_3__13_) );
  DFQD1 partial_1_stage_reg_3__12_ ( .D(partial_1_3__12_), .CP(clk), .Q(
        partial_1_stage_3__12_) );
  DFQD1 partial_1_stage_reg_3__11_ ( .D(partial_1_3__11_), .CP(clk), .Q(
        partial_1_stage_3__11_) );
  DFQD1 partial_1_stage_reg_3__10_ ( .D(partial_1_3__10_), .CP(clk), .Q(
        partial_1_stage_3__10_) );
  DFQD1 partial_1_stage_reg_3__9_ ( .D(partial_1_3__9_), .CP(clk), .Q(
        partial_1_stage_3__9_) );
  DFQD1 partial_1_stage_reg_3__8_ ( .D(partial_1_3__8_), .CP(clk), .Q(
        partial_1_stage_3__8_) );
  DFQD1 partial_1_stage_reg_3__7_ ( .D(partial_1_3__7_), .CP(clk), .Q(
        partial_1_stage_3__7_) );
  DFQD1 partial_1_stage_reg_3__6_ ( .D(partial_1_3__6_), .CP(clk), .Q(
        partial_1_stage_3__6_) );
  INVD1 U3 ( .I(n119), .ZN(partial_1_2__34_) );
  BUFFD1 U4 ( .I(n321), .Z(n155) );
  HA1D0 U5 ( .A(n113), .B(n112), .CO(n109), .S(partial_1_2__5_) );
  INVD0 U6 ( .I(n371), .ZN(n372) );
  INVD0 U7 ( .I(value[12]), .ZN(n144) );
  INVD0 U8 ( .I(value[22]), .ZN(n127) );
  NR2D0 U9 ( .A1(n144), .A2(n160), .ZN(n206) );
  NR2D0 U10 ( .A1(n144), .A2(n143), .ZN(n210) );
  NR2D0 U11 ( .A1(n139), .A2(n140), .ZN(n200) );
  NR2D0 U12 ( .A1(n139), .A2(n143), .ZN(n204) );
  NR2D0 U13 ( .A1(n141), .A2(n140), .ZN(n203) );
  NR2D0 U14 ( .A1(n141), .A2(n143), .ZN(n207) );
  NR2D0 U15 ( .A1(n139), .A2(n23), .ZN(n72) );
  NR2D0 U16 ( .A1(n150), .A2(n155), .ZN(n224) );
  NR2XD0 U17 ( .A1(n154), .A2(n155), .ZN(n230) );
  INVD0 U18 ( .I(n247), .ZN(n249) );
  NR2D0 U19 ( .A1(n121), .A2(n16), .ZN(n36) );
  NR2D0 U20 ( .A1(n120), .A2(n17), .ZN(n35) );
  NR2D0 U21 ( .A1(n144), .A2(n25), .ZN(n80) );
  NR2D0 U22 ( .A1(n122), .A2(n16), .ZN(n39) );
  NR2D0 U23 ( .A1(n146), .A2(n27), .ZN(n81) );
  NR2D0 U24 ( .A1(n141), .A2(n25), .ZN(n77) );
  NR2D0 U25 ( .A1(n144), .A2(n23), .ZN(n78) );
  NR2D0 U26 ( .A1(n121), .A2(n17), .ZN(n38) );
  NR2D0 U27 ( .A1(n139), .A2(n25), .ZN(n74) );
  NR2D0 U28 ( .A1(n141), .A2(n23), .ZN(n75) );
  NR2D0 U29 ( .A1(n138), .A2(n25), .ZN(n71) );
  NR2D0 U30 ( .A1(n137), .A2(n22), .ZN(n68) );
  NR2D0 U31 ( .A1(n135), .A2(n22), .ZN(n65) );
  NR2D0 U32 ( .A1(n120), .A2(n123), .ZN(n164) );
  NR2D0 U33 ( .A1(n121), .A2(n243), .ZN(n165) );
  NR2D0 U34 ( .A1(n152), .A2(n29), .ZN(n95) );
  NR2D0 U35 ( .A1(n120), .A2(n243), .ZN(n246) );
  NR2D0 U36 ( .A1(n121), .A2(n123), .ZN(n167) );
  NR2D0 U37 ( .A1(n124), .A2(n128), .ZN(n170) );
  NR2D0 U38 ( .A1(n149), .A2(n28), .ZN(n92) );
  NR2D0 U39 ( .A1(n150), .A2(n29), .ZN(n93) );
  NR2D0 U40 ( .A1(n148), .A2(n28), .ZN(n89) );
  NR2D0 U41 ( .A1(n147), .A2(n28), .ZN(n86) );
  NR2D0 U42 ( .A1(n149), .A2(n27), .ZN(n90) );
  NR2D0 U43 ( .A1(n148), .A2(n27), .ZN(n87) );
  NR2D0 U44 ( .A1(n138), .A2(n143), .ZN(n201) );
  NR2D0 U45 ( .A1(n146), .A2(n28), .ZN(n83) );
  NR2D0 U46 ( .A1(n138), .A2(n140), .ZN(n197) );
  NR2D0 U47 ( .A1(n137), .A2(n136), .ZN(n198) );
  NR2D0 U48 ( .A1(n147), .A2(n27), .ZN(n84) );
  BUFFD0 U49 ( .I(n26), .Z(n28) );
  NR2D0 U50 ( .A1(n152), .A2(n151), .ZN(n225) );
  NR2D0 U51 ( .A1(n150), .A2(n151), .ZN(n222) );
  NR2D0 U52 ( .A1(n149), .A2(n151), .ZN(n219) );
  OR2D0 U53 ( .A1(n297), .A2(n296), .Z(n355) );
  ND2D0 U54 ( .A1(n300), .A2(n299), .ZN(n398) );
  NR2D0 U55 ( .A1(n300), .A2(n299), .ZN(n397) );
  ND2D0 U56 ( .A1(n295), .A2(n294), .ZN(n403) );
  ND2D0 U57 ( .A1(n297), .A2(n296), .ZN(n354) );
  NR2D0 U58 ( .A1(n305), .A2(n304), .ZN(n392) );
  ND2D0 U59 ( .A1(n302), .A2(n301), .ZN(n358) );
  OR2D0 U60 ( .A1(n302), .A2(n301), .Z(n359) );
  ND2D0 U61 ( .A1(n287), .A2(n286), .ZN(n346) );
  ND2D0 U62 ( .A1(n290), .A2(n289), .ZN(n408) );
  ND2D0 U63 ( .A1(n292), .A2(n291), .ZN(n350) );
  NR2D0 U64 ( .A1(n290), .A2(n289), .ZN(n407) );
  NR2D0 U65 ( .A1(n295), .A2(n294), .ZN(n402) );
  ND2D0 U66 ( .A1(n285), .A2(n284), .ZN(n413) );
  INVD0 U67 ( .I(value[6]), .ZN(n152) );
  INVD0 U68 ( .I(value[9]), .ZN(n148) );
  INVD1 U69 ( .I(value[3]), .ZN(n157) );
  XNR2D0 U70 ( .A1(n374), .A2(n370), .ZN(scaled_value[24]) );
  NR2XD0 U71 ( .A1(n138), .A2(n23), .ZN(n69) );
  NR2XD0 U72 ( .A1(n122), .A2(n123), .ZN(n171) );
  NR2XD0 U73 ( .A1(n137), .A2(n21), .ZN(n66) );
  NR2XD0 U74 ( .A1(n133), .A2(n22), .ZN(n62) );
  NR2XD0 U75 ( .A1(n135), .A2(n21), .ZN(n63) );
  NR2XD0 U76 ( .A1(n122), .A2(n243), .ZN(n168) );
  NR2XD0 U77 ( .A1(n132), .A2(n22), .ZN(n59) );
  NR2XD0 U78 ( .A1(n133), .A2(n21), .ZN(n60) );
  NR2XD0 U79 ( .A1(n150), .A2(n30), .ZN(n96) );
  NR2XD0 U80 ( .A1(n124), .A2(n123), .ZN(n174) );
  NR2XD0 U81 ( .A1(n152), .A2(n30), .ZN(n99) );
  NR2XD0 U82 ( .A1(n126), .A2(n128), .ZN(n173) );
  NR2XD0 U83 ( .A1(n126), .A2(n130), .ZN(n177) );
  NR2XD0 U84 ( .A1(n154), .A2(n29), .ZN(n98) );
  NR2XD0 U85 ( .A1(n127), .A2(n128), .ZN(n176) );
  NR2XD0 U86 ( .A1(n127), .A2(n130), .ZN(n180) );
  NR2XD0 U87 ( .A1(n129), .A2(n128), .ZN(n179) );
  NR2XD0 U88 ( .A1(n129), .A2(n130), .ZN(n183) );
  NR2XD0 U89 ( .A1(n152), .A2(n155), .ZN(n227) );
  NR2XD0 U90 ( .A1(n131), .A2(n134), .ZN(n182) );
  NR2XD0 U91 ( .A1(n131), .A2(n130), .ZN(n186) );
  NR2XD0 U92 ( .A1(n132), .A2(n134), .ZN(n185) );
  NR2XD0 U93 ( .A1(n132), .A2(n136), .ZN(n189) );
  NR2XD0 U94 ( .A1(n133), .A2(n134), .ZN(n188) );
  NR2XD0 U95 ( .A1(n133), .A2(n136), .ZN(n192) );
  NR2XD0 U96 ( .A1(n135), .A2(n134), .ZN(n191) );
  NR2XD0 U97 ( .A1(n135), .A2(n136), .ZN(n195) );
  NR2XD0 U98 ( .A1(n137), .A2(n140), .ZN(n194) );
  NR2XD0 U99 ( .A1(n126), .A2(n20), .ZN(n47) );
  NR2D0 U100 ( .A1(n120), .A2(n16), .ZN(n116) );
  NR2XD0 U101 ( .A1(n127), .A2(n19), .ZN(n48) );
  NR2XD0 U102 ( .A1(n129), .A2(n20), .ZN(n53) );
  NR2XD0 U103 ( .A1(n124), .A2(n17), .ZN(n44) );
  NR2XD0 U104 ( .A1(n132), .A2(n21), .ZN(n57) );
  NR2XD0 U105 ( .A1(n129), .A2(n19), .ZN(n51) );
  NR2XD0 U106 ( .A1(n131), .A2(n20), .ZN(n56) );
  NR2XD0 U107 ( .A1(n126), .A2(n19), .ZN(n45) );
  NR2XD0 U108 ( .A1(n131), .A2(n19), .ZN(n54) );
  NR2XD0 U109 ( .A1(n124), .A2(n16), .ZN(n42) );
  NR2XD0 U110 ( .A1(n127), .A2(n20), .ZN(n50) );
  NR2XD0 U111 ( .A1(n122), .A2(n17), .ZN(n41) );
  INVD0 U112 ( .I(n354), .ZN(n298) );
  BUFFD1 U113 ( .I(n142), .Z(n140) );
  BUFFD1 U114 ( .I(n145), .Z(n143) );
  NR2D0 U115 ( .A1(n146), .A2(n24), .ZN(n209) );
  INVD0 U116 ( .I(n358), .ZN(n303) );
  INVD0 U117 ( .I(n350), .ZN(n293) );
  BUFFD1 U118 ( .I(n125), .Z(n130) );
  INVD0 U119 ( .I(n346), .ZN(n288) );
  BUFFD1 U120 ( .I(n142), .Z(n134) );
  BUFFD1 U121 ( .I(n145), .Z(n136) );
  BUFFD1 U122 ( .I(n24), .Z(n23) );
  NR2XD0 U123 ( .A1(n125), .A2(n244), .ZN(n247) );
  BUFFD1 U124 ( .I(n26), .Z(n22) );
  NR2D0 U125 ( .A1(n149), .A2(n145), .ZN(n221) );
  BUFFD1 U126 ( .I(n26), .Z(n25) );
  BUFFD1 U127 ( .I(n24), .Z(n21) );
  NR2D0 U128 ( .A1(n148), .A2(n125), .ZN(n218) );
  BUFFD1 U129 ( .I(n24), .Z(n27) );
  BUFFD1 U130 ( .I(n18), .Z(n20) );
  NR2XD0 U131 ( .A1(n154), .A2(n151), .ZN(n228) );
  BUFFD1 U132 ( .I(n114), .Z(n19) );
  NR2D0 U133 ( .A1(n147), .A2(n18), .ZN(n216) );
  NR2D0 U134 ( .A1(n146), .A2(n145), .ZN(n213) );
  NR2D0 U135 ( .A1(n148), .A2(n114), .ZN(n215) );
  NR2D0 U136 ( .A1(n147), .A2(n142), .ZN(n212) );
  CKND2D0 U137 ( .A1(n280), .A2(n279), .ZN(n418) );
  CKND2D0 U138 ( .A1(n282), .A2(n281), .ZN(n342) );
  OR2D0 U139 ( .A1(n292), .A2(n291), .Z(n351) );
  CKND2D1 U140 ( .A1(n305), .A2(n304), .ZN(n393) );
  OR2D0 U141 ( .A1(n369), .A2(n368), .Z(n373) );
  CKND2D1 U142 ( .A1(n369), .A2(n368), .ZN(n371) );
  INVD0 U143 ( .I(value[28]), .ZN(n244) );
  INVD0 U144 ( .I(value[8]), .ZN(n149) );
  INVD0 U145 ( .I(value[7]), .ZN(n150) );
  INVD0 U146 ( .I(partial_1_stage_1__30_), .ZN(n381) );
  CKND2 U147 ( .I(coefficient[7]), .ZN(n153) );
  INVD1 U148 ( .I(n250), .ZN(partial_1_3__36_) );
  INVD0 U149 ( .I(n381), .ZN(n13) );
  OR2D0 U150 ( .A1(n114), .A2(n244), .Z(n14) );
  OR2D0 U151 ( .A1(n244), .A2(n243), .Z(n15) );
  CKBD1 U152 ( .I(n153), .Z(n158) );
  CKBD1 U153 ( .I(n322), .Z(n30) );
  CKBD1 U154 ( .I(n161), .Z(n321) );
  HA1D0 U155 ( .A(n242), .B(n241), .CO(n238), .S(partial_1_3__7_) );
  FA1D0 U156 ( .A(n204), .B(n203), .CI(n202), .CO(n199), .S(partial_1_3__20_)
         );
  FA1D0 U157 ( .A(n249), .B(n15), .CI(n248), .CO(n250), .S(partial_1_3__35_)
         );
  FA1D0 U158 ( .A(n78), .B(n77), .CI(n76), .CO(n73), .S(partial_1_2__17_) );
  FA1D0 U159 ( .A(n117), .B(n116), .CI(n115), .CO(n118), .S(partial_1_2__32_)
         );
  INVD1 U160 ( .I(coefficient[4]), .ZN(n32) );
  CKBD1 U161 ( .I(n32), .Z(n18) );
  NR2D0 U162 ( .A1(n18), .A2(n244), .ZN(n117) );
  INVD1 U163 ( .I(value[27]), .ZN(n120) );
  INVD2 U164 ( .I(coefficient[5]), .ZN(n33) );
  CKBD1 U165 ( .I(n33), .Z(n114) );
  BUFFD1 U166 ( .I(n114), .Z(n16) );
  INVD1 U167 ( .I(value[26]), .ZN(n121) );
  BUFFD1 U168 ( .I(n18), .Z(n17) );
  INVD1 U169 ( .I(value[25]), .ZN(n122) );
  INVD1 U170 ( .I(value[24]), .ZN(n124) );
  INVD1 U171 ( .I(value[23]), .ZN(n126) );
  INVD1 U172 ( .I(value[21]), .ZN(n129) );
  INVD1 U173 ( .I(value[20]), .ZN(n131) );
  INVD1 U174 ( .I(value[19]), .ZN(n132) );
  CKBD1 U175 ( .I(n33), .Z(n24) );
  INVD1 U176 ( .I(value[18]), .ZN(n133) );
  CKBD1 U177 ( .I(n32), .Z(n26) );
  INVD1 U178 ( .I(value[17]), .ZN(n135) );
  INVD1 U179 ( .I(value[16]), .ZN(n137) );
  INVD1 U180 ( .I(value[15]), .ZN(n138) );
  INVD1 U181 ( .I(value[14]), .ZN(n139) );
  INVD1 U182 ( .I(value[13]), .ZN(n141) );
  INVD1 U183 ( .I(value[11]), .ZN(n146) );
  INVD1 U184 ( .I(value[10]), .ZN(n147) );
  BUFFD2 U185 ( .I(n33), .Z(n31) );
  CKBD1 U186 ( .I(n31), .Z(n29) );
  BUFFD2 U187 ( .I(n32), .Z(n322) );
  INVD1 U188 ( .I(value[5]), .ZN(n154) );
  NR2D1 U189 ( .A1(n154), .A2(n30), .ZN(n102) );
  INVD1 U190 ( .I(value[4]), .ZN(n156) );
  NR2D1 U191 ( .A1(n156), .A2(n29), .ZN(n101) );
  NR2D1 U192 ( .A1(n157), .A2(n31), .ZN(n105) );
  NR2D1 U193 ( .A1(n156), .A2(n30), .ZN(n104) );
  INVD1 U194 ( .I(value[2]), .ZN(n159) );
  NR2D1 U195 ( .A1(n159), .A2(n31), .ZN(n108) );
  NR2D1 U196 ( .A1(n157), .A2(n322), .ZN(n107) );
  INVD0 U197 ( .I(value[1]), .ZN(n162) );
  NR2D1 U198 ( .A1(n162), .A2(n31), .ZN(n111) );
  NR2XD0 U199 ( .A1(n159), .A2(n322), .ZN(n110) );
  NR2D0 U200 ( .A1(n162), .A2(n32), .ZN(n113) );
  INVD0 U201 ( .I(value[0]), .ZN(n323) );
  NR2D0 U202 ( .A1(n323), .A2(n33), .ZN(n112) );
  FA1D1 U203 ( .A(n36), .B(n35), .CI(n34), .CO(n115), .S(partial_1_2__31_) );
  FA1D1 U204 ( .A(n39), .B(n38), .CI(n37), .CO(n34), .S(partial_1_2__30_) );
  FA1D1 U205 ( .A(n42), .B(n41), .CI(n40), .CO(n37), .S(partial_1_2__29_) );
  FA1D1 U206 ( .A(n45), .B(n44), .CI(n43), .CO(n40), .S(partial_1_2__28_) );
  FA1D1 U207 ( .A(n48), .B(n47), .CI(n46), .CO(n43), .S(partial_1_2__27_) );
  FA1D1 U208 ( .A(n51), .B(n50), .CI(n49), .CO(n46), .S(partial_1_2__26_) );
  FA1D1 U209 ( .A(n54), .B(n53), .CI(n52), .CO(n49), .S(partial_1_2__25_) );
  FA1D1 U210 ( .A(n57), .B(n56), .CI(n55), .CO(n52), .S(partial_1_2__24_) );
  FA1D1 U211 ( .A(n60), .B(n59), .CI(n58), .CO(n55), .S(partial_1_2__23_) );
  FA1D1 U212 ( .A(n63), .B(n62), .CI(n61), .CO(n58), .S(partial_1_2__22_) );
  FA1D1 U213 ( .A(n66), .B(n65), .CI(n64), .CO(n61), .S(partial_1_2__21_) );
  FA1D1 U214 ( .A(n69), .B(n68), .CI(n67), .CO(n64), .S(partial_1_2__20_) );
  FA1D1 U215 ( .A(n72), .B(n71), .CI(n70), .CO(n67), .S(partial_1_2__19_) );
  FA1D1 U216 ( .A(n75), .B(n74), .CI(n73), .CO(n70), .S(partial_1_2__18_) );
  FA1D1 U217 ( .A(n81), .B(n80), .CI(n79), .CO(n76), .S(partial_1_2__16_) );
  FA1D1 U218 ( .A(n84), .B(n83), .CI(n82), .CO(n79), .S(partial_1_2__15_) );
  FA1D1 U219 ( .A(n87), .B(n86), .CI(n85), .CO(n82), .S(partial_1_2__14_) );
  FA1D1 U220 ( .A(n90), .B(n89), .CI(n88), .CO(n85), .S(partial_1_2__13_) );
  FA1D1 U221 ( .A(n93), .B(n92), .CI(n91), .CO(n88), .S(partial_1_2__12_) );
  FA1D1 U222 ( .A(n96), .B(n95), .CI(n94), .CO(n91), .S(partial_1_2__11_) );
  FA1D1 U223 ( .A(n99), .B(n98), .CI(n97), .CO(n94), .S(partial_1_2__10_) );
  FA1D1 U224 ( .A(n102), .B(n101), .CI(n100), .CO(n97), .S(partial_1_2__9_) );
  FA1D1 U225 ( .A(n105), .B(n104), .CI(n103), .CO(n100), .S(partial_1_2__8_)
         );
  FA1D1 U226 ( .A(n108), .B(n107), .CI(n106), .CO(n103), .S(partial_1_2__7_)
         );
  FA1D1 U227 ( .A(n111), .B(n110), .CI(n109), .CO(n106), .S(partial_1_2__6_)
         );
  FA1D1 U228 ( .A(n14), .B(n249), .CI(n118), .CO(n119), .S(partial_1_2__33_)
         );
  INVD1 U229 ( .I(coefficient[6]), .ZN(n161) );
  CKBD1 U230 ( .I(n161), .Z(n125) );
  CKBD1 U231 ( .I(n153), .Z(n160) );
  BUFFD1 U232 ( .I(n160), .Z(n243) );
  BUFFD1 U233 ( .I(n125), .Z(n123) );
  CKBD1 U234 ( .I(n153), .Z(n142) );
  BUFFD1 U235 ( .I(n142), .Z(n128) );
  CKBD1 U236 ( .I(n161), .Z(n145) );
  CKBD1 U237 ( .I(n153), .Z(n151) );
  NR2D1 U238 ( .A1(n156), .A2(n158), .ZN(n231) );
  NR2D1 U239 ( .A1(n157), .A2(n158), .ZN(n234) );
  NR2D1 U240 ( .A1(n156), .A2(n155), .ZN(n233) );
  NR2D1 U241 ( .A1(n159), .A2(n158), .ZN(n237) );
  NR2D1 U242 ( .A1(n157), .A2(n321), .ZN(n236) );
  NR2D1 U243 ( .A1(n162), .A2(n158), .ZN(n240) );
  NR2D1 U244 ( .A1(n159), .A2(n321), .ZN(n239) );
  NR2XD0 U245 ( .A1(n323), .A2(n160), .ZN(n242) );
  NR2D0 U246 ( .A1(n162), .A2(n161), .ZN(n241) );
  FA1D1 U247 ( .A(n165), .B(n164), .CI(n163), .CO(n245), .S(partial_1_3__33_)
         );
  FA1D1 U248 ( .A(n168), .B(n167), .CI(n166), .CO(n163), .S(partial_1_3__32_)
         );
  FA1D1 U249 ( .A(n171), .B(n170), .CI(n169), .CO(n166), .S(partial_1_3__31_)
         );
  FA1D1 U250 ( .A(n174), .B(n173), .CI(n172), .CO(n169), .S(partial_1_3__30_)
         );
  FA1D1 U251 ( .A(n177), .B(n176), .CI(n175), .CO(n172), .S(partial_1_3__29_)
         );
  FA1D1 U252 ( .A(n180), .B(n179), .CI(n178), .CO(n175), .S(partial_1_3__28_)
         );
  FA1D1 U253 ( .A(n183), .B(n182), .CI(n181), .CO(n178), .S(partial_1_3__27_)
         );
  FA1D1 U254 ( .A(n186), .B(n185), .CI(n184), .CO(n181), .S(partial_1_3__26_)
         );
  FA1D1 U255 ( .A(n189), .B(n188), .CI(n187), .CO(n184), .S(partial_1_3__25_)
         );
  FA1D1 U256 ( .A(n192), .B(n191), .CI(n190), .CO(n187), .S(partial_1_3__24_)
         );
  FA1D1 U257 ( .A(n195), .B(n194), .CI(n193), .CO(n190), .S(partial_1_3__23_)
         );
  FA1D1 U258 ( .A(n198), .B(n197), .CI(n196), .CO(n193), .S(partial_1_3__22_)
         );
  FA1D1 U259 ( .A(n201), .B(n200), .CI(n199), .CO(n196), .S(partial_1_3__21_)
         );
  FA1D1 U260 ( .A(n207), .B(n206), .CI(n205), .CO(n202), .S(partial_1_3__19_)
         );
  FA1D1 U261 ( .A(n210), .B(n209), .CI(n208), .CO(n205), .S(partial_1_3__18_)
         );
  FA1D1 U262 ( .A(n213), .B(n212), .CI(n211), .CO(n208), .S(partial_1_3__17_)
         );
  FA1D1 U263 ( .A(n216), .B(n215), .CI(n214), .CO(n211), .S(partial_1_3__16_)
         );
  FA1D1 U264 ( .A(n219), .B(n218), .CI(n217), .CO(n214), .S(partial_1_3__15_)
         );
  FA1D1 U265 ( .A(n222), .B(n221), .CI(n220), .CO(n217), .S(partial_1_3__14_)
         );
  FA1D1 U266 ( .A(n225), .B(n224), .CI(n223), .CO(n220), .S(partial_1_3__13_)
         );
  FA1D1 U267 ( .A(n228), .B(n227), .CI(n226), .CO(n223), .S(partial_1_3__12_)
         );
  FA1D1 U268 ( .A(n231), .B(n230), .CI(n229), .CO(n226), .S(partial_1_3__11_)
         );
  FA1D1 U269 ( .A(n234), .B(n233), .CI(n232), .CO(n229), .S(partial_1_3__10_)
         );
  FA1D1 U270 ( .A(n237), .B(n236), .CI(n235), .CO(n232), .S(partial_1_3__9_)
         );
  FA1D1 U271 ( .A(n240), .B(n239), .CI(n238), .CO(n235), .S(partial_1_3__8_)
         );
  FA1D1 U272 ( .A(n247), .B(n246), .CI(n245), .CO(n248), .S(partial_1_3__34_)
         );
  FA1D0 U273 ( .A(partial_1_stage_1__24_), .B(partial_1_stage_3__24_), .CI(
        partial_1_stage_2__24_), .CO(n308), .S(n379) );
  NR2D0 U274 ( .A1(n264), .A2(n263), .ZN(n328) );
  FA1D0 U275 ( .A(partial_1_stage_1__8_), .B(partial_1_stage_3__8_), .CI(
        partial_1_stage_2__8_), .CO(n265), .S(n264) );
  NR2XD0 U276 ( .A1(n266), .A2(n265), .ZN(n330) );
  NR2D0 U277 ( .A1(n328), .A2(n330), .ZN(n268) );
  FA1D0 U278 ( .A(partial_1_stage_1__7_), .B(partial_1_stage_3__7_), .CI(
        partial_1_stage_2__7_), .CO(n263), .S(n259) );
  NR2D0 U279 ( .A1(n259), .A2(n258), .ZN(n262) );
  HA1D0 U280 ( .A(partial_1_stage_3__6_), .B(partial_1_stage_1__6_), .CO(n258), 
        .S(n254) );
  OR2D0 U281 ( .A1(n254), .A2(partial_1_stage_2__6_), .Z(n257) );
  OR2D0 U282 ( .A1(partial_1_stage_2__5_), .A2(partial_1_stage_1__5_), .Z(n253) );
  CKAN2D0 U283 ( .A1(partial_1_stage_2__4_), .A2(partial_1_stage_1__4_), .Z(
        n252) );
  CKAN2D0 U284 ( .A1(partial_1_stage_2__5_), .A2(partial_1_stage_1__5_), .Z(
        n251) );
  AO21D0 U285 ( .A1(n253), .A2(n252), .B(n251), .Z(n256) );
  CKAN2D0 U286 ( .A1(n254), .A2(partial_1_stage_2__6_), .Z(n255) );
  AOI21D0 U287 ( .A1(n257), .A2(n256), .B(n255), .ZN(n261) );
  CKND2D0 U288 ( .A1(n259), .A2(n258), .ZN(n260) );
  OAI21D0 U289 ( .A1(n262), .A2(n261), .B(n260), .ZN(n324) );
  CKND2D0 U290 ( .A1(n264), .A2(n263), .ZN(n327) );
  CKND2D0 U291 ( .A1(n266), .A2(n265), .ZN(n331) );
  OAI21D0 U292 ( .A1(n330), .A2(n327), .B(n331), .ZN(n267) );
  AOI21D1 U293 ( .A1(n268), .A2(n324), .B(n267), .ZN(n335) );
  FA1D0 U294 ( .A(partial_1_stage_1__9_), .B(partial_1_stage_3__9_), .CI(
        partial_1_stage_2__9_), .CO(n269), .S(n266) );
  OR2D0 U295 ( .A1(n270), .A2(n269), .Z(n423) );
  FA1D0 U296 ( .A(partial_1_stage_1__10_), .B(partial_1_stage_3__10_), .CI(
        partial_1_stage_2__10_), .CO(n271), .S(n270) );
  OR2D0 U297 ( .A1(n272), .A2(n271), .Z(n426) );
  CKND2D0 U298 ( .A1(n423), .A2(n426), .ZN(n275) );
  CKND2D0 U299 ( .A1(n270), .A2(n269), .ZN(n336) );
  INVD0 U300 ( .I(n336), .ZN(n422) );
  CKND2D0 U301 ( .A1(n272), .A2(n271), .ZN(n425) );
  INVD0 U302 ( .I(n425), .ZN(n273) );
  AOI21D0 U303 ( .A1(n426), .A2(n422), .B(n273), .ZN(n274) );
  OAI21D1 U304 ( .A1(n335), .A2(n275), .B(n274), .ZN(n341) );
  FA1D0 U305 ( .A(partial_1_stage_1__11_), .B(partial_1_stage_3__11_), .CI(
        partial_1_stage_2__11_), .CO(n276), .S(n272) );
  OR2D0 U306 ( .A1(n277), .A2(n276), .Z(n339) );
  CKND2D0 U307 ( .A1(n277), .A2(n276), .ZN(n338) );
  INVD0 U308 ( .I(n338), .ZN(n278) );
  AOI21D1 U309 ( .A1(n341), .A2(n339), .B(n278), .ZN(n421) );
  FA1D0 U310 ( .A(partial_1_stage_1__12_), .B(partial_1_stage_3__12_), .CI(
        partial_1_stage_2__12_), .CO(n279), .S(n277) );
  NR2D0 U311 ( .A1(n280), .A2(n279), .ZN(n417) );
  OAI21D1 U312 ( .A1(n421), .A2(n417), .B(n418), .ZN(n345) );
  FA1D0 U313 ( .A(partial_1_stage_1__13_), .B(partial_1_stage_3__13_), .CI(
        partial_1_stage_2__13_), .CO(n281), .S(n280) );
  OR2D0 U314 ( .A1(n282), .A2(n281), .Z(n343) );
  INVD0 U315 ( .I(n342), .ZN(n283) );
  AOI21D1 U316 ( .A1(n345), .A2(n343), .B(n283), .ZN(n416) );
  FA1D0 U317 ( .A(partial_1_stage_1__14_), .B(partial_1_stage_3__14_), .CI(
        partial_1_stage_2__14_), .CO(n284), .S(n282) );
  NR2D0 U318 ( .A1(n285), .A2(n284), .ZN(n412) );
  OAI21D1 U319 ( .A1(n416), .A2(n412), .B(n413), .ZN(n349) );
  FA1D0 U320 ( .A(partial_1_stage_1__15_), .B(partial_1_stage_3__15_), .CI(
        partial_1_stage_2__15_), .CO(n286), .S(n285) );
  OR2D0 U321 ( .A1(n287), .A2(n286), .Z(n347) );
  AOI21D1 U322 ( .A1(n349), .A2(n347), .B(n288), .ZN(n411) );
  FA1D0 U323 ( .A(partial_1_stage_1__16_), .B(partial_1_stage_3__16_), .CI(
        partial_1_stage_2__16_), .CO(n289), .S(n287) );
  OAI21D1 U324 ( .A1(n411), .A2(n407), .B(n408), .ZN(n353) );
  FA1D0 U325 ( .A(partial_1_stage_1__17_), .B(partial_1_stage_3__17_), .CI(
        partial_1_stage_2__17_), .CO(n291), .S(n290) );
  AOI21D1 U326 ( .A1(n353), .A2(n351), .B(n293), .ZN(n406) );
  FA1D0 U327 ( .A(partial_1_stage_1__18_), .B(partial_1_stage_3__18_), .CI(
        partial_1_stage_2__18_), .CO(n294), .S(n292) );
  OAI21D1 U328 ( .A1(n406), .A2(n402), .B(n403), .ZN(n357) );
  FA1D0 U329 ( .A(partial_1_stage_1__19_), .B(partial_1_stage_3__19_), .CI(
        partial_1_stage_2__19_), .CO(n296), .S(n295) );
  AOI21D1 U330 ( .A1(n357), .A2(n355), .B(n298), .ZN(n401) );
  FA1D0 U331 ( .A(partial_1_stage_1__20_), .B(partial_1_stage_3__20_), .CI(
        partial_1_stage_2__20_), .CO(n299), .S(n297) );
  OAI21D1 U332 ( .A1(n401), .A2(n397), .B(n398), .ZN(n361) );
  FA1D0 U333 ( .A(partial_1_stage_1__21_), .B(partial_1_stage_3__21_), .CI(
        partial_1_stage_2__21_), .CO(n301), .S(n300) );
  AOI21D1 U334 ( .A1(n361), .A2(n359), .B(n303), .ZN(n396) );
  FA1D0 U335 ( .A(partial_1_stage_1__23_), .B(partial_1_stage_3__23_), .CI(
        partial_1_stage_2__23_), .CO(n380), .S(n305) );
  FA1D0 U336 ( .A(partial_1_stage_1__22_), .B(partial_1_stage_3__22_), .CI(
        partial_1_stage_2__22_), .CO(n304), .S(n302) );
  OAI21D1 U337 ( .A1(n396), .A2(n392), .B(n393), .ZN(n378) );
  FA1D0 U338 ( .A(partial_1_stage_1__25_), .B(partial_1_stage_3__25_), .CI(
        partial_1_stage_2__25_), .CO(n311), .S(n307) );
  FA1D0 U339 ( .A(n308), .B(n307), .CI(n306), .CO(n309), .S(scaled_value[17])
         );
  FA1D0 U340 ( .A(partial_1_stage_1__26_), .B(partial_1_stage_3__26_), .CI(
        partial_1_stage_2__26_), .CO(n314), .S(n310) );
  FA1D0 U341 ( .A(n311), .B(n310), .CI(n309), .CO(n312), .S(scaled_value[18])
         );
  FA1D0 U342 ( .A(partial_1_stage_1__27_), .B(partial_1_stage_3__27_), .CI(
        partial_1_stage_2__27_), .CO(n317), .S(n313) );
  FA1D0 U343 ( .A(n314), .B(n313), .CI(n312), .CO(n315), .S(scaled_value[19])
         );
  FA1D0 U344 ( .A(partial_1_stage_1__28_), .B(partial_1_stage_3__28_), .CI(
        partial_1_stage_2__28_), .CO(n320), .S(n316) );
  FA1D0 U345 ( .A(n317), .B(n316), .CI(n315), .CO(n318), .S(scaled_value[20])
         );
  FA1D0 U346 ( .A(partial_1_stage_1__29_), .B(partial_1_stage_3__29_), .CI(
        partial_1_stage_2__29_), .CO(n364), .S(n319) );
  FA1D0 U347 ( .A(n320), .B(n319), .CI(n318), .CO(n362), .S(scaled_value[21])
         );
  NR2D0 U348 ( .A1(n323), .A2(n321), .ZN(partial_1_3__6_) );
  NR2D0 U349 ( .A1(n323), .A2(n322), .ZN(partial_1_2__4_) );
  INVD0 U350 ( .I(n324), .ZN(n329) );
  INVD0 U351 ( .I(n328), .ZN(n325) );
  CKND2D0 U352 ( .A1(n325), .A2(n327), .ZN(n326) );
  XOR2D0 U353 ( .A1(n329), .A2(n326), .Z(scaled_value[0]) );
  OAI21D0 U354 ( .A1(n329), .A2(n328), .B(n327), .ZN(n334) );
  INVD0 U355 ( .I(n330), .ZN(n332) );
  CKND2D0 U356 ( .A1(n332), .A2(n331), .ZN(n333) );
  XNR2D0 U357 ( .A1(n334), .A2(n333), .ZN(scaled_value[1]) );
  INVD0 U358 ( .I(n335), .ZN(n424) );
  CKND2D0 U359 ( .A1(n423), .A2(n336), .ZN(n337) );
  XNR2D0 U360 ( .A1(n424), .A2(n337), .ZN(scaled_value[2]) );
  CKND2D0 U361 ( .A1(n339), .A2(n338), .ZN(n340) );
  XNR2D0 U362 ( .A1(n341), .A2(n340), .ZN(scaled_value[4]) );
  CKND2D0 U363 ( .A1(n343), .A2(n342), .ZN(n344) );
  XNR2D0 U364 ( .A1(n345), .A2(n344), .ZN(scaled_value[6]) );
  CKND2D0 U365 ( .A1(n347), .A2(n346), .ZN(n348) );
  XNR2D0 U366 ( .A1(n349), .A2(n348), .ZN(scaled_value[8]) );
  CKND2D0 U367 ( .A1(n351), .A2(n350), .ZN(n352) );
  XNR2D0 U368 ( .A1(n353), .A2(n352), .ZN(scaled_value[10]) );
  CKND2D0 U369 ( .A1(n355), .A2(n354), .ZN(n356) );
  XNR2D0 U370 ( .A1(n357), .A2(n356), .ZN(scaled_value[12]) );
  CKND2D0 U371 ( .A1(n359), .A2(n358), .ZN(n360) );
  XNR2D0 U372 ( .A1(n361), .A2(n360), .ZN(scaled_value[14]) );
  FA1D0 U373 ( .A(partial_1_stage_3__30_), .B(partial_1_stage_2__30_), .CI(n13), .CO(n367), .S(n363) );
  FA1D0 U374 ( .A(n364), .B(n363), .CI(n362), .CO(n365), .S(scaled_value[22])
         );
  FA1D0 U375 ( .A(n367), .B(n366), .CI(n365), .CO(n374), .S(scaled_value[23])
         );
  FA1D0 U376 ( .A(partial_1_stage_3__31_), .B(partial_1_stage_2__31_), .CI(
        partial_1_stage_1__30_), .CO(n368), .S(n366) );
  CKND2D0 U377 ( .A1(n373), .A2(n371), .ZN(n370) );
  INVD0 U378 ( .I(partial_1_stage_2__34_), .ZN(n382) );
  FA1D0 U379 ( .A(partial_1_stage_3__32_), .B(partial_1_stage_2__32_), .CI(
        partial_1_stage_1__30_), .CO(n377), .S(n369) );
  FA1D0 U380 ( .A(partial_1_stage_3__33_), .B(partial_1_stage_2__33_), .CI(
        partial_1_stage_1__30_), .CO(n385), .S(n376) );
  AO21D1 U381 ( .A1(n374), .A2(n373), .B(n372), .Z(n375) );
  FA1D0 U382 ( .A(n377), .B(n376), .CI(n375), .CO(n383), .S(scaled_value[25])
         );
  FA1D0 U383 ( .A(n380), .B(n379), .CI(n378), .CO(n306), .S(scaled_value[16])
         );
  INVD0 U384 ( .I(partial_1_stage_3__35_), .ZN(n388) );
  FA1D0 U385 ( .A(partial_1_stage_3__34_), .B(n382), .CI(n381), .CO(n387), .S(
        n384) );
  FA1D0 U386 ( .A(n385), .B(n384), .CI(n383), .CO(n386), .S(scaled_value[26])
         );
  FA1D0 U387 ( .A(n388), .B(n387), .CI(n386), .CO(n391), .S(scaled_value[27])
         );
  INVD0 U388 ( .I(partial_1_stage_3__36_), .ZN(n389) );
  XOR2D0 U389 ( .A1(n389), .A2(partial_1_stage_3__35_), .Z(n390) );
  CKXOR2D1 U390 ( .A1(n391), .A2(n390), .Z(scaled_value[28]) );
  INVD0 U391 ( .I(n392), .ZN(n394) );
  CKND2D0 U392 ( .A1(n394), .A2(n393), .ZN(n395) );
  XOR2D0 U393 ( .A1(n396), .A2(n395), .Z(scaled_value[15]) );
  INVD0 U394 ( .I(n397), .ZN(n399) );
  CKND2D0 U395 ( .A1(n399), .A2(n398), .ZN(n400) );
  XOR2D0 U396 ( .A1(n401), .A2(n400), .Z(scaled_value[13]) );
  INVD0 U397 ( .I(n402), .ZN(n404) );
  CKND2D0 U398 ( .A1(n404), .A2(n403), .ZN(n405) );
  XOR2D0 U399 ( .A1(n406), .A2(n405), .Z(scaled_value[11]) );
  INVD0 U400 ( .I(n407), .ZN(n409) );
  CKND2D0 U401 ( .A1(n409), .A2(n408), .ZN(n410) );
  XOR2D0 U402 ( .A1(n411), .A2(n410), .Z(scaled_value[9]) );
  INVD0 U403 ( .I(n412), .ZN(n414) );
  CKND2D0 U404 ( .A1(n414), .A2(n413), .ZN(n415) );
  XOR2D0 U405 ( .A1(n416), .A2(n415), .Z(scaled_value[7]) );
  INVD0 U406 ( .I(n417), .ZN(n419) );
  CKND2D0 U407 ( .A1(n419), .A2(n418), .ZN(n420) );
  XOR2D0 U408 ( .A1(n421), .A2(n420), .Z(scaled_value[5]) );
  AOI21D0 U409 ( .A1(n424), .A2(n423), .B(n422), .ZN(n428) );
  CKND2D0 U410 ( .A1(n426), .A2(n425), .ZN(n427) );
  XOR2D0 U411 ( .A1(n428), .A2(n427), .Z(scaled_value[3]) );
endmodule


module oadm_core_fixed_APPROX_LEVEL1 ( clk, x_mantissa, y_mantissa, 
        divide_mode, mantissa_value );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] mantissa_value;
  input clk, divide_mode;
  wire   divide_s1, divide_s2, divide_s3, divide_s4, divide_s5, N428, N429,
         N430, N431, N432, N433, N434, N435, N436, N437, N438, N439, N440,
         N441, N442, N443, N444, N445, N446, N447, N448, N449, N450, N451,
         N452, N453, N454, N455, N456, DP_OP_20J2_131_4019_n134, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n4280, n4290, n4300, n4310, n4320, n4330, n4340,
         n4350, n4360, n4370, n4380, n4390, n4400, n4410, n4420, n4430, n4440,
         n4450, n4460, n4470, n4480, n4490, n4500, n4510, n4520, n4530, n4540,
         n4550, n4560, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
         n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553,
         n554, n555, n556, n557, n558, n559, n560, n561, n562, n563, n564,
         n565, n566, n567, n568, n569, n570, n571, n572, n573, n574, n575,
         n576, n577, n578, n579, n580, n581, n582, n583, n584, n585, n586,
         n587, n588, n589, n590, n591, n592, n593, n594, n595, n596, n597,
         n598, n599, n600, n601, n602, n603, n604, n605, n606, n607, n608,
         n609, n610, n611, n612, n613, n614, n615, n616, n617, n618, n619,
         n620, n621, n622, n623, n624, n625, n626, n627, n628, n629, n630,
         n631, n632, n633, n634, n635, n636, n637, n638, n639, n640, n641,
         n642, n643, n644, n645, n646, n647, n648, n649, n650, n651, n652,
         n653, n654, n655, n656, n657, n658, n659, n660, n661, n662, n663,
         n664, n665, n666, n667, n668, n669, n670, n671, n672, n673, n674,
         n675, n676, n677, n678, n679, n680, n681, n682, n683, n684, n685,
         n686, n687, n688, n689, n690, n691, n692, n693, n694, n695, n696,
         n697, n698, n699, n700, n701, n702, n703, n704, n705, n706, n707,
         n708, n709, n710, n711, n712, n713, n714, n715, n716, n717, n718,
         n719, n720, n721, n722, n723, n724, n725, n726, n727, n728, n729,
         n730, n731, n732, n733, n734, n735, n736, n737, n738, n739, n740,
         n741, n742, n743, n744, n745, n746, n747, n748, n749, n750, n751,
         n752, n753, n754, n755, n756, n757, n758, n759, n760, n761, n762,
         n763, n764, n765, n766, n767, n768, n769, n770, n771, n772, n773,
         n774, n775, n776, n777, n778, n779, n780, n781, n782, n783, n784,
         n785, n786, n787, n788, n789, n790, n791, n792, n793, n794, n795,
         n796, n797, n798, n799, n800, n801, n802, n803, n804, n805, n806,
         n807, n808, n809, n810, n811, n812, n813, n814, n815, n816, n817,
         n818, n819, n820, n821, n822, n823, n824, n825, n826, n827, n828,
         n829, n830, n831, n832, n833, n834, n835, n836, n837, n838, n839,
         n840, n841, n842, n843, n844, n845, n846, n847, n848, n849, n850,
         n851, n852, n853, n854, n855, n856, n857, n858, n859, n860, n861,
         n862, n863, n864, n865, n866, n867, n868, n869, n870, n871, n872,
         n873, n874, n875, n876, n877, n878, n879, n880, n881, n882, n883,
         n884, n885, n886, n887, n888, n889, n890, n891, n892, n893, n894,
         n895, n896, n897, n898, n899, n900, n901, n902, n903, n904, n905,
         n906, n907, n908, n909, n910, n911, n912, n913, n914, n915, n916,
         n917, n918, n919, n920, n921, n922, n923, n924, n925, n926, n927,
         n928, n929, n930, n931, n932, n933, n934, n935, n936, n937, n938,
         n939, n940, n941, n942, n943, n944, n945, n946, n947, n948, n949,
         n950, n951, n952, n953, n954, n955, n956, n957, n958, n959, n960,
         n961, n962, n963, n964, n965, n966, n967, n968, n969, n970, n971,
         n972, n973, n974, n975, n976, n977, n978, n979, n980, n981, n982,
         n983, n984, n985, n986, n987, n988, n989, n990, n991, n992, n993,
         n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004,
         n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014,
         n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024,
         n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034,
         n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044,
         n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054,
         n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064,
         n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074,
         n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084,
         n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094,
         n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104,
         n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114,
         n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124,
         n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134,
         n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144,
         n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154,
         n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164,
         n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174,
         n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184,
         n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194,
         n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204,
         n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214,
         n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224,
         n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234,
         n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244,
         n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254,
         n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264,
         n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273, n1274,
         n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284,
         n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294,
         n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304,
         n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314,
         n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324,
         n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334,
         n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344,
         n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354,
         n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364,
         n1365, n1366, n1367, n1368, n1369, n1370, n1371;
  wire   [5:4] coefficient_input;
  wire   [24:0] base_c1;
  wire   [28:0] d1_c1;
  wire   [24:0] base_s1;
  wire   [28:0] d1_s1;
  wire   [5:4] coefficient_s1;
  wire   [24:0] base_s2;
  wire   [28:0] d1_s2;
  wire   [5:4] coefficient_s2;
  wire   [24:0] base_s3;
  wire   [28:0] d1_s3;
  wire   [5:4] coefficient_s3;
  wire   [28:0] sum0;
  wire   [25:1] carry0;
  wire   [28:0] sum1;
  wire   [26:2] carry1;
  wire   [28:3] sum2;
  wire   [27:3] carry2;
  wire   [28:0] shared_comb;
  wire   [28:0] shared_s4;
  wire   [5:4] coefficient_s4;
  wire   [28:0] divided_s5;
  wire   [28:0] shared_s5;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17;

  recip_lut_fixed_APPROX_LEVEL1 reciprocal_lut ( .y_fraction_msb({n64, 1'b0, 
        1'b0, 1'b0}), .reciprocal_square({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, coefficient_input, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5}) );
  csa3_WIDTH29_2 csa0 ( .input_a({1'b0, 1'b0, 1'b0, 1'b0, base_s3}), .input_b(
        d1_s3), .input_c({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sum(sum0), .carry({
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, carry0, SYNOPSYS_UNCONNECTED__9}) );
  csa3_WIDTH29_1 csa1 ( .input_a(sum0), .input_b({1'b0, 1'b0, 1'b0, carry0, 
        1'b0}), .input_c({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sum(sum1), .carry({
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, carry1, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13}) );
  csa3_WIDTH29_0 csa2 ( .input_a(sum1), .input_b({1'b0, 1'b0, carry1, 1'b0, 
        1'b0}), .input_c({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sum({sum2, 
        shared_comb[2:0]}), .carry({SYNOPSYS_UNCONNECTED__14, carry2, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17}) );
  sa_scale_VALUE_WIDTH29_COEFF_WIDTH8 division_scale ( .clk(clk), .value(
        shared_s4), .coefficient({coefficient_s4, coefficient_s4, 1'b0, 1'b0, 
        1'b0, 1'b0}), .scaled_value(divided_s5) );
  DFQD1 base_s1_reg_24_ ( .D(base_c1[24]), .CP(clk), .Q(base_s1[24]) );
  DFQD1 base_s1_reg_23_ ( .D(base_c1[23]), .CP(clk), .Q(base_s1[23]) );
  DFQD1 base_s1_reg_22_ ( .D(base_c1[22]), .CP(clk), .Q(base_s1[22]) );
  DFQD1 base_s1_reg_21_ ( .D(base_c1[21]), .CP(clk), .Q(base_s1[21]) );
  DFQD1 base_s1_reg_20_ ( .D(base_c1[20]), .CP(clk), .Q(base_s1[20]) );
  DFQD1 base_s1_reg_19_ ( .D(base_c1[19]), .CP(clk), .Q(base_s1[19]) );
  DFQD1 base_s1_reg_18_ ( .D(base_c1[18]), .CP(clk), .Q(base_s1[18]) );
  DFQD1 base_s1_reg_17_ ( .D(base_c1[17]), .CP(clk), .Q(base_s1[17]) );
  DFQD1 base_s1_reg_16_ ( .D(base_c1[16]), .CP(clk), .Q(base_s1[16]) );
  DFQD1 base_s1_reg_15_ ( .D(base_c1[15]), .CP(clk), .Q(base_s1[15]) );
  DFQD1 base_s1_reg_14_ ( .D(base_c1[14]), .CP(clk), .Q(base_s1[14]) );
  DFQD1 base_s1_reg_13_ ( .D(base_c1[13]), .CP(clk), .Q(base_s1[13]) );
  DFQD1 base_s1_reg_12_ ( .D(base_c1[12]), .CP(clk), .Q(base_s1[12]) );
  DFQD1 base_s1_reg_11_ ( .D(base_c1[11]), .CP(clk), .Q(base_s1[11]) );
  DFQD1 base_s1_reg_10_ ( .D(base_c1[10]), .CP(clk), .Q(base_s1[10]) );
  DFQD1 base_s1_reg_9_ ( .D(base_c1[9]), .CP(clk), .Q(base_s1[9]) );
  DFQD1 base_s1_reg_8_ ( .D(base_c1[8]), .CP(clk), .Q(base_s1[8]) );
  DFQD1 base_s1_reg_7_ ( .D(base_c1[7]), .CP(clk), .Q(base_s1[7]) );
  DFQD1 base_s1_reg_6_ ( .D(base_c1[6]), .CP(clk), .Q(base_s1[6]) );
  DFQD1 base_s1_reg_5_ ( .D(base_c1[5]), .CP(clk), .Q(base_s1[5]) );
  DFQD1 base_s1_reg_4_ ( .D(base_c1[4]), .CP(clk), .Q(base_s1[4]) );
  DFQD1 base_s1_reg_3_ ( .D(base_c1[3]), .CP(clk), .Q(base_s1[3]) );
  DFQD1 base_s1_reg_2_ ( .D(base_c1[2]), .CP(clk), .Q(base_s1[2]) );
  DFQD1 base_s1_reg_1_ ( .D(base_c1[1]), .CP(clk), .Q(base_s1[1]) );
  DFQD1 base_s1_reg_0_ ( .D(base_c1[0]), .CP(clk), .Q(base_s1[0]) );
  DFQD1 d1_s1_reg_28_ ( .D(d1_c1[28]), .CP(clk), .Q(d1_s1[28]) );
  DFQD1 d1_s1_reg_27_ ( .D(d1_c1[27]), .CP(clk), .Q(d1_s1[27]) );
  DFQD1 d1_s1_reg_26_ ( .D(d1_c1[26]), .CP(clk), .Q(d1_s1[26]) );
  DFQD1 d1_s1_reg_25_ ( .D(d1_c1[25]), .CP(clk), .Q(d1_s1[25]) );
  DFQD1 d1_s1_reg_24_ ( .D(d1_c1[24]), .CP(clk), .Q(d1_s1[24]) );
  DFQD1 d1_s1_reg_23_ ( .D(d1_c1[23]), .CP(clk), .Q(d1_s1[23]) );
  DFQD1 d1_s1_reg_22_ ( .D(d1_c1[22]), .CP(clk), .Q(d1_s1[22]) );
  DFQD1 d1_s1_reg_21_ ( .D(d1_c1[21]), .CP(clk), .Q(d1_s1[21]) );
  DFQD1 d1_s1_reg_20_ ( .D(d1_c1[20]), .CP(clk), .Q(d1_s1[20]) );
  DFQD1 d1_s1_reg_19_ ( .D(d1_c1[19]), .CP(clk), .Q(d1_s1[19]) );
  DFQD1 d1_s1_reg_18_ ( .D(d1_c1[18]), .CP(clk), .Q(d1_s1[18]) );
  DFQD1 d1_s1_reg_17_ ( .D(d1_c1[17]), .CP(clk), .Q(d1_s1[17]) );
  DFQD1 d1_s1_reg_16_ ( .D(d1_c1[16]), .CP(clk), .Q(d1_s1[16]) );
  DFQD1 d1_s1_reg_15_ ( .D(d1_c1[15]), .CP(clk), .Q(d1_s1[15]) );
  DFQD1 d1_s1_reg_14_ ( .D(d1_c1[14]), .CP(clk), .Q(d1_s1[14]) );
  DFQD1 d1_s1_reg_13_ ( .D(d1_c1[13]), .CP(clk), .Q(d1_s1[13]) );
  DFQD1 d1_s1_reg_12_ ( .D(d1_c1[12]), .CP(clk), .Q(d1_s1[12]) );
  DFQD1 d1_s1_reg_11_ ( .D(d1_c1[11]), .CP(clk), .Q(d1_s1[11]) );
  DFQD1 d1_s1_reg_10_ ( .D(d1_c1[10]), .CP(clk), .Q(d1_s1[10]) );
  DFQD1 d1_s1_reg_9_ ( .D(d1_c1[9]), .CP(clk), .Q(d1_s1[9]) );
  DFQD1 d1_s1_reg_8_ ( .D(d1_c1[8]), .CP(clk), .Q(d1_s1[8]) );
  DFQD1 d1_s1_reg_7_ ( .D(d1_c1[7]), .CP(clk), .Q(d1_s1[7]) );
  DFQD1 d1_s1_reg_6_ ( .D(d1_c1[6]), .CP(clk), .Q(d1_s1[6]) );
  DFQD1 d1_s1_reg_5_ ( .D(d1_c1[5]), .CP(clk), .Q(d1_s1[5]) );
  DFQD1 d1_s1_reg_4_ ( .D(d1_c1[4]), .CP(clk), .Q(d1_s1[4]) );
  DFQD1 d1_s1_reg_3_ ( .D(d1_c1[3]), .CP(clk), .Q(d1_s1[3]) );
  DFQD1 d1_s1_reg_2_ ( .D(d1_c1[2]), .CP(clk), .Q(d1_s1[2]) );
  DFQD1 d1_s1_reg_1_ ( .D(d1_c1[1]), .CP(clk), .Q(d1_s1[1]) );
  DFQD1 d1_s1_reg_0_ ( .D(d1_c1[0]), .CP(clk), .Q(d1_s1[0]) );
  DFQD1 coefficient_s1_reg_5_ ( .D(coefficient_input[5]), .CP(clk), .Q(
        coefficient_s1[5]) );
  DFQD1 coefficient_s1_reg_4_ ( .D(coefficient_input[4]), .CP(clk), .Q(
        coefficient_s1[4]) );
  DFQD1 divide_s1_reg ( .D(n1371), .CP(clk), .Q(divide_s1) );
  DFQD1 base_s2_reg_24_ ( .D(base_s1[24]), .CP(clk), .Q(base_s2[24]) );
  DFQD1 base_s2_reg_23_ ( .D(base_s1[23]), .CP(clk), .Q(base_s2[23]) );
  DFQD1 base_s2_reg_22_ ( .D(base_s1[22]), .CP(clk), .Q(base_s2[22]) );
  DFQD1 base_s2_reg_21_ ( .D(base_s1[21]), .CP(clk), .Q(base_s2[21]) );
  DFQD1 base_s2_reg_20_ ( .D(base_s1[20]), .CP(clk), .Q(base_s2[20]) );
  DFQD1 base_s2_reg_19_ ( .D(base_s1[19]), .CP(clk), .Q(base_s2[19]) );
  DFQD1 base_s2_reg_18_ ( .D(base_s1[18]), .CP(clk), .Q(base_s2[18]) );
  DFQD1 base_s2_reg_17_ ( .D(base_s1[17]), .CP(clk), .Q(base_s2[17]) );
  DFQD1 base_s2_reg_16_ ( .D(base_s1[16]), .CP(clk), .Q(base_s2[16]) );
  DFQD1 base_s2_reg_15_ ( .D(base_s1[15]), .CP(clk), .Q(base_s2[15]) );
  DFQD1 base_s2_reg_14_ ( .D(base_s1[14]), .CP(clk), .Q(base_s2[14]) );
  DFQD1 base_s2_reg_13_ ( .D(base_s1[13]), .CP(clk), .Q(base_s2[13]) );
  DFQD1 base_s2_reg_12_ ( .D(base_s1[12]), .CP(clk), .Q(base_s2[12]) );
  DFQD1 base_s2_reg_11_ ( .D(base_s1[11]), .CP(clk), .Q(base_s2[11]) );
  DFQD1 base_s2_reg_10_ ( .D(base_s1[10]), .CP(clk), .Q(base_s2[10]) );
  DFQD1 base_s2_reg_9_ ( .D(base_s1[9]), .CP(clk), .Q(base_s2[9]) );
  DFQD1 base_s2_reg_8_ ( .D(base_s1[8]), .CP(clk), .Q(base_s2[8]) );
  DFQD1 base_s2_reg_7_ ( .D(base_s1[7]), .CP(clk), .Q(base_s2[7]) );
  DFQD1 base_s2_reg_6_ ( .D(base_s1[6]), .CP(clk), .Q(base_s2[6]) );
  DFQD1 base_s2_reg_5_ ( .D(base_s1[5]), .CP(clk), .Q(base_s2[5]) );
  DFQD1 base_s2_reg_4_ ( .D(base_s1[4]), .CP(clk), .Q(base_s2[4]) );
  DFQD1 base_s2_reg_3_ ( .D(base_s1[3]), .CP(clk), .Q(base_s2[3]) );
  DFQD1 base_s2_reg_2_ ( .D(base_s1[2]), .CP(clk), .Q(base_s2[2]) );
  DFQD1 base_s2_reg_1_ ( .D(base_s1[1]), .CP(clk), .Q(base_s2[1]) );
  DFQD1 base_s2_reg_0_ ( .D(base_s1[0]), .CP(clk), .Q(base_s2[0]) );
  DFQD1 d1_s2_reg_28_ ( .D(d1_s1[28]), .CP(clk), .Q(d1_s2[28]) );
  DFQD1 d1_s2_reg_27_ ( .D(d1_s1[27]), .CP(clk), .Q(d1_s2[27]) );
  DFQD1 d1_s2_reg_26_ ( .D(d1_s1[26]), .CP(clk), .Q(d1_s2[26]) );
  DFQD1 d1_s2_reg_25_ ( .D(d1_s1[25]), .CP(clk), .Q(d1_s2[25]) );
  DFQD1 d1_s2_reg_24_ ( .D(d1_s1[24]), .CP(clk), .Q(d1_s2[24]) );
  DFQD1 d1_s2_reg_23_ ( .D(d1_s1[23]), .CP(clk), .Q(d1_s2[23]) );
  DFQD1 d1_s2_reg_22_ ( .D(d1_s1[22]), .CP(clk), .Q(d1_s2[22]) );
  DFQD1 d1_s2_reg_21_ ( .D(d1_s1[21]), .CP(clk), .Q(d1_s2[21]) );
  DFQD1 d1_s2_reg_20_ ( .D(d1_s1[20]), .CP(clk), .Q(d1_s2[20]) );
  DFQD1 d1_s2_reg_19_ ( .D(d1_s1[19]), .CP(clk), .Q(d1_s2[19]) );
  DFQD1 d1_s2_reg_18_ ( .D(d1_s1[18]), .CP(clk), .Q(d1_s2[18]) );
  DFQD1 d1_s2_reg_17_ ( .D(d1_s1[17]), .CP(clk), .Q(d1_s2[17]) );
  DFQD1 d1_s2_reg_16_ ( .D(d1_s1[16]), .CP(clk), .Q(d1_s2[16]) );
  DFQD1 d1_s2_reg_15_ ( .D(d1_s1[15]), .CP(clk), .Q(d1_s2[15]) );
  DFQD1 d1_s2_reg_14_ ( .D(d1_s1[14]), .CP(clk), .Q(d1_s2[14]) );
  DFQD1 d1_s2_reg_13_ ( .D(d1_s1[13]), .CP(clk), .Q(d1_s2[13]) );
  DFQD1 d1_s2_reg_12_ ( .D(d1_s1[12]), .CP(clk), .Q(d1_s2[12]) );
  DFQD1 d1_s2_reg_11_ ( .D(d1_s1[11]), .CP(clk), .Q(d1_s2[11]) );
  DFQD1 d1_s2_reg_10_ ( .D(d1_s1[10]), .CP(clk), .Q(d1_s2[10]) );
  DFQD1 d1_s2_reg_9_ ( .D(d1_s1[9]), .CP(clk), .Q(d1_s2[9]) );
  DFQD1 d1_s2_reg_8_ ( .D(d1_s1[8]), .CP(clk), .Q(d1_s2[8]) );
  DFQD1 d1_s2_reg_7_ ( .D(d1_s1[7]), .CP(clk), .Q(d1_s2[7]) );
  DFQD1 d1_s2_reg_6_ ( .D(d1_s1[6]), .CP(clk), .Q(d1_s2[6]) );
  DFQD1 d1_s2_reg_5_ ( .D(d1_s1[5]), .CP(clk), .Q(d1_s2[5]) );
  DFQD1 d1_s2_reg_4_ ( .D(d1_s1[4]), .CP(clk), .Q(d1_s2[4]) );
  DFQD1 d1_s2_reg_3_ ( .D(d1_s1[3]), .CP(clk), .Q(d1_s2[3]) );
  DFQD1 d1_s2_reg_2_ ( .D(d1_s1[2]), .CP(clk), .Q(d1_s2[2]) );
  DFQD1 d1_s2_reg_1_ ( .D(d1_s1[1]), .CP(clk), .Q(d1_s2[1]) );
  DFQD1 d1_s2_reg_0_ ( .D(d1_s1[0]), .CP(clk), .Q(d1_s2[0]) );
  DFQD1 coefficient_s2_reg_5_ ( .D(coefficient_s1[5]), .CP(clk), .Q(
        coefficient_s2[5]) );
  DFQD1 coefficient_s2_reg_4_ ( .D(coefficient_s1[4]), .CP(clk), .Q(
        coefficient_s2[4]) );
  DFQD1 divide_s2_reg ( .D(divide_s1), .CP(clk), .Q(divide_s2) );
  DFQD1 base_s3_reg_24_ ( .D(base_s2[24]), .CP(clk), .Q(base_s3[24]) );
  DFQD1 base_s3_reg_23_ ( .D(base_s2[23]), .CP(clk), .Q(base_s3[23]) );
  DFQD1 base_s3_reg_22_ ( .D(base_s2[22]), .CP(clk), .Q(base_s3[22]) );
  DFQD1 base_s3_reg_21_ ( .D(base_s2[21]), .CP(clk), .Q(base_s3[21]) );
  DFQD1 base_s3_reg_20_ ( .D(base_s2[20]), .CP(clk), .Q(base_s3[20]) );
  DFQD1 base_s3_reg_19_ ( .D(base_s2[19]), .CP(clk), .Q(base_s3[19]) );
  DFQD1 base_s3_reg_18_ ( .D(base_s2[18]), .CP(clk), .Q(base_s3[18]) );
  DFQD1 base_s3_reg_17_ ( .D(base_s2[17]), .CP(clk), .Q(base_s3[17]) );
  DFQD1 base_s3_reg_16_ ( .D(base_s2[16]), .CP(clk), .Q(base_s3[16]) );
  DFQD1 base_s3_reg_15_ ( .D(base_s2[15]), .CP(clk), .Q(base_s3[15]) );
  DFQD1 base_s3_reg_14_ ( .D(base_s2[14]), .CP(clk), .Q(base_s3[14]) );
  DFQD1 base_s3_reg_13_ ( .D(base_s2[13]), .CP(clk), .Q(base_s3[13]) );
  DFQD1 base_s3_reg_12_ ( .D(base_s2[12]), .CP(clk), .Q(base_s3[12]) );
  DFQD1 base_s3_reg_11_ ( .D(base_s2[11]), .CP(clk), .Q(base_s3[11]) );
  DFQD1 base_s3_reg_10_ ( .D(base_s2[10]), .CP(clk), .Q(base_s3[10]) );
  DFQD1 base_s3_reg_9_ ( .D(base_s2[9]), .CP(clk), .Q(base_s3[9]) );
  DFQD1 base_s3_reg_8_ ( .D(base_s2[8]), .CP(clk), .Q(base_s3[8]) );
  DFQD1 base_s3_reg_7_ ( .D(base_s2[7]), .CP(clk), .Q(base_s3[7]) );
  DFQD1 base_s3_reg_6_ ( .D(base_s2[6]), .CP(clk), .Q(base_s3[6]) );
  DFQD1 base_s3_reg_5_ ( .D(base_s2[5]), .CP(clk), .Q(base_s3[5]) );
  DFQD1 base_s3_reg_4_ ( .D(base_s2[4]), .CP(clk), .Q(base_s3[4]) );
  DFQD1 base_s3_reg_3_ ( .D(base_s2[3]), .CP(clk), .Q(base_s3[3]) );
  DFQD1 base_s3_reg_2_ ( .D(base_s2[2]), .CP(clk), .Q(base_s3[2]) );
  DFQD1 base_s3_reg_1_ ( .D(base_s2[1]), .CP(clk), .Q(base_s3[1]) );
  DFQD1 base_s3_reg_0_ ( .D(base_s2[0]), .CP(clk), .Q(base_s3[0]) );
  DFQD1 d1_s3_reg_28_ ( .D(d1_s2[28]), .CP(clk), .Q(d1_s3[28]) );
  DFQD1 d1_s3_reg_27_ ( .D(d1_s2[27]), .CP(clk), .Q(d1_s3[27]) );
  DFQD1 d1_s3_reg_26_ ( .D(d1_s2[26]), .CP(clk), .Q(d1_s3[26]) );
  DFQD1 d1_s3_reg_25_ ( .D(d1_s2[25]), .CP(clk), .Q(d1_s3[25]) );
  DFQD1 d1_s3_reg_24_ ( .D(d1_s2[24]), .CP(clk), .Q(d1_s3[24]) );
  DFQD1 d1_s3_reg_23_ ( .D(d1_s2[23]), .CP(clk), .Q(d1_s3[23]) );
  DFQD1 d1_s3_reg_22_ ( .D(d1_s2[22]), .CP(clk), .Q(d1_s3[22]) );
  DFQD1 d1_s3_reg_21_ ( .D(d1_s2[21]), .CP(clk), .Q(d1_s3[21]) );
  DFQD1 d1_s3_reg_20_ ( .D(d1_s2[20]), .CP(clk), .Q(d1_s3[20]) );
  DFQD1 d1_s3_reg_19_ ( .D(d1_s2[19]), .CP(clk), .Q(d1_s3[19]) );
  DFQD1 d1_s3_reg_18_ ( .D(d1_s2[18]), .CP(clk), .Q(d1_s3[18]) );
  DFQD1 d1_s3_reg_17_ ( .D(d1_s2[17]), .CP(clk), .Q(d1_s3[17]) );
  DFQD1 d1_s3_reg_16_ ( .D(d1_s2[16]), .CP(clk), .Q(d1_s3[16]) );
  DFQD1 d1_s3_reg_15_ ( .D(d1_s2[15]), .CP(clk), .Q(d1_s3[15]) );
  DFQD1 d1_s3_reg_14_ ( .D(d1_s2[14]), .CP(clk), .Q(d1_s3[14]) );
  DFQD1 d1_s3_reg_13_ ( .D(d1_s2[13]), .CP(clk), .Q(d1_s3[13]) );
  DFQD1 d1_s3_reg_12_ ( .D(d1_s2[12]), .CP(clk), .Q(d1_s3[12]) );
  DFQD1 d1_s3_reg_11_ ( .D(d1_s2[11]), .CP(clk), .Q(d1_s3[11]) );
  DFQD1 d1_s3_reg_10_ ( .D(d1_s2[10]), .CP(clk), .Q(d1_s3[10]) );
  DFQD1 d1_s3_reg_9_ ( .D(d1_s2[9]), .CP(clk), .Q(d1_s3[9]) );
  DFQD1 d1_s3_reg_8_ ( .D(d1_s2[8]), .CP(clk), .Q(d1_s3[8]) );
  DFQD1 d1_s3_reg_7_ ( .D(d1_s2[7]), .CP(clk), .Q(d1_s3[7]) );
  DFQD1 d1_s3_reg_6_ ( .D(d1_s2[6]), .CP(clk), .Q(d1_s3[6]) );
  DFQD1 d1_s3_reg_5_ ( .D(d1_s2[5]), .CP(clk), .Q(d1_s3[5]) );
  DFQD1 d1_s3_reg_4_ ( .D(d1_s2[4]), .CP(clk), .Q(d1_s3[4]) );
  DFQD1 d1_s3_reg_2_ ( .D(d1_s2[2]), .CP(clk), .Q(d1_s3[2]) );
  DFQD1 d1_s3_reg_1_ ( .D(d1_s2[1]), .CP(clk), .Q(d1_s3[1]) );
  DFQD1 d1_s3_reg_0_ ( .D(d1_s2[0]), .CP(clk), .Q(d1_s3[0]) );
  DFQD1 coefficient_s3_reg_5_ ( .D(coefficient_s2[5]), .CP(clk), .Q(
        coefficient_s3[5]) );
  DFQD1 coefficient_s3_reg_4_ ( .D(coefficient_s2[4]), .CP(clk), .Q(
        coefficient_s3[4]) );
  DFQD1 divide_s3_reg ( .D(divide_s2), .CP(clk), .Q(divide_s3) );
  DFQD1 shared_s4_reg_28_ ( .D(shared_comb[28]), .CP(clk), .Q(shared_s4[28])
         );
  DFQD1 shared_s4_reg_27_ ( .D(shared_comb[27]), .CP(clk), .Q(shared_s4[27])
         );
  DFQD1 shared_s4_reg_26_ ( .D(shared_comb[26]), .CP(clk), .Q(shared_s4[26])
         );
  DFQD1 shared_s4_reg_25_ ( .D(shared_comb[25]), .CP(clk), .Q(shared_s4[25])
         );
  DFQD1 shared_s4_reg_24_ ( .D(shared_comb[24]), .CP(clk), .Q(shared_s4[24])
         );
  DFQD1 shared_s4_reg_23_ ( .D(shared_comb[23]), .CP(clk), .Q(shared_s4[23])
         );
  DFQD1 shared_s4_reg_22_ ( .D(shared_comb[22]), .CP(clk), .Q(shared_s4[22])
         );
  DFQD1 shared_s4_reg_21_ ( .D(shared_comb[21]), .CP(clk), .Q(shared_s4[21])
         );
  DFQD1 shared_s4_reg_20_ ( .D(shared_comb[20]), .CP(clk), .Q(shared_s4[20])
         );
  DFQD1 shared_s4_reg_19_ ( .D(shared_comb[19]), .CP(clk), .Q(shared_s4[19])
         );
  DFQD1 shared_s4_reg_18_ ( .D(shared_comb[18]), .CP(clk), .Q(shared_s4[18])
         );
  DFQD1 shared_s4_reg_17_ ( .D(shared_comb[17]), .CP(clk), .Q(shared_s4[17])
         );
  DFQD1 shared_s4_reg_16_ ( .D(shared_comb[16]), .CP(clk), .Q(shared_s4[16])
         );
  DFQD1 shared_s4_reg_15_ ( .D(shared_comb[15]), .CP(clk), .Q(shared_s4[15])
         );
  DFQD1 shared_s4_reg_14_ ( .D(shared_comb[14]), .CP(clk), .Q(shared_s4[14])
         );
  DFQD1 shared_s4_reg_13_ ( .D(shared_comb[13]), .CP(clk), .Q(shared_s4[13])
         );
  DFQD1 shared_s4_reg_12_ ( .D(shared_comb[12]), .CP(clk), .Q(shared_s4[12])
         );
  DFQD1 shared_s4_reg_11_ ( .D(shared_comb[11]), .CP(clk), .Q(shared_s4[11])
         );
  DFQD1 shared_s4_reg_10_ ( .D(shared_comb[10]), .CP(clk), .Q(shared_s4[10])
         );
  DFQD1 shared_s4_reg_9_ ( .D(shared_comb[9]), .CP(clk), .Q(shared_s4[9]) );
  DFQD1 shared_s4_reg_8_ ( .D(shared_comb[8]), .CP(clk), .Q(shared_s4[8]) );
  DFQD1 shared_s4_reg_7_ ( .D(shared_comb[7]), .CP(clk), .Q(shared_s4[7]) );
  DFQD1 shared_s4_reg_6_ ( .D(shared_comb[6]), .CP(clk), .Q(shared_s4[6]) );
  DFQD1 shared_s4_reg_5_ ( .D(shared_comb[5]), .CP(clk), .Q(shared_s4[5]) );
  DFQD1 shared_s4_reg_4_ ( .D(shared_comb[4]), .CP(clk), .Q(shared_s4[4]) );
  DFQD1 shared_s4_reg_3_ ( .D(shared_comb[3]), .CP(clk), .Q(shared_s4[3]) );
  DFQD1 shared_s4_reg_2_ ( .D(shared_comb[2]), .CP(clk), .Q(shared_s4[2]) );
  DFQD1 shared_s4_reg_1_ ( .D(shared_comb[1]), .CP(clk), .Q(shared_s4[1]) );
  DFQD1 shared_s4_reg_0_ ( .D(shared_comb[0]), .CP(clk), .Q(shared_s4[0]) );
  DFQD1 coefficient_s4_reg_5_ ( .D(coefficient_s3[5]), .CP(clk), .Q(
        coefficient_s4[5]) );
  DFQD1 coefficient_s4_reg_4_ ( .D(coefficient_s3[4]), .CP(clk), .Q(
        coefficient_s4[4]) );
  DFQD1 divide_s4_reg ( .D(divide_s3), .CP(clk), .Q(divide_s4) );
  DFQD1 shared_s5_reg_28_ ( .D(shared_s4[28]), .CP(clk), .Q(shared_s5[28]) );
  DFQD1 shared_s5_reg_27_ ( .D(shared_s4[27]), .CP(clk), .Q(shared_s5[27]) );
  DFQD1 shared_s5_reg_26_ ( .D(shared_s4[26]), .CP(clk), .Q(shared_s5[26]) );
  DFQD1 shared_s5_reg_25_ ( .D(shared_s4[25]), .CP(clk), .Q(shared_s5[25]) );
  DFQD1 shared_s5_reg_24_ ( .D(shared_s4[24]), .CP(clk), .Q(shared_s5[24]) );
  DFQD1 shared_s5_reg_23_ ( .D(shared_s4[23]), .CP(clk), .Q(shared_s5[23]) );
  DFQD1 shared_s5_reg_22_ ( .D(shared_s4[22]), .CP(clk), .Q(shared_s5[22]) );
  DFQD1 shared_s5_reg_21_ ( .D(shared_s4[21]), .CP(clk), .Q(shared_s5[21]) );
  DFQD1 shared_s5_reg_20_ ( .D(shared_s4[20]), .CP(clk), .Q(shared_s5[20]) );
  DFQD1 shared_s5_reg_19_ ( .D(shared_s4[19]), .CP(clk), .Q(shared_s5[19]) );
  DFQD1 shared_s5_reg_18_ ( .D(shared_s4[18]), .CP(clk), .Q(shared_s5[18]) );
  DFQD1 shared_s5_reg_17_ ( .D(shared_s4[17]), .CP(clk), .Q(shared_s5[17]) );
  DFQD1 shared_s5_reg_16_ ( .D(shared_s4[16]), .CP(clk), .Q(shared_s5[16]) );
  DFQD1 shared_s5_reg_15_ ( .D(shared_s4[15]), .CP(clk), .Q(shared_s5[15]) );
  DFQD1 shared_s5_reg_14_ ( .D(shared_s4[14]), .CP(clk), .Q(shared_s5[14]) );
  DFQD1 shared_s5_reg_13_ ( .D(shared_s4[13]), .CP(clk), .Q(shared_s5[13]) );
  DFQD1 shared_s5_reg_12_ ( .D(shared_s4[12]), .CP(clk), .Q(shared_s5[12]) );
  DFQD1 shared_s5_reg_11_ ( .D(shared_s4[11]), .CP(clk), .Q(shared_s5[11]) );
  DFQD1 shared_s5_reg_10_ ( .D(shared_s4[10]), .CP(clk), .Q(shared_s5[10]) );
  DFQD1 shared_s5_reg_9_ ( .D(shared_s4[9]), .CP(clk), .Q(shared_s5[9]) );
  DFQD1 shared_s5_reg_8_ ( .D(shared_s4[8]), .CP(clk), .Q(shared_s5[8]) );
  DFQD1 shared_s5_reg_7_ ( .D(shared_s4[7]), .CP(clk), .Q(shared_s5[7]) );
  DFQD1 shared_s5_reg_6_ ( .D(shared_s4[6]), .CP(clk), .Q(shared_s5[6]) );
  DFQD1 shared_s5_reg_5_ ( .D(shared_s4[5]), .CP(clk), .Q(shared_s5[5]) );
  DFQD1 shared_s5_reg_4_ ( .D(shared_s4[4]), .CP(clk), .Q(shared_s5[4]) );
  DFQD1 shared_s5_reg_3_ ( .D(shared_s4[3]), .CP(clk), .Q(shared_s5[3]) );
  DFQD1 shared_s5_reg_2_ ( .D(shared_s4[2]), .CP(clk), .Q(shared_s5[2]) );
  DFQD1 shared_s5_reg_1_ ( .D(shared_s4[1]), .CP(clk), .Q(shared_s5[1]) );
  DFQD1 shared_s5_reg_0_ ( .D(shared_s4[0]), .CP(clk), .Q(shared_s5[0]) );
  DFQD1 divide_s5_reg ( .D(divide_s4), .CP(clk), .Q(divide_s5) );
  DFQD1 mantissa_value_reg_28_ ( .D(N456), .CP(clk), .Q(mantissa_value[28]) );
  DFQD1 mantissa_value_reg_27_ ( .D(N455), .CP(clk), .Q(mantissa_value[27]) );
  DFQD1 mantissa_value_reg_26_ ( .D(N454), .CP(clk), .Q(mantissa_value[26]) );
  DFQD1 mantissa_value_reg_25_ ( .D(N453), .CP(clk), .Q(mantissa_value[25]) );
  DFQD1 mantissa_value_reg_24_ ( .D(N452), .CP(clk), .Q(mantissa_value[24]) );
  DFQD1 mantissa_value_reg_23_ ( .D(N451), .CP(clk), .Q(mantissa_value[23]) );
  DFQD1 mantissa_value_reg_22_ ( .D(N450), .CP(clk), .Q(mantissa_value[22]) );
  DFQD1 mantissa_value_reg_21_ ( .D(N449), .CP(clk), .Q(mantissa_value[21]) );
  DFQD1 mantissa_value_reg_20_ ( .D(N448), .CP(clk), .Q(mantissa_value[20]) );
  DFQD1 mantissa_value_reg_19_ ( .D(N447), .CP(clk), .Q(mantissa_value[19]) );
  DFQD1 mantissa_value_reg_18_ ( .D(N446), .CP(clk), .Q(mantissa_value[18]) );
  DFQD1 mantissa_value_reg_17_ ( .D(N445), .CP(clk), .Q(mantissa_value[17]) );
  DFQD1 mantissa_value_reg_16_ ( .D(N444), .CP(clk), .Q(mantissa_value[16]) );
  DFQD1 mantissa_value_reg_15_ ( .D(N443), .CP(clk), .Q(mantissa_value[15]) );
  DFQD1 mantissa_value_reg_14_ ( .D(N442), .CP(clk), .Q(mantissa_value[14]) );
  DFQD1 mantissa_value_reg_13_ ( .D(N441), .CP(clk), .Q(mantissa_value[13]) );
  DFQD1 mantissa_value_reg_12_ ( .D(N440), .CP(clk), .Q(mantissa_value[12]) );
  DFQD1 mantissa_value_reg_11_ ( .D(N439), .CP(clk), .Q(mantissa_value[11]) );
  DFQD1 mantissa_value_reg_10_ ( .D(N438), .CP(clk), .Q(mantissa_value[10]) );
  DFQD1 mantissa_value_reg_9_ ( .D(N437), .CP(clk), .Q(mantissa_value[9]) );
  DFQD1 mantissa_value_reg_8_ ( .D(N436), .CP(clk), .Q(mantissa_value[8]) );
  DFQD1 mantissa_value_reg_7_ ( .D(N435), .CP(clk), .Q(mantissa_value[7]) );
  DFQD1 mantissa_value_reg_6_ ( .D(N434), .CP(clk), .Q(mantissa_value[6]) );
  DFQD1 mantissa_value_reg_5_ ( .D(N433), .CP(clk), .Q(mantissa_value[5]) );
  DFQD1 mantissa_value_reg_4_ ( .D(N432), .CP(clk), .Q(mantissa_value[4]) );
  DFQD1 mantissa_value_reg_3_ ( .D(N431), .CP(clk), .Q(mantissa_value[3]) );
  DFQD1 mantissa_value_reg_2_ ( .D(N430), .CP(clk), .Q(mantissa_value[2]) );
  DFQD1 mantissa_value_reg_1_ ( .D(N429), .CP(clk), .Q(mantissa_value[1]) );
  DFQD1 mantissa_value_reg_0_ ( .D(N428), .CP(clk), .Q(mantissa_value[0]) );
  DFQD1 d1_s3_reg_3_ ( .D(d1_s2[3]), .CP(clk), .Q(d1_s3[3]) );
  MUX2D0 U3 ( .I0(n396), .I1(n395), .S(n169), .Z(n400) );
  INR2XD0 U4 ( .A1(n229), .B1(n230), .ZN(n223) );
  FA1D0 U5 ( .A(carry2[5]), .B(sum2[5]), .CI(n416), .CO(n1360), .S(
        shared_comb[5]) );
  CKND2D0 U6 ( .A1(n7), .A2(n88), .ZN(n121) );
  OAI21D0 U7 ( .A1(n489), .A2(n488), .B(n487), .ZN(n856) );
  INVD0 U8 ( .I(n885), .ZN(n806) );
  OAI21D0 U9 ( .A1(n75), .A2(n916), .B(n915), .ZN(n933) );
  INVD0 U10 ( .I(x_mantissa[5]), .ZN(n320) );
  CKAN2D0 U11 ( .A1(n156), .A2(n900), .Z(n102) );
  HA1D0 U12 ( .A(n181), .B(n180), .CO(n176), .S(n183) );
  INVD0 U13 ( .I(x_mantissa[0]), .ZN(n171) );
  INVD0 U14 ( .I(divide_mode), .ZN(n950) );
  INVD0 U15 ( .I(n4290), .ZN(n138) );
  INVD0 U16 ( .I(x_mantissa[12]), .ZN(n266) );
  INVD0 U17 ( .I(x_mantissa[16]), .ZN(n234) );
  INVD0 U18 ( .I(x_mantissa[19]), .ZN(n213) );
  CKND2D0 U19 ( .A1(n927), .A2(n26), .ZN(n976) );
  OAI21D0 U20 ( .A1(n898), .A2(n1021), .B(n1028), .ZN(n956) );
  CKBD1 U21 ( .I(n950), .Z(n4290) );
  INVD0 U22 ( .I(x_mantissa[22]), .ZN(n307) );
  INVD0 U23 ( .I(n63), .ZN(n182) );
  INVD0 U24 ( .I(n780), .ZN(n737) );
  INVD0 U25 ( .I(n1030), .ZN(n898) );
  OAI21D0 U26 ( .A1(n898), .A2(n840), .B(n839), .ZN(n967) );
  FA1D0 U27 ( .A(n1261), .B(n398), .CI(n397), .CO(n199), .S(n399) );
  INVD0 U28 ( .I(n69), .ZN(n198) );
  CKND2D0 U29 ( .A1(n984), .A2(n983), .ZN(n1165) );
  INVD0 U30 ( .I(n631), .ZN(n679) );
  INVD0 U31 ( .I(n1122), .ZN(n1175) );
  INVD0 U32 ( .I(n1112), .ZN(n1167) );
  INVD0 U33 ( .I(n1263), .ZN(n66) );
  INVD0 U34 ( .I(n1261), .ZN(n56) );
  INVD0 U35 ( .I(n56), .ZN(n57) );
  INVD0 U36 ( .I(n52), .ZN(n29) );
  INVD0 U37 ( .I(n50), .ZN(n52) );
  INVD0 U38 ( .I(DP_OP_20J2_131_4019_n134), .ZN(n63) );
  INVD0 U39 ( .I(n63), .ZN(n55) );
  INVD0 U40 ( .I(y_mantissa[22]), .ZN(DP_OP_20J2_131_4019_n134) );
  XNR2D0 U41 ( .A1(n403), .A2(n1257), .ZN(d1_c1[27]) );
  XNR2D0 U42 ( .A1(n1269), .A2(n1268), .ZN(d1_c1[21]) );
  OAI21D0 U43 ( .A1(n1153), .A2(n1152), .B(n1151), .ZN(n1157) );
  AOI21D1 U44 ( .A1(n78), .A2(n1091), .B(n1090), .ZN(n1107) );
  OR2D0 U45 ( .A1(n67), .A2(n1244), .Z(n82) );
  OR2D0 U46 ( .A1(n68), .A2(n1255), .Z(n81) );
  OR2D0 U47 ( .A1(n69), .A2(n1238), .Z(n83) );
  OR2D0 U48 ( .A1(n69), .A2(n1262), .Z(n80) );
  CKND2D0 U49 ( .A1(n1159), .A2(n1158), .ZN(n1160) );
  INVD0 U50 ( .I(n66), .ZN(n68) );
  ND2D0 U51 ( .A1(n1272), .A2(n1271), .ZN(n1274) );
  NR2D0 U52 ( .A1(n995), .A2(n1114), .ZN(n997) );
  ND2D0 U53 ( .A1(n1276), .A2(n1275), .ZN(n1278) );
  CKND2D0 U54 ( .A1(n1120), .A2(n1165), .ZN(n1121) );
  ND2D0 U55 ( .A1(n1281), .A2(n1280), .ZN(n1283) );
  NR2D0 U56 ( .A1(n1081), .A2(n1080), .ZN(n1108) );
  CKND2D0 U57 ( .A1(n1117), .A2(n1116), .ZN(n1118) );
  ND2D0 U58 ( .A1(n1120), .A2(n1169), .ZN(n1114) );
  ND2D0 U59 ( .A1(n1117), .A2(n1162), .ZN(n995) );
  CKND2D0 U60 ( .A1(n1133), .A2(n1132), .ZN(n1134) );
  OR2D1 U61 ( .A1(n392), .A2(n391), .Z(n1276) );
  CKND2D0 U62 ( .A1(n1155), .A2(n1110), .ZN(n1089) );
  CKND2D0 U63 ( .A1(n1187), .A2(n1186), .ZN(n1188) );
  NR2D0 U64 ( .A1(n1185), .A2(n1183), .ZN(n769) );
  ND2D0 U65 ( .A1(n992), .A2(n991), .ZN(n1116) );
  ND2D0 U66 ( .A1(n1155), .A2(n1154), .ZN(n1156) );
  CKND2D0 U67 ( .A1(n1110), .A2(n1151), .ZN(n1111) );
  CKND2D0 U68 ( .A1(n1169), .A2(n1168), .ZN(n1170) );
  OR2D0 U69 ( .A1(n992), .A2(n991), .Z(n1117) );
  CKND2D0 U70 ( .A1(n1162), .A2(n1161), .ZN(n1163) );
  CKND2D1 U71 ( .A1(n390), .A2(n389), .ZN(n1280) );
  OR2D0 U72 ( .A1(n990), .A2(n989), .Z(n1162) );
  CKND2D0 U73 ( .A1(n161), .A2(n394), .ZN(n165) );
  OAI21D0 U74 ( .A1(n1131), .A2(n1172), .B(n1132), .ZN(n1123) );
  NR2D0 U75 ( .A1(n1131), .A2(n1129), .ZN(n1124) );
  CKND2D0 U76 ( .A1(n1126), .A2(n1125), .ZN(n1127) );
  OR2D0 U77 ( .A1(n986), .A2(n985), .Z(n1169) );
  ND2D0 U78 ( .A1(n986), .A2(n985), .ZN(n1168) );
  ND2D0 U79 ( .A1(n1137), .A2(n1179), .ZN(n1183) );
  NR2XD0 U80 ( .A1(n390), .A2(n389), .ZN(n1279) );
  CKND2D0 U81 ( .A1(n1173), .A2(n1172), .ZN(n1174) );
  ND2D0 U82 ( .A1(n1285), .A2(n1284), .ZN(n1287) );
  ND2D0 U83 ( .A1(n1085), .A2(n1084), .ZN(n1154) );
  NR2D0 U84 ( .A1(n984), .A2(n983), .ZN(n1166) );
  CKND2D0 U85 ( .A1(n1137), .A2(n1176), .ZN(n1138) );
  AOI21D0 U86 ( .A1(n1179), .A2(n765), .B(n764), .ZN(n1182) );
  ND2D0 U87 ( .A1(n1105), .A2(n1104), .ZN(n1106) );
  ND2D0 U88 ( .A1(n869), .A2(n868), .ZN(n1132) );
  ND2D0 U89 ( .A1(n767), .A2(n766), .ZN(n1186) );
  CKND2D0 U90 ( .A1(n1103), .A2(n1102), .ZN(n1104) );
  CKND2D0 U91 ( .A1(n1179), .A2(n1178), .ZN(n1180) );
  ND2D0 U92 ( .A1(n871), .A2(n870), .ZN(n1125) );
  NR2D0 U93 ( .A1(n1083), .A2(n1082), .ZN(n1152) );
  OR2D1 U94 ( .A1(n387), .A2(n386), .Z(n1285) );
  CKND2D1 U95 ( .A1(n387), .A2(n386), .ZN(n1284) );
  ND2D0 U96 ( .A1(n1250), .A2(n1249), .ZN(n1252) );
  NR2D0 U97 ( .A1(n761), .A2(n760), .ZN(n1177) );
  AOI21D0 U98 ( .A1(n967), .A2(n966), .B(n965), .ZN(n972) );
  CKND2D0 U99 ( .A1(n1142), .A2(n1141), .ZN(n1143) );
  INVD1 U100 ( .I(n956), .ZN(n979) );
  ND2D0 U101 ( .A1(n763), .A2(n762), .ZN(n1178) );
  INVD1 U102 ( .I(n1243), .ZN(n1233) );
  NR2D0 U103 ( .A1(n867), .A2(n866), .ZN(n1129) );
  ND2D0 U104 ( .A1(n1289), .A2(n1288), .ZN(n1291) );
  ND2D0 U105 ( .A1(n1294), .A2(n1293), .ZN(n1296) );
  ND2D0 U106 ( .A1(n756), .A2(n755), .ZN(n1141) );
  INVD0 U107 ( .I(n1288), .ZN(n383) );
  NR2XD0 U108 ( .A1(n385), .A2(n384), .ZN(n1248) );
  ND2D0 U109 ( .A1(n731), .A2(n730), .ZN(n1198) );
  NR2D0 U110 ( .A1(n731), .A2(n730), .ZN(n1197) );
  ND2D0 U111 ( .A1(n754), .A2(n753), .ZN(n1190) );
  CKND2D1 U112 ( .A1(n382), .A2(n381), .ZN(n1288) );
  ND2D0 U113 ( .A1(n729), .A2(n728), .ZN(n1194) );
  ND2D0 U114 ( .A1(n1298), .A2(n1297), .ZN(n1300) );
  INVD0 U115 ( .I(n1297), .ZN(n378) );
  CKND2D1 U116 ( .A1(n380), .A2(n379), .ZN(n1293) );
  NR2D0 U117 ( .A1(n1027), .A2(n1021), .ZN(n1031) );
  ND2D0 U118 ( .A1(n1303), .A2(n1302), .ZN(n1305) );
  INVD0 U119 ( .I(n216), .ZN(n158) );
  NR2XD0 U120 ( .A1(n380), .A2(n379), .ZN(n1292) );
  XOR2D0 U121 ( .A1(n218), .A2(n216), .Z(n217) );
  NR2D0 U122 ( .A1(n729), .A2(n728), .ZN(n1195) );
  CKND2D0 U123 ( .A1(n966), .A2(n964), .ZN(n863) );
  CKND2D1 U124 ( .A1(n377), .A2(n376), .ZN(n1297) );
  CKND2D0 U125 ( .A1(n830), .A2(n837), .ZN(n831) );
  CKND2D0 U126 ( .A1(n1070), .A2(n1068), .ZN(n949) );
  ND2D0 U127 ( .A1(n897), .A2(n893), .ZN(n1021) );
  ND2D0 U128 ( .A1(n1020), .A2(n1025), .ZN(n1027) );
  CKND2D1 U129 ( .A1(n223), .A2(n222), .ZN(n216) );
  CKND2D0 U130 ( .A1(n1074), .A2(n1073), .ZN(n1075) );
  AOI21D0 U131 ( .A1(n897), .A2(n896), .B(n895), .ZN(n1028) );
  CKND2D0 U132 ( .A1(n824), .A2(n836), .ZN(n825) );
  CKND2D0 U133 ( .A1(n642), .A2(n773), .ZN(n643) );
  NR2D0 U134 ( .A1(n968), .A2(n892), .ZN(n897) );
  CKND2D0 U135 ( .A1(n735), .A2(n734), .ZN(n736) );
  CKND2D0 U136 ( .A1(n627), .A2(n772), .ZN(n628) );
  ND2D0 U137 ( .A1(n375), .A2(n374), .ZN(n1302) );
  NR2D0 U138 ( .A1(n1019), .A2(n1072), .ZN(n1025) );
  NR2XD0 U139 ( .A1(n375), .A2(n374), .ZN(n1301) );
  CKND2D0 U140 ( .A1(n977), .A2(n976), .ZN(n978) );
  CKND2D0 U141 ( .A1(n959), .A2(n958), .ZN(n960) );
  ND2D0 U142 ( .A1(n1307), .A2(n1306), .ZN(n1309) );
  NR2D0 U143 ( .A1(n835), .A2(n838), .ZN(n893) );
  ND2D0 U144 ( .A1(n1312), .A2(n1311), .ZN(n1314) );
  CKND2D0 U145 ( .A1(n970), .A2(n969), .ZN(n971) );
  NR2D0 U146 ( .A1(n948), .A2(n28), .ZN(n1019) );
  NR2D0 U147 ( .A1(n954), .A2(n957), .ZN(n1020) );
  CKND2D1 U148 ( .A1(n372), .A2(n371), .ZN(n1306) );
  NR2D0 U149 ( .A1(n862), .A2(n24), .ZN(n892) );
  OAI21D0 U150 ( .A1(n635), .A2(n734), .B(n636), .ZN(n776) );
  AOI21D0 U151 ( .A1(n650), .A2(n555), .B(n554), .ZN(n741) );
  CKND2D0 U152 ( .A1(n746), .A2(n745), .ZN(n747) );
  CKND2D0 U153 ( .A1(n637), .A2(n636), .ZN(n638) );
  NR2D0 U154 ( .A1(n633), .A2(n635), .ZN(n771) );
  NR2D0 U155 ( .A1(n770), .A2(n774), .ZN(n777) );
  ND2D0 U156 ( .A1(n370), .A2(n369), .ZN(n1311) );
  ND2D0 U157 ( .A1(n823), .A2(n23), .ZN(n836) );
  ND2D0 U158 ( .A1(n1316), .A2(n1315), .ZN(n1318) );
  HICIND1 U159 ( .A(n245), .CIN(n244), .CO(n237), .S(n246) );
  ND2D0 U160 ( .A1(n626), .A2(n21), .ZN(n772) );
  ND2D0 U161 ( .A1(n928), .A2(n27), .ZN(n958) );
  NR2D0 U162 ( .A1(n927), .A2(n26), .ZN(n954) );
  NR2D0 U163 ( .A1(n593), .A2(n18), .ZN(n633) );
  ND2D0 U164 ( .A1(n609), .A2(n20), .ZN(n773) );
  ND2D0 U165 ( .A1(n367), .A2(n366), .ZN(n1315) );
  NR2D0 U166 ( .A1(n556), .A2(n17), .ZN(n744) );
  ND2D0 U167 ( .A1(n594), .A2(n19), .ZN(n636) );
  ND2D0 U168 ( .A1(n556), .A2(n17), .ZN(n745) );
  CKND2D0 U169 ( .A1(n553), .A2(n16), .ZN(n649) );
  ND2D0 U170 ( .A1(n894), .A2(n25), .ZN(n969) );
  ND2D0 U171 ( .A1(n548), .A2(n14), .ZN(n663) );
  NR2D0 U172 ( .A1(n552), .A2(n15), .ZN(n648) );
  HICIND1 U173 ( .A(n262), .CIN(n261), .CO(n252), .S(n264) );
  ND2D0 U174 ( .A1(n552), .A2(n15), .ZN(n655) );
  OAI21D0 U175 ( .A1(n1328), .A2(n1331), .B(n1329), .ZN(n1326) );
  CKND2D0 U176 ( .A1(n890), .A2(n913), .ZN(n891) );
  NR2D0 U177 ( .A1(n797), .A2(n804), .ZN(n876) );
  CKND2D0 U178 ( .A1(n908), .A2(n912), .ZN(n909) );
  CKND2D0 U179 ( .A1(n1046), .A2(n1050), .ZN(n1047) );
  CKND2D0 U180 ( .A1(n1033), .A2(n1051), .ZN(n1018) );
  CKND2D0 U181 ( .A1(n945), .A2(n1000), .ZN(n946) );
  CKND2D0 U182 ( .A1(n932), .A2(n1001), .ZN(n926) );
  ND2D0 U183 ( .A1(n796), .A2(n802), .ZN(n804) );
  ND2D0 U184 ( .A1(n859), .A2(n877), .ZN(n860) );
  CKND2D0 U185 ( .A1(n821), .A2(n878), .ZN(n822) );
  NR2D0 U186 ( .A1(n911), .A2(n914), .ZN(n999) );
  NR2D0 U187 ( .A1(n580), .A2(n573), .ZN(n583) );
  CKND2D0 U188 ( .A1(n796), .A2(n798), .ZN(n625) );
  FA1D1 U189 ( .A(carry2[11]), .B(sum2[11]), .CI(n418), .CO(n406), .S(
        shared_comb[11]) );
  NR2D0 U190 ( .A1(n1017), .A2(x_mantissa[21]), .ZN(n1049) );
  ND2D0 U191 ( .A1(n907), .A2(x_mantissa[18]), .ZN(n912) );
  NR2D0 U192 ( .A1(n925), .A2(x_mantissa[19]), .ZN(n998) );
  ND2D0 U193 ( .A1(n496), .A2(n501), .ZN(n573) );
  ND2D0 U194 ( .A1(n610), .A2(n614), .ZN(n797) );
  NR2D0 U195 ( .A1(n1045), .A2(n29), .ZN(n1052) );
  ND2D0 U196 ( .A1(n1017), .A2(x_mantissa[21]), .ZN(n1051) );
  ND2D0 U197 ( .A1(n572), .A2(n577), .ZN(n580) );
  NR2D0 U198 ( .A1(n944), .A2(x_mantissa[20]), .ZN(n1002) );
  ND2D0 U199 ( .A1(n925), .A2(x_mantissa[19]), .ZN(n1001) );
  CKND2D0 U200 ( .A1(n944), .A2(x_mantissa[20]), .ZN(n1000) );
  ND2D0 U201 ( .A1(n889), .A2(x_mantissa[17]), .ZN(n913) );
  ND2D0 U202 ( .A1(n802), .A2(n799), .ZN(n793) );
  NR2D0 U203 ( .A1(n889), .A2(x_mantissa[17]), .ZN(n911) );
  NR2D0 U204 ( .A1(n879), .A2(n875), .ZN(n881) );
  CKND2D0 U205 ( .A1(n614), .A2(n611), .ZN(n607) );
  CKND2D0 U206 ( .A1(n1045), .A2(n29), .ZN(n1050) );
  CKND2D0 U207 ( .A1(n610), .A2(n595), .ZN(n592) );
  ND2D0 U208 ( .A1(n577), .A2(n574), .ZN(n570) );
  CKND2D0 U209 ( .A1(n572), .A2(n559), .ZN(n507) );
  FA1D1 U210 ( .A(carry2[10]), .B(sum2[10]), .CI(n405), .CO(n418), .S(
        shared_comb[10]) );
  ND2D0 U211 ( .A1(n624), .A2(x_mantissa[13]), .ZN(n798) );
  ND2D0 U212 ( .A1(n820), .A2(x_mantissa[15]), .ZN(n878) );
  OR2D0 U213 ( .A1(n1078), .A2(n1016), .Z(n1017) );
  NR2D0 U214 ( .A1(n624), .A2(x_mantissa[13]), .ZN(n781) );
  ND2D0 U215 ( .A1(n506), .A2(x_mantissa[9]), .ZN(n559) );
  INR2D0 U216 ( .A1(n951), .B1(n1061), .ZN(n944) );
  ND2D0 U217 ( .A1(n569), .A2(x_mantissa[10]), .ZN(n574) );
  ND2D0 U218 ( .A1(n606), .A2(x_mantissa[12]), .ZN(n611) );
  CKND2D0 U219 ( .A1(n792), .A2(x_mantissa[14]), .ZN(n799) );
  INR2D0 U220 ( .A1(n1066), .B1(n1044), .ZN(n1045) );
  CKND2D0 U221 ( .A1(n858), .A2(x_mantissa[16]), .ZN(n877) );
  ND2D0 U222 ( .A1(n591), .A2(x_mantissa[11]), .ZN(n595) );
  FA1D1 U223 ( .A(carry2[9]), .B(sum2[9]), .CI(n417), .CO(n405), .S(
        shared_comb[9]) );
  INR2D0 U224 ( .A1(n640), .B1(n590), .ZN(n591) );
  INR2D0 U225 ( .A1(n645), .B1(n819), .ZN(n606) );
  ND2D0 U226 ( .A1(n476), .A2(x_mantissa[7]), .ZN(n497) );
  NR2D0 U227 ( .A1(n476), .A2(n14), .ZN(n478) );
  CKND2D0 U228 ( .A1(n493), .A2(x_mantissa[8]), .ZN(n498) );
  INR2D0 U229 ( .A1(n864), .B1(n924), .ZN(n858) );
  INR2D0 U230 ( .A1(n833), .B1(n819), .ZN(n792) );
  ND2D0 U231 ( .A1(n464), .A2(n48), .ZN(n514) );
  INR2D0 U232 ( .A1(n738), .B1(n590), .ZN(n569) );
  ND2D0 U233 ( .A1(n465), .A2(n49), .ZN(n510) );
  INVD0 U234 ( .I(n272), .ZN(n270) );
  BUFFD0 U235 ( .I(n952), .Z(n1150) );
  INR2D0 U236 ( .A1(n750), .B1(n590), .ZN(n506) );
  FA1D1 U237 ( .A(carry2[8]), .B(sum2[8]), .CI(n404), .CO(n417), .S(
        shared_comb[8]) );
  CKAN2D1 U238 ( .A1(n73), .A2(n185), .Z(n190) );
  INVD0 U239 ( .I(n185), .ZN(n180) );
  ND2D0 U240 ( .A1(n4480), .A2(x_mantissa[3]), .ZN(n537) );
  ND2D0 U241 ( .A1(n4490), .A2(n47), .ZN(n541) );
  BUFFD0 U242 ( .I(n828), .Z(n974) );
  INR2D0 U243 ( .A1(n659), .B1(n492), .ZN(n476) );
  INR2D0 U244 ( .A1(n653), .B1(n492), .ZN(n493) );
  NR2D0 U245 ( .A1(n64), .A2(n175), .ZN(n170) );
  INR2D0 U246 ( .A1(n706), .B1(n4460), .ZN(n4480) );
  INR2D0 U247 ( .A1(n680), .B1(n4460), .ZN(n4470) );
  AO21D0 U248 ( .A1(n856), .A2(n855), .B(n854), .Z(n1060) );
  INVD0 U249 ( .I(n121), .ZN(n53) );
  INVD0 U250 ( .I(n301), .ZN(n299) );
  INVD0 U251 ( .I(n319), .ZN(n316) );
  CKBD1 U252 ( .I(n1061), .Z(n1044) );
  CKAN2D0 U253 ( .A1(n52), .A2(n658), .Z(n74) );
  CKND2D0 U254 ( .A1(n107), .A2(n106), .ZN(n90) );
  CKND2D0 U255 ( .A1(n886), .A2(n902), .ZN(n887) );
  ND2D0 U256 ( .A1(n598), .A2(n603), .ZN(n845) );
  ND2D0 U257 ( .A1(n844), .A2(n850), .ZN(n852) );
  CKND2D0 U258 ( .A1(n816), .A2(n847), .ZN(n817) );
  CKND2D0 U259 ( .A1(n921), .A2(n938), .ZN(n922) );
  BUFFD0 U260 ( .I(n259), .Z(n344) );
  CKAN2D0 U261 ( .A1(n89), .A2(n111), .Z(n107) );
  CKAN2D0 U262 ( .A1(n87), .A2(n123), .Z(n88) );
  NR2D0 U263 ( .A1(n597), .A2(n596), .ZN(n603) );
  NR2D0 U264 ( .A1(n843), .A2(n842), .ZN(n850) );
  INVD1 U265 ( .I(n950), .ZN(n109) );
  NR2D0 U266 ( .A1(n935), .A2(n934), .ZN(n941) );
  BUFFD0 U267 ( .I(n263), .Z(n285) );
  ND2D0 U268 ( .A1(n35), .A2(n34), .ZN(n482) );
  NR2D0 U269 ( .A1(n38), .A2(n37), .ZN(n561) );
  NR2D0 U270 ( .A1(n39), .A2(n38), .ZN(n597) );
  ND2D0 U271 ( .A1(y_mantissa[9]), .A2(n36), .ZN(n563) );
  NR2D0 U272 ( .A1(n41), .A2(n40), .ZN(n784) );
  NR2D0 U273 ( .A1(n42), .A2(n41), .ZN(n783) );
  ND2D0 U274 ( .A1(y_mantissa[15]), .A2(n42), .ZN(n846) );
  NR2D0 U275 ( .A1(n45), .A2(n10), .ZN(n899) );
  NR2D0 U276 ( .A1(n11), .A2(n10), .ZN(n935) );
  ND2D0 U277 ( .A1(y_mantissa[17]), .A2(n44), .ZN(n901) );
  ND2D0 U278 ( .A1(y_mantissa[21]), .A2(n12), .ZN(n1038) );
  CKND2D1 U279 ( .A1(n311), .A2(n310), .ZN(n174) );
  AN2D1 U280 ( .A1(n4320), .A2(n148), .Z(n143) );
  BUFFD0 U281 ( .I(n1367), .Z(n1366) );
  BUFFD0 U282 ( .I(n1367), .Z(n1368) );
  INVD1 U283 ( .I(n155), .ZN(n45) );
  NR2D0 U284 ( .A1(n480), .A2(n479), .ZN(n486) );
  CKND2D0 U285 ( .A1(n458), .A2(n136), .ZN(n86) );
  CKND2D0 U286 ( .A1(n479), .A2(n128), .ZN(n124) );
  CKND2D0 U287 ( .A1(n596), .A2(n115), .ZN(n112) );
  ND2D0 U288 ( .A1(y_mantissa[13]), .A2(y_mantissa[12]), .ZN(n785) );
  ND2D0 U289 ( .A1(y_mantissa[11]), .A2(y_mantissa[10]), .ZN(n599) );
  CKND2D0 U290 ( .A1(y_mantissa[19]), .A2(y_mantissa[18]), .ZN(n937) );
  INVD0 U291 ( .I(x_mantissa[8]), .ZN(n295) );
  INVD1 U292 ( .I(n1257), .ZN(n1246) );
  XOR2D0 U293 ( .A1(n1266), .A2(n1265), .Z(d1_c1[22]) );
  INVD1 U294 ( .I(n1265), .ZN(n1257) );
  XNR2D0 U295 ( .A1(n1157), .A2(n1156), .ZN(base_c1[23]) );
  XOR2D0 U296 ( .A1(n1107), .A2(n1106), .Z(base_c1[24]) );
  XOR2D0 U297 ( .A1(n1153), .A2(n1111), .Z(base_c1[22]) );
  XOR2D0 U298 ( .A1(n1119), .A2(n1118), .Z(base_c1[20]) );
  INVD0 U299 ( .I(n1230), .ZN(n1231) );
  CKND2D0 U300 ( .A1(n79), .A2(n1267), .ZN(n1269) );
  XNR2D0 U301 ( .A1(n1164), .A2(n1163), .ZN(base_c1[19]) );
  CKND2D1 U302 ( .A1(n81), .A2(n1256), .ZN(n1258) );
  AOI21D0 U303 ( .A1(n1164), .A2(n1162), .B(n1115), .ZN(n1119) );
  XNR2D0 U304 ( .A1(n78), .A2(n1160), .ZN(base_c1[21]) );
  CKND2D1 U305 ( .A1(n80), .A2(n1264), .ZN(n1266) );
  XNR2D0 U306 ( .A1(n1171), .A2(n1170), .ZN(base_c1[18]) );
  XOR2D0 U307 ( .A1(n1128), .A2(n1127), .Z(base_c1[16]) );
  CKND2D0 U308 ( .A1(n68), .A2(n1244), .ZN(n1245) );
  OR2D1 U309 ( .A1(n68), .A2(n401), .Z(n79) );
  CKND2D0 U310 ( .A1(n67), .A2(n1238), .ZN(n1239) );
  XOR2D0 U311 ( .A1(n1274), .A2(n1273), .Z(d1_c1[20]) );
  XOR2D0 U312 ( .A1(n1135), .A2(n1134), .Z(base_c1[15]) );
  OAI21D0 U313 ( .A1(n1167), .A2(n1166), .B(n1165), .ZN(n1171) );
  XOR2D0 U314 ( .A1(n1167), .A2(n1121), .Z(base_c1[17]) );
  CKND2D0 U315 ( .A1(n1263), .A2(n1255), .ZN(n1256) );
  CKND2D0 U316 ( .A1(n67), .A2(n1262), .ZN(n1264) );
  ND2D1 U317 ( .A1(n67), .A2(n401), .ZN(n1267) );
  XNR2D0 U318 ( .A1(n1175), .A2(n1174), .ZN(base_c1[14]) );
  OAI21D0 U319 ( .A1(n995), .A2(n1113), .B(n994), .ZN(n996) );
  AOI21D0 U320 ( .A1(n1175), .A2(n1124), .B(n1123), .ZN(n1128) );
  AOI21D0 U321 ( .A1(n1175), .A2(n1173), .B(n1130), .ZN(n1135) );
  INVD0 U322 ( .I(n66), .ZN(n69) );
  XNR2D0 U323 ( .A1(n1181), .A2(n1180), .ZN(base_c1[12]) );
  OAI21D0 U324 ( .A1(n1089), .A2(n1158), .B(n1088), .ZN(n1090) );
  NR2D0 U325 ( .A1(n1089), .A2(n1108), .ZN(n1091) );
  INVD0 U326 ( .I(n1158), .ZN(n1109) );
  AOI21D0 U327 ( .A1(n1117), .A2(n1115), .B(n993), .ZN(n994) );
  INVD0 U328 ( .I(n1270), .ZN(n1272) );
  XNR2D0 U329 ( .A1(n1278), .A2(n1277), .ZN(d1_c1[19]) );
  INVD0 U330 ( .I(n1108), .ZN(n1159) );
  XNR2D0 U331 ( .A1(n1189), .A2(n1188), .ZN(base_c1[13]) );
  XOR2D0 U332 ( .A1(n1283), .A2(n1282), .Z(d1_c1[18]) );
  XOR2D0 U333 ( .A1(n1184), .A2(n1138), .Z(base_c1[11]) );
  CKND2D1 U334 ( .A1(n1081), .A2(n1080), .ZN(n1158) );
  OAI21D0 U335 ( .A1(n1184), .A2(n1177), .B(n1176), .ZN(n1181) );
  OAI21D0 U336 ( .A1(n1184), .A2(n1183), .B(n1182), .ZN(n1189) );
  INVD0 U337 ( .I(n1116), .ZN(n993) );
  INVD0 U338 ( .I(n1275), .ZN(n393) );
  AN2D0 U339 ( .A1(n165), .A2(n164), .Z(n168) );
  XOR2D0 U340 ( .A1(n1144), .A2(n1143), .Z(base_c1[10]) );
  CKND2D0 U341 ( .A1(n1124), .A2(n1126), .ZN(n874) );
  INVD0 U342 ( .I(n1279), .ZN(n1281) );
  CKND2D1 U343 ( .A1(n392), .A2(n391), .ZN(n1275) );
  INVD0 U344 ( .I(n1166), .ZN(n1120) );
  AOI21D0 U345 ( .A1(n1123), .A2(n1126), .B(n872), .ZN(n873) );
  XNR2D0 U346 ( .A1(n1287), .A2(n1286), .ZN(d1_c1[17]) );
  INVD0 U347 ( .I(n1161), .ZN(n1115) );
  INVD0 U348 ( .I(n1136), .ZN(n1184) );
  INVD0 U349 ( .I(n1168), .ZN(n987) );
  OAI21D0 U350 ( .A1(n1185), .A2(n1182), .B(n1186), .ZN(n768) );
  XOR2D0 U351 ( .A1(n1076), .A2(n1075), .Z(n1081) );
  FA1D1 U352 ( .A(carry2[27]), .B(sum2[27]), .CI(n414), .CO(n415), .S(
        shared_comb[27]) );
  CKND2D1 U353 ( .A1(n990), .A2(n989), .ZN(n1161) );
  AOI21D0 U354 ( .A1(n1193), .A2(n1191), .B(n1140), .ZN(n1144) );
  XNR2D0 U355 ( .A1(n1193), .A2(n1192), .ZN(base_c1[9]) );
  XNR2D0 U356 ( .A1(n396), .A2(n394), .ZN(n395) );
  FA1D1 U357 ( .A(n1261), .B(n1243), .CI(n1242), .CO(n1237), .S(n1244) );
  INVD0 U358 ( .I(n1152), .ZN(n1110) );
  OR2D0 U359 ( .A1(n1085), .A2(n1084), .Z(n1155) );
  XNR2D0 U360 ( .A1(n1071), .A2(n949), .ZN(n992) );
  INVD0 U361 ( .I(n1284), .ZN(n388) );
  AOI21D0 U362 ( .A1(n1071), .A2(n1070), .B(n1069), .ZN(n1076) );
  XOR2D0 U363 ( .A1(n1252), .A2(n1251), .Z(d1_c1[16]) );
  OAI21D0 U364 ( .A1(n1139), .A2(n759), .B(n758), .ZN(n1136) );
  INVD0 U365 ( .I(n1125), .ZN(n872) );
  FA1D1 U366 ( .A(carry2[26]), .B(sum2[26]), .CI(n413), .CO(n414), .S(
        shared_comb[26]) );
  XOR2D0 U367 ( .A1(n972), .A2(n971), .Z(n984) );
  INVD0 U368 ( .I(n1177), .ZN(n1137) );
  XOR2D0 U369 ( .A1(n979), .A2(n978), .Z(n986) );
  INVD0 U370 ( .I(n1172), .ZN(n1130) );
  INVD0 U371 ( .I(n1129), .ZN(n1173) );
  XOR2D0 U372 ( .A1(n1062), .A2(n1095), .Z(n1085) );
  AOI21D0 U373 ( .A1(n1142), .A2(n1140), .B(n757), .ZN(n758) );
  NR2XD0 U374 ( .A1(n203), .A2(n201), .ZN(n394) );
  INVD0 U375 ( .I(n1139), .ZN(n1193) );
  XOR2D0 U376 ( .A1(n961), .A2(n960), .Z(n990) );
  NR2XD0 U377 ( .A1(n869), .A2(n868), .ZN(n1131) );
  NR2XD0 U378 ( .A1(n767), .A2(n766), .ZN(n1185) );
  OR2D0 U379 ( .A1(n1103), .A2(n1102), .Z(n1105) );
  OR2D0 U380 ( .A1(n871), .A2(n870), .Z(n1126) );
  CKND2D1 U381 ( .A1(n1083), .A2(n1082), .ZN(n1151) );
  OAI21D0 U382 ( .A1(n1196), .A2(n1195), .B(n1194), .ZN(n1201) );
  FA1D1 U383 ( .A(carry2[25]), .B(sum2[25]), .CI(n425), .CO(n413), .S(
        shared_comb[25]) );
  NR2XD0 U384 ( .A1(n1065), .A2(n1092), .ZN(n1062) );
  CKND2D1 U385 ( .A1(n867), .A2(n866), .ZN(n1172) );
  CKND2D1 U386 ( .A1(n160), .A2(n204), .ZN(n201) );
  XNR2D0 U387 ( .A1(n1065), .A2(n1092), .ZN(n1083) );
  XNR2D0 U388 ( .A1(n826), .A2(n825), .ZN(n869) );
  AOI21D0 U389 ( .A1(n733), .A2(n1145), .B(n732), .ZN(n1139) );
  XOR2D0 U390 ( .A1(n1296), .A2(n1295), .Z(d1_c1[14]) );
  XNR2D0 U391 ( .A1(n1291), .A2(n1290), .ZN(d1_c1[15]) );
  XNR2D0 U392 ( .A1(n967), .A2(n863), .ZN(n871) );
  XNR2D0 U393 ( .A1(n206), .A2(n204), .ZN(n205) );
  OR2D0 U394 ( .A1(n763), .A2(n762), .Z(n1179) );
  INVD0 U395 ( .I(n1248), .ZN(n1250) );
  CKND2D0 U396 ( .A1(n1142), .A2(n1191), .ZN(n759) );
  CKND2D0 U397 ( .A1(n1199), .A2(n1198), .ZN(n1200) );
  INVD0 U398 ( .I(n1141), .ZN(n757) );
  XNR2D0 U399 ( .A1(n629), .A2(n628), .ZN(n767) );
  CKND2D1 U400 ( .A1(n761), .A2(n760), .ZN(n1176) );
  INVD0 U401 ( .I(n1145), .ZN(n1196) );
  AOI21D0 U402 ( .A1(n956), .A2(n977), .B(n955), .ZN(n961) );
  FA1D1 U403 ( .A(carry2[24]), .B(sum2[24]), .CI(n412), .CO(n425), .S(
        shared_comb[24]) );
  XOR2D0 U404 ( .A1(n898), .A2(n831), .Z(n867) );
  OR2D0 U405 ( .A1(n756), .A2(n755), .Z(n1142) );
  OAI21D0 U406 ( .A1(n1197), .A2(n1194), .B(n1198), .ZN(n732) );
  OAI21D0 U407 ( .A1(n898), .A2(n835), .B(n837), .ZN(n826) );
  CKND2D0 U408 ( .A1(n1146), .A2(n1194), .ZN(n1147) );
  CKND2D0 U409 ( .A1(n1191), .A2(n1190), .ZN(n1192) );
  INVD0 U410 ( .I(n1190), .ZN(n1140) );
  OAI21D0 U411 ( .A1(n1096), .A2(n1095), .B(n1094), .ZN(n1100) );
  CKND2D1 U412 ( .A1(n385), .A2(n384), .ZN(n1249) );
  OAI21D0 U413 ( .A1(n644), .A2(n770), .B(n773), .ZN(n629) );
  NR2XD0 U414 ( .A1(n212), .A2(n210), .ZN(n204) );
  OAI21D0 U415 ( .A1(n727), .A2(n1202), .B(n726), .ZN(n1145) );
  XOR2D0 U416 ( .A1(n644), .A2(n643), .Z(n763) );
  XOR2D0 U417 ( .A1(n639), .A2(n638), .Z(n761) );
  FA1D1 U418 ( .A(carry2[23]), .B(sum2[23]), .CI(n424), .CO(n412), .S(
        shared_comb[23]) );
  XNR2D0 U419 ( .A1(n1300), .A2(n1299), .ZN(d1_c1[13]) );
  XOR2D0 U420 ( .A1(n1305), .A2(n1304), .Z(d1_c1[12]) );
  OR2D0 U421 ( .A1(n754), .A2(n753), .Z(n1191) );
  AOI21D0 U422 ( .A1(n1205), .A2(n1203), .B(n725), .ZN(n726) );
  AOI21D0 U423 ( .A1(n737), .A2(n735), .B(n634), .ZN(n639) );
  XNR2D0 U424 ( .A1(n737), .A2(n736), .ZN(n756) );
  XNR2D0 U425 ( .A1(n176), .A2(n74), .ZN(n177) );
  NR2D0 U426 ( .A1(n176), .A2(n74), .ZN(n70) );
  CKND2D1 U427 ( .A1(n159), .A2(n158), .ZN(n210) );
  FA1D1 U428 ( .A(carry2[22]), .B(sum2[22]), .CI(n411), .CO(n424), .S(
        shared_comb[22]) );
  XNR2D0 U429 ( .A1(n748), .A2(n747), .ZN(n754) );
  CKND2D0 U430 ( .A1(n1205), .A2(n1204), .ZN(n1206) );
  AOI21D0 U431 ( .A1(n1210), .A2(n1209), .B(n1203), .ZN(n1207) );
  OAI21D0 U432 ( .A1(n1028), .A2(n1027), .B(n1026), .ZN(n1029) );
  XNR2D0 U433 ( .A1(n652), .A2(n651), .ZN(n731) );
  FA1D1 U434 ( .A(carry2[21]), .B(sum2[21]), .CI(n423), .CO(n411), .S(
        shared_comb[21]) );
  INVD0 U435 ( .I(n398), .ZN(n391) );
  OR2D0 U436 ( .A1(n724), .A2(n723), .Z(n1205) );
  OAI21D0 U437 ( .A1(n743), .A2(n742), .B(n741), .ZN(n748) );
  XOR2D0 U438 ( .A1(n743), .A2(n657), .Z(n729) );
  OAI21D0 U439 ( .A1(n743), .A2(n648), .B(n655), .ZN(n652) );
  XNR2D0 U440 ( .A1(n1309), .A2(n1308), .ZN(d1_c1[11]) );
  INVD0 U441 ( .I(n896), .ZN(n839) );
  AOI21D0 U442 ( .A1(n1025), .A2(n1024), .B(n1023), .ZN(n1026) );
  XOR2D0 U443 ( .A1(n1314), .A2(n1313), .Z(d1_c1[10]) );
  CKND2D0 U444 ( .A1(n1209), .A2(n1208), .ZN(n1211) );
  CKND2D0 U445 ( .A1(n724), .A2(n723), .ZN(n1204) );
  XNR2D0 U446 ( .A1(n223), .A2(n225), .ZN(n224) );
  FA1D1 U447 ( .A(carry2[20]), .B(sum2[20]), .CI(n410), .CO(n423), .S(
        shared_comb[20]) );
  INVD0 U448 ( .I(n1072), .ZN(n1074) );
  INVD0 U449 ( .I(n1068), .ZN(n1069) );
  INVD0 U450 ( .I(n1019), .ZN(n1070) );
  INVD0 U451 ( .I(n1024), .ZN(n929) );
  CKND2D0 U452 ( .A1(n722), .A2(n721), .ZN(n1208) );
  OAI21D0 U453 ( .A1(n1072), .A2(n1068), .B(n1073), .ZN(n1023) );
  OAI21D0 U454 ( .A1(n741), .A2(n744), .B(n745), .ZN(n557) );
  XOR2D0 U455 ( .A1(n666), .A2(n665), .Z(n724) );
  AOI21D0 U456 ( .A1(n1214), .A2(n1213), .B(n720), .ZN(n1202) );
  INVD0 U457 ( .I(n964), .ZN(n965) );
  CKND2D0 U458 ( .A1(n1218), .A2(n1217), .ZN(n1219) );
  OAI21D0 U459 ( .A1(n838), .A2(n837), .B(n836), .ZN(n896) );
  AOI21D0 U460 ( .A1(n777), .A2(n776), .B(n775), .ZN(n778) );
  CKND2D0 U461 ( .A1(n1093), .A2(n1092), .ZN(n1094) );
  XNR2D0 U462 ( .A1(n230), .A2(n229), .ZN(n232) );
  XOR2D0 U463 ( .A1(n1098), .A2(n71), .Z(n1099) );
  INVD0 U464 ( .I(n647), .ZN(n743) );
  INVD0 U465 ( .I(n892), .ZN(n966) );
  INVD0 U466 ( .I(n1093), .ZN(n1095) );
  CKND2D0 U467 ( .A1(n771), .A2(n777), .ZN(n779) );
  OAI21D0 U468 ( .A1(n968), .A2(n964), .B(n969), .ZN(n895) );
  FA1D1 U469 ( .A(carry2[19]), .B(sum2[19]), .CI(n422), .CO(n410), .S(
        shared_comb[19]) );
  CKND2D0 U470 ( .A1(n1022), .A2(x_mantissa[22]), .ZN(n1073) );
  OAI21D0 U471 ( .A1(n1220), .A2(n1216), .B(n1217), .ZN(n1214) );
  XNR2D0 U472 ( .A1(n1097), .A2(n71), .ZN(n1093) );
  CKND2D0 U473 ( .A1(n1213), .A2(n1212), .ZN(n1215) );
  CKND2D1 U474 ( .A1(n948), .A2(n28), .ZN(n1068) );
  NR2XD0 U475 ( .A1(n1022), .A2(x_mantissa[22]), .ZN(n1072) );
  OAI21D0 U476 ( .A1(n774), .A2(n773), .B(n772), .ZN(n775) );
  INVD0 U477 ( .I(n954), .ZN(n977) );
  INVD0 U478 ( .I(n976), .ZN(n955) );
  AOI21D0 U479 ( .A1(n672), .A2(n670), .B(n662), .ZN(n666) );
  OAI21D0 U480 ( .A1(n957), .A2(n976), .B(n958), .ZN(n1024) );
  NR2D0 U481 ( .A1(n1097), .A2(n71), .ZN(n1098) );
  OAI21D0 U482 ( .A1(n551), .A2(n661), .B(n550), .ZN(n647) );
  NR2D0 U483 ( .A1(n742), .A2(n744), .ZN(n558) );
  NR2XD0 U484 ( .A1(n795), .A2(n22), .ZN(n835) );
  CKND2D1 U485 ( .A1(n862), .A2(n24), .ZN(n964) );
  CKND2D1 U486 ( .A1(n795), .A2(n22), .ZN(n837) );
  INVD0 U487 ( .I(n633), .ZN(n735) );
  FA1D1 U488 ( .A(carry2[18]), .B(sum2[18]), .CI(n409), .CO(n422), .S(
        shared_comb[18]) );
  XNR2D0 U489 ( .A1(n794), .A2(n793), .ZN(n795) );
  XOR2D0 U490 ( .A1(n1053), .A2(n1018), .Z(n1022) );
  XNR2D0 U491 ( .A1(n861), .A2(n860), .ZN(n862) );
  NR2XD0 U492 ( .A1(n609), .A2(n20), .ZN(n770) );
  NR2XD0 U493 ( .A1(n823), .A2(n23), .ZN(n838) );
  OAI21D0 U494 ( .A1(n1053), .A2(n77), .B(n76), .ZN(n1097) );
  CKND2D1 U495 ( .A1(n593), .A2(n18), .ZN(n734) );
  XOR2D0 U496 ( .A1(n1048), .A2(n1047), .Z(n1092) );
  NR2XD0 U497 ( .A1(n928), .A2(n27), .ZN(n957) );
  CKND2D0 U498 ( .A1(n650), .A2(n649), .ZN(n651) );
  NR2XD0 U499 ( .A1(n370), .A2(n369), .ZN(n1310) );
  NR2XD0 U500 ( .A1(n626), .A2(n21), .ZN(n774) );
  CKND2D0 U501 ( .A1(n656), .A2(n655), .ZN(n657) );
  CKND2D0 U502 ( .A1(n656), .A2(n650), .ZN(n742) );
  CKND2D0 U503 ( .A1(n709), .A2(n708), .ZN(n1217) );
  CKND2D0 U504 ( .A1(n719), .A2(n718), .ZN(n1212) );
  XOR2D0 U505 ( .A1(n947), .A2(n946), .Z(n948) );
  CKND2D0 U506 ( .A1(n1321), .A2(n1320), .ZN(n1323) );
  AOI21D0 U507 ( .A1(n664), .A2(n662), .B(n549), .ZN(n550) );
  INVD0 U508 ( .I(n661), .ZN(n672) );
  FA1D1 U509 ( .A(carry2[17]), .B(sum2[17]), .CI(n421), .CO(n409), .S(
        shared_comb[17]) );
  NR2XD0 U510 ( .A1(n594), .A2(n19), .ZN(n635) );
  OR2D0 U511 ( .A1(n553), .A2(n16), .Z(n650) );
  XOR2D0 U512 ( .A1(n608), .A2(n607), .Z(n609) );
  XOR2D0 U513 ( .A1(n782), .A2(n625), .Z(n626) );
  XOR2D0 U514 ( .A1(n571), .A2(n570), .Z(n593) );
  OAI21D0 U515 ( .A1(n782), .A2(n781), .B(n798), .ZN(n794) );
  XOR2D0 U516 ( .A1(n841), .A2(n822), .Z(n823) );
  NR2XD0 U517 ( .A1(n894), .A2(n25), .ZN(n968) );
  OAI21D0 U518 ( .A1(n841), .A2(n875), .B(n878), .ZN(n861) );
  CKND2D0 U519 ( .A1(n664), .A2(n663), .ZN(n665) );
  XNR2D0 U520 ( .A1(n910), .A2(n909), .ZN(n927) );
  XNR2D0 U521 ( .A1(n933), .A2(n926), .ZN(n928) );
  AOI21D0 U522 ( .A1(n933), .A2(n932), .B(n931), .ZN(n947) );
  AOI21D0 U523 ( .A1(n1222), .A2(n1223), .B(n699), .ZN(n1220) );
  AOI21D0 U524 ( .A1(n1034), .A2(n1033), .B(n1032), .ZN(n1048) );
  INVD0 U525 ( .I(n1034), .ZN(n1053) );
  HICOND1 U526 ( .A(n253), .CI(n252), .CON(n244), .S(n255) );
  CKND2D0 U527 ( .A1(n1227), .A2(n1226), .ZN(n1229) );
  CKND2D0 U528 ( .A1(n664), .A2(n670), .ZN(n551) );
  AOI21D0 U529 ( .A1(n712), .A2(n711), .B(n546), .ZN(n661) );
  FA1D1 U530 ( .A(carry2[16]), .B(sum2[16]), .CI(n408), .CO(n421), .S(
        shared_comb[16]) );
  CKND2D0 U531 ( .A1(n1325), .A2(n1324), .ZN(n1327) );
  OAI21D0 U532 ( .A1(n75), .A2(n911), .B(n913), .ZN(n910) );
  CKND2D0 U533 ( .A1(n1330), .A2(n1329), .ZN(n1332) );
  CKND2D0 U534 ( .A1(n670), .A2(n669), .ZN(n671) );
  XOR2D0 U535 ( .A1(n75), .A2(n891), .Z(n894) );
  CKND2D0 U536 ( .A1(n365), .A2(n364), .ZN(n1320) );
  OAI21D0 U537 ( .A1(n75), .A2(n1007), .B(n1006), .ZN(n1034) );
  INVD0 U538 ( .I(n396), .ZN(n161) );
  AOI21D0 U539 ( .A1(n806), .A2(n610), .B(n613), .ZN(n608) );
  INVD0 U540 ( .I(n166), .ZN(n164) );
  XNR2D0 U541 ( .A1(n806), .A2(n592), .ZN(n594) );
  CKND2D0 U542 ( .A1(n711), .A2(n710), .ZN(n713) );
  AOI21D0 U543 ( .A1(n560), .A2(n572), .B(n576), .ZN(n571) );
  XNR2D0 U544 ( .A1(n560), .A2(n507), .ZN(n556) );
  OR2D0 U545 ( .A1(n548), .A2(n14), .Z(n664) );
  CKND2D0 U546 ( .A1(n1222), .A2(n1221), .ZN(n1224) );
  XNR2D0 U547 ( .A1(n495), .A2(n494), .ZN(n553) );
  FA1D1 U548 ( .A(carry2[15]), .B(sum2[15]), .CI(n420), .CO(n408), .S(
        shared_comb[15]) );
  OAI21D0 U549 ( .A1(n502), .A2(n478), .B(n497), .ZN(n495) );
  CKND2D0 U550 ( .A1(n698), .A2(n697), .ZN(n1221) );
  CKND2D0 U551 ( .A1(n547), .A2(n49), .ZN(n669) );
  XOR2D0 U552 ( .A1(n502), .A2(n477), .Z(n552) );
  OA21D0 U553 ( .A1(n885), .A2(n884), .B(n883), .Z(n75) );
  OR2D1 U554 ( .A1(n175), .A2(n91), .Z(n396) );
  OAI21D0 U555 ( .A1(n704), .A2(n700), .B(n701), .ZN(n712) );
  CKND2D0 U556 ( .A1(n545), .A2(n48), .ZN(n710) );
  HICOND1 U557 ( .A(n270), .CI(n269), .CON(n261), .S(n271) );
  CKND2D0 U558 ( .A1(n362), .A2(n361), .ZN(n1324) );
  OR2D1 U559 ( .A1(n175), .A2(n163), .Z(n166) );
  CKND2D0 U560 ( .A1(n695), .A2(n694), .ZN(n1226) );
  XOR2D0 U561 ( .A1(n513), .A2(n512), .Z(n548) );
  FA1D1 U562 ( .A(carry2[14]), .B(sum2[14]), .CI(n407), .CO(n420), .S(
        shared_comb[14]) );
  AOI21D0 U563 ( .A1(n882), .A2(n881), .B(n880), .ZN(n883) );
  CKND2D0 U564 ( .A1(n360), .A2(n359), .ZN(n1329) );
  CKND2D0 U565 ( .A1(n536), .A2(n47), .ZN(n701) );
  INVD0 U566 ( .I(n1004), .ZN(n915) );
  CKND2D0 U567 ( .A1(n876), .A2(n881), .ZN(n884) );
  CKND2D0 U568 ( .A1(n999), .A2(n1005), .ZN(n1007) );
  AOI21D0 U569 ( .A1(n517), .A2(n515), .B(n509), .ZN(n513) );
  XNR2D0 U570 ( .A1(n162), .A2(n55), .ZN(n91) );
  INVD0 U571 ( .I(n206), .ZN(n160) );
  AOI21D0 U572 ( .A1(n1005), .A2(n1004), .B(n1003), .ZN(n1006) );
  CKND2D0 U573 ( .A1(n1334), .A2(n1333), .ZN(n1336) );
  INVD0 U574 ( .I(n582), .ZN(n502) );
  AOI21D0 U575 ( .A1(n676), .A2(n677), .B(n532), .ZN(n704) );
  OAI21D0 U576 ( .A1(n1002), .A2(n1001), .B(n1000), .ZN(n1003) );
  OAI21D0 U577 ( .A1(n508), .A2(n468), .B(n467), .ZN(n582) );
  OAI21D0 U578 ( .A1(n914), .A2(n913), .B(n912), .ZN(n1004) );
  OAI21D0 U579 ( .A1(n580), .A2(n579), .B(n578), .ZN(n581) );
  NR2D0 U580 ( .A1(n998), .A2(n1002), .ZN(n1005) );
  INVD0 U581 ( .I(n1001), .ZN(n931) );
  INVD0 U582 ( .I(n1049), .ZN(n1033) );
  INVD0 U583 ( .I(n805), .ZN(n615) );
  OA21D0 U584 ( .A1(n1052), .A2(n1051), .B(n1050), .Z(n76) );
  OAI21D0 U585 ( .A1(n805), .A2(n804), .B(n803), .ZN(n882) );
  INVD0 U586 ( .I(n508), .ZN(n517) );
  HICOND1 U587 ( .A(n284), .CI(n283), .CON(n276), .S(n286) );
  INVD0 U588 ( .I(n998), .ZN(n932) );
  OAI21D0 U589 ( .A1(n539), .A2(n538), .B(n537), .ZN(n544) );
  CKND2D0 U590 ( .A1(n357), .A2(n356), .ZN(n1333) );
  FA1D1 U591 ( .A(carry2[12]), .B(sum2[12]), .CI(n406), .CO(n419), .S(
        shared_comb[12]) );
  AOI21D0 U592 ( .A1(n614), .A2(n613), .B(n612), .ZN(n805) );
  NR2XD0 U593 ( .A1(n907), .A2(x_mantissa[18]), .ZN(n914) );
  CKND2D0 U594 ( .A1(n355), .A2(n354), .ZN(n1338) );
  AOI21D0 U595 ( .A1(n4510), .A2(n534), .B(n4500), .ZN(n508) );
  OAI21D0 U596 ( .A1(n879), .A2(n878), .B(n877), .ZN(n880) );
  XOR2D0 U597 ( .A1(n975), .A2(n974), .Z(n983) );
  AOI21D0 U598 ( .A1(n577), .A2(n576), .B(n575), .ZN(n578) );
  XOR2D0 U599 ( .A1(n1067), .A2(n1150), .Z(n1082) );
  HICIND1 U600 ( .A(n292), .CIN(n291), .CO(n283), .S(n293) );
  XOR2D0 U601 ( .A1(n963), .A2(n952), .Z(n989) );
  AOI21D0 U602 ( .A1(n802), .A2(n801), .B(n800), .ZN(n803) );
  XOR2D0 U603 ( .A1(n1079), .A2(n1016), .Z(n1080) );
  INVD0 U604 ( .I(n218), .ZN(n159) );
  CKND2D0 U605 ( .A1(n531), .A2(n61), .ZN(n675) );
  AOI21D0 U606 ( .A1(n501), .A2(n500), .B(n499), .ZN(n579) );
  AOI21D0 U607 ( .A1(n511), .A2(n509), .B(n466), .ZN(n467) );
  INVD0 U608 ( .I(n559), .ZN(n576) );
  INVD0 U609 ( .I(n574), .ZN(n575) );
  OAI21D0 U610 ( .A1(n521), .A2(n518), .B(n519), .ZN(n534) );
  INVD0 U611 ( .I(n225), .ZN(n222) );
  CKND2D0 U612 ( .A1(n352), .A2(n351), .ZN(n1342) );
  INVD0 U613 ( .I(n233), .ZN(n229) );
  CKND2D0 U614 ( .A1(n496), .A2(n497), .ZN(n477) );
  HICOND1 U615 ( .A(n299), .CI(n298), .CON(n291), .S(n300) );
  CKND2D0 U616 ( .A1(n530), .A2(n46), .ZN(n683) );
  INVD0 U617 ( .I(n799), .ZN(n800) );
  INR2XD0 U618 ( .A1(n962), .B1(n924), .ZN(n925) );
  INR2XD0 U619 ( .A1(n973), .B1(n924), .ZN(n889) );
  NR2XD0 U620 ( .A1(n858), .A2(x_mantissa[16]), .ZN(n879) );
  INVD0 U621 ( .I(n611), .ZN(n612) );
  INVD0 U622 ( .I(n781), .ZN(n796) );
  INR2XD0 U623 ( .A1(n981), .B1(n924), .ZN(n907) );
  INVD0 U624 ( .I(n595), .ZN(n613) );
  XOR2D0 U625 ( .A1(n632), .A2(n739), .Z(n766) );
  CKND2D0 U626 ( .A1(n691), .A2(n9), .ZN(n692) );
  XNR2D0 U627 ( .A1(n923), .A2(n922), .ZN(n962) );
  CKND2D0 U628 ( .A1(n515), .A2(n514), .ZN(n516) );
  CKND2D0 U629 ( .A1(n533), .A2(n537), .ZN(n535) );
  NR2XD0 U630 ( .A1(n820), .A2(x_mantissa[15]), .ZN(n875) );
  XNR2D0 U631 ( .A1(n888), .A2(n887), .ZN(n973) );
  XNR2D0 U632 ( .A1(n906), .A2(n905), .ZN(n981) );
  XNR2D0 U633 ( .A1(n943), .A2(n942), .ZN(n951) );
  CKND2D0 U634 ( .A1(n511), .A2(n510), .ZN(n512) );
  XNR2D0 U635 ( .A1(n1015), .A2(n1014), .ZN(n1078) );
  CKND2D0 U636 ( .A1(n501), .A2(n498), .ZN(n494) );
  OR2D0 U637 ( .A1(n792), .A2(x_mantissa[14]), .Z(n802) );
  XNR2D0 U638 ( .A1(n1043), .A2(n65), .ZN(n1066) );
  NR2D0 U639 ( .A1(n1063), .A2(n1061), .ZN(n71) );
  INVD0 U640 ( .I(n240), .ZN(n238) );
  CKND2D0 U641 ( .A1(n515), .A2(n511), .ZN(n468) );
  INVD0 U642 ( .I(n247), .ZN(n245) );
  INVD0 U643 ( .I(n256), .ZN(n253) );
  HICIND1 U644 ( .A(n306), .CIN(n305), .CO(n298), .S(n308) );
  INVD0 U645 ( .I(n265), .ZN(n262) );
  OR2D0 U646 ( .A1(n606), .A2(x_mantissa[12]), .Z(n614) );
  OR2D0 U647 ( .A1(n506), .A2(x_mantissa[9]), .Z(n572) );
  INVD0 U648 ( .I(n510), .ZN(n466) );
  OR2D0 U649 ( .A1(n569), .A2(x_mantissa[10]), .Z(n577) );
  INVD0 U650 ( .I(n514), .ZN(n509) );
  OR2D0 U651 ( .A1(n591), .A2(x_mantissa[11]), .Z(n610) );
  INVD0 U652 ( .I(n498), .ZN(n499) );
  OAI21D0 U653 ( .A1(n540), .A2(n537), .B(n541), .ZN(n4500) );
  OR2D0 U654 ( .A1(n465), .A2(n49), .Z(n511) );
  OAI21D0 U655 ( .A1(n58), .A2(n1059), .B(n1042), .ZN(n1043) );
  OAI21D0 U656 ( .A1(n59), .A2(n1012), .B(n1011), .ZN(n1015) );
  OR2D0 U657 ( .A1(n464), .A2(n48), .Z(n515) );
  INR2XD0 U658 ( .A1(n630), .B1(n819), .ZN(n624) );
  OAI21D0 U659 ( .A1(n58), .A2(n1037), .B(n1057), .ZN(n943) );
  OR2D0 U660 ( .A1(n493), .A2(x_mantissa[8]), .Z(n501) );
  OAI21D0 U661 ( .A1(n59), .A2(n1059), .B(n1058), .ZN(n1063) );
  OAI21D0 U662 ( .A1(n58), .A2(n920), .B(n919), .ZN(n923) );
  INR2XD0 U663 ( .A1(n827), .B1(n819), .ZN(n820) );
  OAI21D0 U664 ( .A1(n59), .A2(n904), .B(n903), .ZN(n906) );
  XOR2D0 U665 ( .A1(n58), .A2(n857), .Z(n864) );
  OAI21D0 U666 ( .A1(n59), .A2(n900), .B(n901), .ZN(n888) );
  HICOND1 U667 ( .A(n316), .CI(n315), .CON(n305), .S(n318) );
  XOR2D0 U668 ( .A1(n156), .A2(n104), .Z(n105) );
  HA1D0 U669 ( .A(n274), .B(n273), .CO(n267), .S(n275) );
  BUFFD0 U670 ( .I(n952), .Z(n716) );
  XNR2D0 U671 ( .A1(n791), .A2(n790), .ZN(n833) );
  XNR2D0 U672 ( .A1(n589), .A2(n588), .ZN(n640) );
  XNR2D0 U673 ( .A1(n605), .A2(n604), .ZN(n645) );
  XOR2D0 U674 ( .A1(n53), .A2(n120), .Z(n122) );
  XNR2D0 U675 ( .A1(n623), .A2(n622), .ZN(n630) );
  XNR2D0 U676 ( .A1(n818), .A2(n817), .ZN(n827) );
  INVD0 U677 ( .I(n1060), .ZN(n58) );
  BUFFD0 U678 ( .I(n828), .Z(n739) );
  XNR2D0 U679 ( .A1(n568), .A2(n567), .ZN(n738) );
  INVD0 U680 ( .I(n1060), .ZN(n59) );
  CKND2D0 U681 ( .A1(n4470), .A2(n46), .ZN(n519) );
  XNR2D0 U682 ( .A1(n505), .A2(n504), .ZN(n750) );
  HICIND1 U683 ( .A(n324), .CIN(n323), .CO(n315), .S(n325) );
  NR2D0 U684 ( .A1(n4480), .A2(n61), .ZN(n538) );
  INR2XD0 U685 ( .A1(n667), .B1(n492), .ZN(n465) );
  XOR2D0 U686 ( .A1(n170), .A2(n52), .Z(n1261) );
  INR2XD0 U687 ( .A1(n673), .B1(n492), .ZN(n464) );
  BUFFD0 U688 ( .I(n828), .Z(n751) );
  CKND2D0 U689 ( .A1(n4420), .A2(x_mantissa[1]), .ZN(n523) );
  HA1D0 U690 ( .A(n281), .B(n280), .CO(n274), .S(n282) );
  CKND2D0 U691 ( .A1(n527), .A2(x_mantissa[0]), .ZN(n528) );
  INR2D0 U692 ( .A1(n688), .B1(n590), .ZN(n527) );
  INR2D0 U693 ( .A1(n686), .B1(n4460), .ZN(n4420) );
  HA1D0 U694 ( .A(n289), .B(n288), .CO(n281), .S(n290) );
  OAI21D0 U695 ( .A1(n62), .A2(n587), .B(n586), .ZN(n589) );
  IND2D1 U696 ( .A1(n51), .B1(n175), .ZN(n185) );
  OAI21D0 U697 ( .A1(n815), .A2(n845), .B(n853), .ZN(n605) );
  INR2XD0 U698 ( .A1(n715), .B1(n4460), .ZN(n4490) );
  OAI21D0 U699 ( .A1(n62), .A2(n620), .B(n619), .ZN(n623) );
  OAI21D0 U700 ( .A1(n62), .A2(n788), .B(n787), .ZN(n791) );
  INVD0 U701 ( .I(n279), .ZN(n277) );
  XOR2D0 U702 ( .A1(n815), .A2(n491), .Z(n653) );
  OAI21D0 U703 ( .A1(n815), .A2(n562), .B(n563), .ZN(n505) );
  OAI21D0 U704 ( .A1(n62), .A2(n814), .B(n813), .ZN(n818) );
  OAI21D0 U705 ( .A1(n815), .A2(n566), .B(n565), .ZN(n568) );
  BUFFD1 U706 ( .I(n1044), .Z(n924) );
  AOI21D0 U707 ( .A1(n1041), .A2(n1010), .B(n1009), .ZN(n1011) );
  CKND2D0 U708 ( .A1(n811), .A2(n808), .ZN(n814) );
  AOI21D0 U709 ( .A1(n1041), .A2(n1040), .B(n1054), .ZN(n1042) );
  BUFFD1 U710 ( .I(n1016), .Z(n819) );
  AOI21D0 U711 ( .A1(n812), .A2(n844), .B(n849), .ZN(n787) );
  AOI21D0 U712 ( .A1(n812), .A2(n811), .B(n810), .ZN(n813) );
  INVD0 U713 ( .I(n856), .ZN(n62) );
  AOI21D0 U714 ( .A1(n812), .A2(n618), .B(n617), .ZN(n619) );
  AOI21D0 U715 ( .A1(n473), .A2(n472), .B(n471), .ZN(n475) );
  INVD0 U716 ( .I(n856), .ZN(n815) );
  CKND2D0 U717 ( .A1(n808), .A2(n618), .ZN(n620) );
  BUFFD1 U718 ( .I(n1044), .Z(n492) );
  BUFFD1 U719 ( .I(n1044), .Z(n590) );
  INVD0 U720 ( .I(n287), .ZN(n284) );
  INVD1 U721 ( .I(n631), .ZN(n175) );
  BUFFD0 U722 ( .I(n1016), .Z(n4460) );
  AOI21D0 U723 ( .A1(n473), .A2(n4530), .B(n4520), .ZN(n4560) );
  HICIND1 U724 ( .A(n339), .CIN(n338), .CO(n330), .S(n340) );
  INVD0 U725 ( .I(n294), .ZN(n292) );
  HA1D0 U726 ( .A(n296), .B(n295), .CO(n289), .S(n297) );
  CKND2D0 U727 ( .A1(n631), .A2(n52), .ZN(n73) );
  INVD0 U728 ( .I(n309), .ZN(n306) );
  CKND2D1 U729 ( .A1(n74), .A2(n65), .ZN(n178) );
  AOI21D0 U730 ( .A1(n473), .A2(n481), .B(n485), .ZN(n463) );
  OAI21D0 U731 ( .A1(n853), .A2(n852), .B(n851), .ZN(n854) );
  INVD0 U732 ( .I(n489), .ZN(n473) );
  NR2D0 U733 ( .A1(n807), .A2(n843), .ZN(n811) );
  BUFFD0 U734 ( .I(n658), .Z(n60) );
  NR2D0 U735 ( .A1(n845), .A2(n852), .ZN(n855) );
  INVD0 U736 ( .I(n853), .ZN(n812) );
  BUFFD1 U737 ( .I(n1061), .Z(n1016) );
  CKND2D0 U738 ( .A1(n490), .A2(n563), .ZN(n491) );
  AOI21D0 U739 ( .A1(n850), .A2(n849), .B(n848), .ZN(n851) );
  CKND2D0 U740 ( .A1(n503), .A2(n564), .ZN(n504) );
  AOI21D0 U741 ( .A1(n427), .A2(n4300), .B(n426), .ZN(n489) );
  CKND2D0 U742 ( .A1(n481), .A2(n486), .ZN(n488) );
  AOI21D0 U743 ( .A1(n486), .A2(n485), .B(n484), .ZN(n487) );
  BUFFD1 U744 ( .I(n134), .Z(n7) );
  AOI21D0 U745 ( .A1(n603), .A2(n602), .B(n601), .ZN(n853) );
  INVD0 U746 ( .I(n50), .ZN(n51) );
  CKND2D0 U747 ( .A1(n585), .A2(n599), .ZN(n567) );
  CKND2D0 U748 ( .A1(n1013), .A2(n1039), .ZN(n1014) );
  INR2XD1 U749 ( .A1(n328), .B1(n174), .ZN(n303) );
  CKND2D0 U750 ( .A1(n936), .A2(n941), .ZN(n1037) );
  AOI21D0 U751 ( .A1(n602), .A2(n585), .B(n584), .ZN(n586) );
  CKND2D0 U752 ( .A1(n618), .A2(n785), .ZN(n604) );
  CKND2D0 U753 ( .A1(n1010), .A2(n1038), .ZN(n942) );
  CKND2D0 U754 ( .A1(n621), .A2(n786), .ZN(n622) );
  AOI21D0 U755 ( .A1(n940), .A2(n918), .B(n917), .ZN(n919) );
  CKND2D0 U756 ( .A1(n936), .A2(n918), .ZN(n920) );
  CKND2D0 U757 ( .A1(n918), .A2(n937), .ZN(n905) );
  AOI21D0 U758 ( .A1(n941), .A2(n940), .B(n939), .ZN(n1057) );
  INVD0 U759 ( .I(n4290), .ZN(n126) );
  NR2XD0 U760 ( .A1(n562), .A2(n561), .ZN(n598) );
  NR2D0 U761 ( .A1(n458), .A2(n457), .ZN(n481) );
  NR2D0 U762 ( .A1(n900), .A2(n899), .ZN(n936) );
  NR2XD0 U763 ( .A1(n784), .A2(n783), .ZN(n844) );
  OAI21D0 U764 ( .A1(n809), .A2(n843), .B(n846), .ZN(n810) );
  CKND2D0 U765 ( .A1(n789), .A2(n846), .ZN(n790) );
  INVD0 U766 ( .I(n935), .ZN(n918) );
  INVD0 U767 ( .I(n597), .ZN(n585) );
  INVD0 U768 ( .I(n784), .ZN(n618) );
  INVD0 U769 ( .I(n112), .ZN(n89) );
  XOR2D0 U770 ( .A1(n44), .A2(n155), .Z(n857) );
  INVD0 U771 ( .I(n124), .ZN(n87) );
  BUFFD1 U772 ( .I(n182), .Z(n313) );
  XOR2D0 U773 ( .A1(n39), .A2(n118), .Z(n588) );
  CKAN2D1 U774 ( .A1(n342), .A2(n334), .Z(n173) );
  NR2D0 U775 ( .A1(y_mantissa[21]), .A2(n12), .ZN(n1035) );
  CKND2D0 U776 ( .A1(n63), .A2(n13), .ZN(n1039) );
  NR2D0 U777 ( .A1(n63), .A2(n13), .ZN(n1036) );
  CKND2D0 U778 ( .A1(n40), .A2(n39), .ZN(n600) );
  NR2XD0 U779 ( .A1(n45), .A2(n44), .ZN(n900) );
  CKND2D0 U780 ( .A1(y_mantissa[8]), .A2(n35), .ZN(n483) );
  NR2XD0 U781 ( .A1(n37), .A2(n36), .ZN(n562) );
  CKND2D0 U782 ( .A1(n33), .A2(n32), .ZN(n459) );
  CKND2D0 U783 ( .A1(n34), .A2(n33), .ZN(n460) );
  NR2D0 U784 ( .A1(y_mantissa[6]), .A2(n33), .ZN(n457) );
  CKND2D0 U785 ( .A1(n31), .A2(n30), .ZN(n4310) );
  CKND2D0 U786 ( .A1(n32), .A2(n31), .ZN(n4340) );
  CKND2D0 U787 ( .A1(y_mantissa[16]), .A2(n43), .ZN(n847) );
  CKND2D0 U788 ( .A1(n30), .A2(y_mantissa[1]), .ZN(n4380) );
  NR2D0 U789 ( .A1(y_mantissa[16]), .A2(n43), .ZN(n842) );
  NR2D0 U790 ( .A1(y_mantissa[20]), .A2(n11), .ZN(n934) );
  BUFFD0 U791 ( .I(n1367), .Z(n1369) );
  INVD0 U792 ( .I(n213), .ZN(n26) );
  INVD0 U793 ( .I(n320), .ZN(n48) );
  INVD0 U794 ( .I(n191), .ZN(n28) );
  INVD0 U795 ( .I(n327), .ZN(n47) );
  INVD0 U796 ( .I(n310), .ZN(n49) );
  INVD0 U797 ( .I(n207), .ZN(n27) );
  INVD0 U798 ( .I(n145), .ZN(n31) );
  INVD0 U799 ( .I(n147), .ZN(n30) );
  INVD0 U800 ( .I(n140), .ZN(n33) );
  INVD0 U801 ( .I(n142), .ZN(n32) );
  INVD0 U802 ( .I(n95), .ZN(n12) );
  INVD0 U803 ( .I(n133), .ZN(n35) );
  INVD0 U804 ( .I(n92), .ZN(n13) );
  INVD0 U805 ( .I(n136), .ZN(n34) );
  INVD0 U806 ( .I(n128), .ZN(n37) );
  INVD0 U807 ( .I(n98), .ZN(n11) );
  INVD0 U808 ( .I(n101), .ZN(n10) );
  INVD0 U809 ( .I(n123), .ZN(n38) );
  INVD0 U810 ( .I(n131), .ZN(n36) );
  INVD0 U811 ( .I(n120), .ZN(n39) );
  INVD0 U812 ( .I(n118), .ZN(n40) );
  INVD0 U813 ( .I(n115), .ZN(n41) );
  INVD0 U814 ( .I(n111), .ZN(n42) );
  INVD0 U815 ( .I(n106), .ZN(n43) );
  INVD0 U816 ( .I(n234), .ZN(n23) );
  INVD0 U817 ( .I(n241), .ZN(n22) );
  CKAN2D1 U818 ( .A1(n327), .A2(n320), .Z(n311) );
  INVD0 U819 ( .I(n219), .ZN(n25) );
  INVD0 U820 ( .I(n226), .ZN(n24) );
  BUFFD1 U821 ( .I(divide_s5), .Z(n1367) );
  INVD0 U822 ( .I(y_mantissa[13]), .ZN(n115) );
  INVD0 U823 ( .I(y_mantissa[10]), .ZN(n123) );
  NR2XD0 U824 ( .A1(y_mantissa[12]), .A2(y_mantissa[11]), .ZN(n596) );
  NR2XD0 U825 ( .A1(y_mantissa[15]), .A2(y_mantissa[14]), .ZN(n843) );
  CKND2D0 U826 ( .A1(y_mantissa[10]), .A2(y_mantissa[9]), .ZN(n564) );
  CKND2D0 U827 ( .A1(y_mantissa[14]), .A2(y_mantissa[13]), .ZN(n786) );
  INVD0 U828 ( .I(DP_OP_20J2_131_4019_n134), .ZN(n65) );
  CKND2D0 U829 ( .A1(y_mantissa[20]), .A2(y_mantissa[19]), .ZN(n938) );
  INVD0 U830 ( .I(y_mantissa[8]), .ZN(n131) );
  CKND2D0 U831 ( .A1(y_mantissa[17]), .A2(y_mantissa[18]), .ZN(n902) );
  INVD0 U832 ( .I(y_mantissa[11]), .ZN(n120) );
  INVD0 U833 ( .I(y_mantissa[14]), .ZN(n111) );
  INVD0 U834 ( .I(y_mantissa[17]), .ZN(n155) );
  INVD0 U835 ( .I(y_mantissa[12]), .ZN(n118) );
  INVD0 U836 ( .I(DP_OP_20J2_131_4019_n134), .ZN(n64) );
  INVD0 U837 ( .I(x_mantissa[9]), .ZN(n288) );
  NR2XD0 U838 ( .A1(y_mantissa[5]), .A2(y_mantissa[4]), .ZN(n458) );
  INVD0 U839 ( .I(y_mantissa[3]), .ZN(n145) );
  NR2XD0 U840 ( .A1(y_mantissa[7]), .A2(y_mantissa[6]), .ZN(n480) );
  CKND2D0 U841 ( .A1(y_mantissa[1]), .A2(y_mantissa[0]), .ZN(n4400) );
  NR2XD0 U842 ( .A1(y_mantissa[8]), .A2(y_mantissa[7]), .ZN(n479) );
  NR2XD0 U843 ( .A1(y_mantissa[3]), .A2(y_mantissa[2]), .ZN(n4320) );
  INVD0 U844 ( .I(y_mantissa[5]), .ZN(n140) );
  INVD0 U845 ( .I(y_mantissa[4]), .ZN(n142) );
  INVD0 U846 ( .I(y_mantissa[7]), .ZN(n133) );
  INVD0 U847 ( .I(y_mantissa[9]), .ZN(n128) );
  INVD0 U848 ( .I(y_mantissa[6]), .ZN(n136) );
  INR2D1 U850 ( .A1(n143), .B1(n86), .ZN(n134) );
  INVD0 U851 ( .I(n152), .ZN(n8) );
  INVD0 U852 ( .I(n172), .ZN(n9) );
  INVD1 U853 ( .I(x_mantissa[1]), .ZN(n172) );
  INVD0 U854 ( .I(n302), .ZN(n14) );
  INVD1 U855 ( .I(x_mantissa[7]), .ZN(n302) );
  INVD0 U856 ( .I(n295), .ZN(n15) );
  INVD0 U857 ( .I(n288), .ZN(n16) );
  INVD0 U858 ( .I(n280), .ZN(n17) );
  INVD1 U859 ( .I(x_mantissa[10]), .ZN(n280) );
  INVD0 U860 ( .I(n273), .ZN(n18) );
  INVD0 U861 ( .I(n266), .ZN(n19) );
  INVD0 U862 ( .I(n257), .ZN(n20) );
  INVD1 U863 ( .I(x_mantissa[13]), .ZN(n257) );
  INVD0 U864 ( .I(n248), .ZN(n21) );
  INVD1 U865 ( .I(x_mantissa[15]), .ZN(n241) );
  INVD1 U866 ( .I(x_mantissa[17]), .ZN(n226) );
  INVD1 U867 ( .I(x_mantissa[18]), .ZN(n219) );
  INVD1 U868 ( .I(x_mantissa[21]), .ZN(n191) );
  INVD1 U869 ( .I(n104), .ZN(n44) );
  INVD0 U870 ( .I(n342), .ZN(n46) );
  INVD1 U871 ( .I(n169), .ZN(n50) );
  INVD1 U872 ( .I(x_mantissa[6]), .ZN(n310) );
  INVD1 U873 ( .I(n121), .ZN(n54) );
  INVD0 U874 ( .I(n334), .ZN(n61) );
  INVD1 U875 ( .I(n66), .ZN(n67) );
  OR2D0 U876 ( .A1(n30), .A2(n8), .Z(n72) );
  OR2D0 U877 ( .A1(n1049), .A2(n1052), .Z(n77) );
  AO21D1 U878 ( .A1(n1112), .A2(n997), .B(n996), .Z(n78) );
  OR2XD1 U879 ( .A1(n1263), .A2(n1234), .Z(n84) );
  OR2XD1 U880 ( .A1(n198), .A2(n197), .Z(n85) );
  INVD1 U881 ( .I(n190), .ZN(n186) );
  INVD1 U882 ( .I(x_mantissa[3]), .ZN(n334) );
  AN2XD1 U883 ( .A1(n173), .A2(n343), .Z(n328) );
  INVD1 U884 ( .I(x_mantissa[11]), .ZN(n273) );
  INVD1 U885 ( .I(x_mantissa[14]), .ZN(n248) );
  INVD1 U886 ( .I(x_mantissa[20]), .ZN(n207) );
  INVD1 U887 ( .I(x_mantissa[2]), .ZN(n342) );
  HICOND1 U888 ( .A(n331), .CI(n330), .CON(n323), .S(n332) );
  HA1D0 U889 ( .A(n303), .B(n302), .CO(n296), .S(n304) );
  HICIND1 U890 ( .A(n277), .CIN(n276), .CO(n269), .S(n278) );
  HA1D0 U891 ( .A(n249), .B(n248), .CO(n242), .S(n251) );
  HA1D0 U892 ( .A(n220), .B(n219), .CO(n214), .S(n221) );
  MUX2D0 U893 ( .I0(n51), .I1(n196), .S(n195), .Z(n397) );
  MUX2D0 U894 ( .I0(n206), .I1(n205), .S(n51), .Z(n390) );
  AOI21D1 U895 ( .A1(n79), .A2(n1268), .B(n402), .ZN(n1265) );
  MUX2D0 U896 ( .I0(shared_s5[27]), .I1(divided_s5[27]), .S(n1370), .Z(N455)
         );
  FA1D0 U897 ( .A(carry2[13]), .B(sum2[13]), .CI(n419), .CO(n407), .S(
        shared_comb[13]) );
  CKXOR2D1 U898 ( .A1(n415), .A2(sum2[28]), .Z(shared_comb[28]) );
  INVD1 U899 ( .I(n679), .ZN(n1371) );
  INVD1 U900 ( .I(y_mantissa[1]), .ZN(n152) );
  INVD1 U901 ( .I(y_mantissa[0]), .ZN(n151) );
  INVD1 U902 ( .I(y_mantissa[15]), .ZN(n106) );
  INR2D1 U903 ( .A1(n54), .B1(n90), .ZN(n156) );
  INVD1 U904 ( .I(y_mantissa[18]), .ZN(n101) );
  INVD1 U905 ( .I(y_mantissa[19]), .ZN(n98) );
  INVD1 U906 ( .I(y_mantissa[20]), .ZN(n95) );
  INVD1 U907 ( .I(y_mantissa[21]), .ZN(n92) );
  HA1D0 U908 ( .A(n93), .B(n92), .CO(n162), .S(n94) );
  MUX2D0 U909 ( .I0(n13), .I1(n94), .S(n631), .Z(n203) );
  HA1D0 U910 ( .A(n96), .B(n95), .CO(n93), .S(n97) );
  MUX2D0 U911 ( .I0(n12), .I1(n97), .S(n1371), .Z(n206) );
  HA1D0 U912 ( .A(n99), .B(n98), .CO(n96), .S(n100) );
  MUX2D0 U913 ( .I0(n11), .I1(n100), .S(n689), .Z(n212) );
  HA1D0 U914 ( .A(n102), .B(n101), .CO(n99), .S(n103) );
  MUX2D0 U915 ( .I0(n10), .I1(n103), .S(n109), .Z(n218) );
  INVD1 U916 ( .I(y_mantissa[16]), .ZN(n104) );
  MUX2D0 U917 ( .I0(n44), .I1(n105), .S(n109), .Z(n233) );
  XNR2D0 U918 ( .A1(n107), .A2(n106), .ZN(n108) );
  MUX2ND0 U919 ( .I0(n43), .I1(n108), .S(n54), .ZN(n110) );
  MUX2D0 U920 ( .I0(n43), .I1(n110), .S(n109), .Z(n240) );
  XOR2D0 U921 ( .A1(n112), .A2(n111), .Z(n113) );
  MUX2ND0 U922 ( .I0(n42), .I1(n113), .S(n53), .ZN(n114) );
  MUX2D0 U923 ( .I0(n42), .I1(n114), .S(n109), .Z(n247) );
  XNR2D0 U924 ( .A1(n596), .A2(n115), .ZN(n116) );
  MUX2ND0 U925 ( .I0(n41), .I1(n116), .S(n53), .ZN(n117) );
  MUX2D0 U926 ( .I0(n41), .I1(n117), .S(n126), .Z(n256) );
  MUX2ND0 U927 ( .I0(n40), .I1(n588), .S(n54), .ZN(n119) );
  MUX2D0 U928 ( .I0(n40), .I1(n119), .S(n126), .Z(n265) );
  MUX2D0 U929 ( .I0(n39), .I1(n122), .S(n126), .Z(n272) );
  XOR2D0 U930 ( .A1(n124), .A2(n123), .Z(n125) );
  MUX2ND0 U931 ( .I0(n38), .I1(n125), .S(n7), .ZN(n127) );
  MUX2D0 U932 ( .I0(n38), .I1(n127), .S(n126), .Z(n279) );
  XNR2D0 U933 ( .A1(n479), .A2(n128), .ZN(n129) );
  MUX2ND0 U934 ( .I0(n37), .I1(n129), .S(n134), .ZN(n130) );
  MUX2D0 U935 ( .I0(n37), .I1(n130), .S(n138), .Z(n287) );
  XOR2D0 U936 ( .A1(n35), .A2(n131), .Z(n474) );
  MUX2ND0 U937 ( .I0(n36), .I1(n474), .S(n134), .ZN(n132) );
  MUX2D0 U938 ( .I0(n36), .I1(n132), .S(n138), .Z(n294) );
  XOR2D0 U939 ( .A1(n134), .A2(n133), .Z(n135) );
  MUX2D0 U940 ( .I0(n35), .I1(n135), .S(n138), .Z(n301) );
  XNR2D0 U941 ( .A1(n458), .A2(n136), .ZN(n137) );
  MUX2ND0 U942 ( .I0(n34), .I1(n137), .S(n143), .ZN(n139) );
  MUX2D0 U943 ( .I0(n34), .I1(n139), .S(n138), .Z(n309) );
  XOR2D0 U944 ( .A1(y_mantissa[4]), .A2(n140), .Z(n4280) );
  MUX2ND0 U945 ( .I0(y_mantissa[5]), .I1(n4280), .S(n143), .ZN(n141) );
  INVD1 U946 ( .I(n950), .ZN(n149) );
  MUX2D0 U947 ( .I0(n33), .I1(n141), .S(n149), .Z(n319) );
  XOR2D0 U948 ( .A1(n143), .A2(n142), .Z(n144) );
  MUX2D0 U949 ( .I0(n32), .I1(n144), .S(n149), .Z(n326) );
  INVD0 U950 ( .I(n326), .ZN(n324) );
  XOR2D0 U951 ( .A1(y_mantissa[2]), .A2(n145), .Z(n4440) );
  MUX2ND0 U952 ( .I0(y_mantissa[3]), .I1(n4440), .S(n148), .ZN(n146) );
  MUX2D0 U953 ( .I0(n31), .I1(n146), .S(n149), .Z(n333) );
  INVD0 U954 ( .I(n333), .ZN(n331) );
  INVD0 U955 ( .I(y_mantissa[2]), .ZN(n147) );
  XOR2D0 U956 ( .A1(n148), .A2(n147), .Z(n150) );
  MUX2D0 U957 ( .I0(n30), .I1(n150), .S(n149), .Z(n341) );
  INVD0 U958 ( .I(n341), .ZN(n339) );
  HA1D0 U959 ( .A(n152), .B(n151), .CO(n148), .S(n153) );
  INVD0 U960 ( .I(n153), .ZN(n154) );
  HICOND1 U961 ( .A(n154), .CI(n151), .CON(n338) );
  MUX2ND0 U962 ( .I0(n45), .I1(n857), .S(n156), .ZN(n157) );
  MUX2D0 U963 ( .I0(n45), .I1(n157), .S(n1371), .Z(n225) );
  NR2D1 U964 ( .A1(n162), .A2(n55), .ZN(n163) );
  CKBD1 U965 ( .I(n307), .Z(n169) );
  ND2D1 U966 ( .A1(n166), .A2(n29), .ZN(n167) );
  IOA21D1 U967 ( .A1(n168), .A2(n51), .B(n167), .ZN(n1263) );
  HA1D1 U968 ( .A(n172), .B(n171), .CO(n343) );
  INVD1 U969 ( .I(x_mantissa[4]), .ZN(n327) );
  BUFFD0 U970 ( .I(n307), .Z(n317) );
  CKBD1 U971 ( .I(n4290), .Z(n658) );
  INVD1 U972 ( .I(n658), .ZN(n631) );
  BUFFD1 U973 ( .I(n182), .Z(n259) );
  BUFFD1 U974 ( .I(n259), .Z(n195) );
  IOA21D1 U975 ( .A1(n70), .A2(n195), .B(n178), .ZN(n1243) );
  CKND2D1 U976 ( .A1(n177), .A2(n182), .ZN(n179) );
  CKND2D1 U977 ( .A1(n179), .A2(n178), .ZN(n1254) );
  CKND2D1 U978 ( .A1(n183), .A2(n313), .ZN(n184) );
  IOA21D1 U979 ( .A1(n65), .A2(n185), .B(n184), .ZN(n1260) );
  HA1D1 U980 ( .A(n187), .B(n186), .CO(n181), .S(n188) );
  CKND2D1 U981 ( .A1(n188), .A2(n195), .ZN(n189) );
  IOA21D1 U982 ( .A1(n64), .A2(n190), .B(n189), .ZN(n200) );
  HA1D1 U983 ( .A(n192), .B(n191), .CO(n194), .S(n193) );
  MUX2D0 U984 ( .I0(n28), .I1(n193), .S(n55), .Z(n398) );
  HA1D1 U985 ( .A(n194), .B(n29), .CO(n187), .S(n196) );
  CKND2D1 U986 ( .A1(n198), .A2(n197), .ZN(n1230) );
  CKND2D1 U987 ( .A1(n85), .A2(n1230), .ZN(n403) );
  FA1D1 U988 ( .A(n57), .B(n200), .CI(n199), .CO(n1259), .S(n401) );
  CKXOR2D1 U989 ( .A1(n203), .A2(n201), .Z(n202) );
  BUFFD1 U990 ( .I(n307), .Z(n263) );
  BUFFD1 U991 ( .I(n263), .Z(n231) );
  MUX2D0 U992 ( .I0(n203), .I1(n202), .S(n231), .Z(n392) );
  HA1D1 U993 ( .A(n208), .B(n207), .CO(n192), .S(n209) );
  MUX2D0 U994 ( .I0(n27), .I1(n209), .S(DP_OP_20J2_131_4019_n134), .Z(n389) );
  CKXOR2D1 U995 ( .A1(n212), .A2(n210), .Z(n211) );
  MUX2D0 U996 ( .I0(n212), .I1(n211), .S(n231), .Z(n387) );
  HA1D1 U997 ( .A(n214), .B(n213), .CO(n208), .S(n215) );
  MUX2D0 U998 ( .I0(n26), .I1(n215), .S(n313), .Z(n386) );
  BUFFD1 U999 ( .I(n263), .Z(n254) );
  MUX2D0 U1000 ( .I0(n218), .I1(n217), .S(n254), .Z(n385) );
  MUX2D0 U1001 ( .I0(n25), .I1(n221), .S(n55), .Z(n384) );
  MUX2D0 U1002 ( .I0(n225), .I1(n224), .S(n231), .Z(n382) );
  HA1D1 U1003 ( .A(n227), .B(n226), .CO(n220), .S(n228) );
  BUFFD1 U1004 ( .I(n259), .Z(n250) );
  MUX2D0 U1005 ( .I0(n24), .I1(n228), .S(n250), .Z(n381) );
  OR2D1 U1006 ( .A1(n382), .A2(n381), .Z(n1289) );
  MUX2D0 U1007 ( .I0(n233), .I1(n232), .S(n231), .Z(n380) );
  HA1D1 U1008 ( .A(n235), .B(n234), .CO(n227), .S(n236) );
  MUX2D0 U1009 ( .I0(n23), .I1(n236), .S(n250), .Z(n379) );
  HICOND1 U1010 ( .A(n238), .CI(n237), .CON(n230), .S(n239) );
  MUX2D0 U1011 ( .I0(n240), .I1(n239), .S(n254), .Z(n377) );
  HA1D1 U1012 ( .A(n242), .B(n241), .CO(n235), .S(n243) );
  MUX2D0 U1013 ( .I0(n22), .I1(n243), .S(n250), .Z(n376) );
  OR2D1 U1014 ( .A1(n377), .A2(n376), .Z(n1298) );
  MUX2D0 U1015 ( .I0(n247), .I1(n246), .S(n254), .Z(n375) );
  MUX2D0 U1016 ( .I0(n21), .I1(n251), .S(n250), .Z(n374) );
  MUX2D0 U1017 ( .I0(n256), .I1(n255), .S(n254), .Z(n372) );
  HA1D1 U1018 ( .A(n258), .B(n257), .CO(n249), .S(n260) );
  MUX2D0 U1019 ( .I0(n20), .I1(n260), .S(n344), .Z(n371) );
  OR2D1 U1020 ( .A1(n372), .A2(n371), .Z(n1307) );
  MUX2D0 U1021 ( .I0(n265), .I1(n264), .S(n285), .Z(n370) );
  HA1D1 U1022 ( .A(n267), .B(n266), .CO(n258), .S(n268) );
  MUX2D0 U1023 ( .I0(n19), .I1(n268), .S(n344), .Z(n369) );
  MUX2D0 U1024 ( .I0(n272), .I1(n271), .S(n285), .Z(n367) );
  MUX2D0 U1025 ( .I0(n18), .I1(n275), .S(n344), .Z(n366) );
  OR2D0 U1026 ( .A1(n367), .A2(n366), .Z(n1316) );
  MUX2D0 U1027 ( .I0(n279), .I1(n278), .S(n285), .Z(n365) );
  MUX2D0 U1028 ( .I0(n17), .I1(n282), .S(n313), .Z(n364) );
  NR2XD0 U1029 ( .A1(n365), .A2(n364), .ZN(n1319) );
  MUX2D0 U1030 ( .I0(n287), .I1(n286), .S(n285), .Z(n362) );
  MUX2D0 U1031 ( .I0(n16), .I1(n290), .S(n195), .Z(n361) );
  OR2D0 U1032 ( .A1(n362), .A2(n361), .Z(n1325) );
  MUX2D0 U1033 ( .I0(n294), .I1(n293), .S(n317), .Z(n360) );
  MUX2D0 U1034 ( .I0(n15), .I1(n297), .S(n182), .Z(n359) );
  NR2D0 U1035 ( .A1(n360), .A2(n359), .ZN(n1328) );
  MUX2D0 U1036 ( .I0(n301), .I1(n300), .S(n317), .Z(n357) );
  MUX2D0 U1037 ( .I0(x_mantissa[7]), .I1(n304), .S(n259), .Z(n356) );
  OR2D0 U1038 ( .A1(n357), .A2(n356), .Z(n1334) );
  MUX2D0 U1039 ( .I0(n309), .I1(n308), .S(n307), .Z(n355) );
  XNR2D0 U1040 ( .A1(n311), .A2(n310), .ZN(n312) );
  MUX2ND0 U1041 ( .I0(x_mantissa[6]), .I1(n312), .S(n328), .ZN(n314) );
  BUFFD0 U1042 ( .I(n313), .Z(n336) );
  MUX2D0 U1043 ( .I0(x_mantissa[6]), .I1(n314), .S(n336), .Z(n354) );
  NR2D0 U1044 ( .A1(n355), .A2(n354), .ZN(n1337) );
  MUX2D0 U1045 ( .I0(n319), .I1(n318), .S(n317), .Z(n352) );
  XOR2D0 U1046 ( .A1(x_mantissa[4]), .A2(n320), .Z(n321) );
  MUX2ND0 U1047 ( .I0(x_mantissa[5]), .I1(n321), .S(n328), .ZN(n322) );
  MUX2D0 U1048 ( .I0(x_mantissa[5]), .I1(n322), .S(n336), .Z(n351) );
  OR2D0 U1049 ( .A1(n352), .A2(n351), .Z(n1343) );
  MUX2D0 U1050 ( .I0(n326), .I1(n325), .S(n317), .Z(n350) );
  XOR2D0 U1051 ( .A1(n328), .A2(n327), .Z(n329) );
  MUX2D0 U1052 ( .I0(x_mantissa[4]), .I1(n329), .S(n336), .Z(n349) );
  NR2D0 U1053 ( .A1(n350), .A2(n349), .ZN(n1346) );
  MUX2D0 U1054 ( .I0(n333), .I1(n332), .S(n169), .Z(n347) );
  XOR2D0 U1055 ( .A1(x_mantissa[2]), .A2(n334), .Z(n335) );
  MUX2ND0 U1056 ( .I0(x_mantissa[3]), .I1(n335), .S(n343), .ZN(n337) );
  MUX2D0 U1057 ( .I0(x_mantissa[3]), .I1(n337), .S(n336), .Z(n346) );
  OR2D0 U1058 ( .A1(n347), .A2(n346), .Z(n1352) );
  MUX2D0 U1059 ( .I0(n341), .I1(n340), .S(n263), .Z(n1356) );
  XOR2D0 U1060 ( .A1(n343), .A2(n342), .Z(n345) );
  MUX2D0 U1061 ( .I0(x_mantissa[2]), .I1(n345), .S(n344), .Z(n1355) );
  CKND2D0 U1062 ( .A1(n1356), .A2(n1355), .ZN(n1357) );
  INVD0 U1063 ( .I(n1357), .ZN(n1353) );
  CKND2D0 U1064 ( .A1(n347), .A2(n346), .ZN(n1351) );
  INVD0 U1065 ( .I(n1351), .ZN(n348) );
  AOI21D0 U1066 ( .A1(n1352), .A2(n1353), .B(n348), .ZN(n1349) );
  CKND2D0 U1067 ( .A1(n350), .A2(n349), .ZN(n1347) );
  OAI21D0 U1068 ( .A1(n1346), .A2(n1349), .B(n1347), .ZN(n1344) );
  INVD0 U1069 ( .I(n1342), .ZN(n353) );
  AOI21D0 U1070 ( .A1(n1343), .A2(n1344), .B(n353), .ZN(n1340) );
  OAI21D0 U1071 ( .A1(n1337), .A2(n1340), .B(n1338), .ZN(n1335) );
  INVD0 U1072 ( .I(n1333), .ZN(n358) );
  AOI21D1 U1073 ( .A1(n1334), .A2(n1335), .B(n358), .ZN(n1331) );
  INVD0 U1074 ( .I(n1324), .ZN(n363) );
  AOI21D1 U1075 ( .A1(n1325), .A2(n1326), .B(n363), .ZN(n1322) );
  OAI21D1 U1076 ( .A1(n1319), .A2(n1322), .B(n1320), .ZN(n1317) );
  INVD0 U1077 ( .I(n1315), .ZN(n368) );
  AOI21D1 U1078 ( .A1(n1316), .A2(n1317), .B(n368), .ZN(n1313) );
  OAI21D1 U1079 ( .A1(n1310), .A2(n1313), .B(n1311), .ZN(n1308) );
  INVD0 U1080 ( .I(n1306), .ZN(n373) );
  AOI21D1 U1081 ( .A1(n1307), .A2(n1308), .B(n373), .ZN(n1304) );
  OAI21D1 U1082 ( .A1(n1301), .A2(n1304), .B(n1302), .ZN(n1299) );
  AOI21D1 U1083 ( .A1(n1298), .A2(n1299), .B(n378), .ZN(n1295) );
  OAI21D1 U1084 ( .A1(n1292), .A2(n1295), .B(n1293), .ZN(n1290) );
  AOI21D1 U1085 ( .A1(n1289), .A2(n1290), .B(n383), .ZN(n1251) );
  OAI21D1 U1086 ( .A1(n1248), .A2(n1251), .B(n1249), .ZN(n1286) );
  AOI21D1 U1087 ( .A1(n1285), .A2(n1286), .B(n388), .ZN(n1282) );
  OAI21D1 U1088 ( .A1(n1279), .A2(n1282), .B(n1280), .ZN(n1277) );
  AOI21D1 U1089 ( .A1(n1276), .A2(n1277), .B(n393), .ZN(n1273) );
  NR2XD0 U1090 ( .A1(n400), .A2(n399), .ZN(n1270) );
  CKND2D1 U1091 ( .A1(n400), .A2(n399), .ZN(n1271) );
  OAI21D1 U1092 ( .A1(n1273), .A2(n1270), .B(n1271), .ZN(n1268) );
  INVD1 U1093 ( .I(n1267), .ZN(n402) );
  INVD0 U1094 ( .I(n1246), .ZN(n1240) );
  NR2D0 U1095 ( .A1(n32), .A2(n31), .ZN(n4330) );
  NR2D0 U1096 ( .A1(n4320), .A2(n4330), .ZN(n427) );
  CKND2D0 U1097 ( .A1(n4380), .A2(n4400), .ZN(n4300) );
  CKND2D0 U1098 ( .A1(n4340), .A2(n4310), .ZN(n426) );
  XNR2D0 U1099 ( .A1(n473), .A2(n4280), .ZN(n715) );
  INVD1 U1100 ( .I(n4290), .ZN(n1061) );
  NR2XD0 U1101 ( .A1(n4490), .A2(n47), .ZN(n540) );
  INVD0 U1102 ( .I(n4300), .ZN(n4450) );
  OAI21D0 U1103 ( .A1(n4450), .A2(n4320), .B(n4310), .ZN(n4370) );
  INVD0 U1104 ( .I(n4330), .ZN(n4350) );
  CKND2D0 U1105 ( .A1(n4350), .A2(n4340), .ZN(n4360) );
  XNR2D0 U1106 ( .A1(n4370), .A2(n4360), .ZN(n706) );
  NR2D0 U1107 ( .A1(n540), .A2(n538), .ZN(n4510) );
  CKND2D0 U1108 ( .A1(n72), .A2(n4380), .ZN(n4390) );
  XOR2D0 U1109 ( .A1(n4390), .A2(n4400), .Z(n686) );
  OR2D0 U1110 ( .A1(n4420), .A2(x_mantissa[1]), .Z(n524) );
  OR2D0 U1111 ( .A1(n8), .A2(y_mantissa[0]), .Z(n4410) );
  CKAN2D0 U1112 ( .A1(n4410), .A2(n4400), .Z(n688) );
  INVD0 U1113 ( .I(n528), .ZN(n525) );
  INVD0 U1114 ( .I(n523), .ZN(n4430) );
  AOI21D0 U1115 ( .A1(n524), .A2(n525), .B(n4430), .ZN(n521) );
  XOR2D0 U1116 ( .A1(n4450), .A2(n4440), .Z(n680) );
  NR2D0 U1117 ( .A1(n4470), .A2(n46), .ZN(n518) );
  INVD0 U1118 ( .I(n458), .ZN(n4530) );
  INVD0 U1119 ( .I(n459), .ZN(n4520) );
  INVD0 U1120 ( .I(n457), .ZN(n4540) );
  CKND2D0 U1121 ( .A1(n4540), .A2(n460), .ZN(n4550) );
  XOR2D0 U1122 ( .A1(n4560), .A2(n4550), .Z(n673) );
  CKND2D0 U1123 ( .A1(n460), .A2(n459), .ZN(n485) );
  INVD0 U1124 ( .I(n480), .ZN(n461) );
  CKND2D0 U1125 ( .A1(n461), .A2(n482), .ZN(n462) );
  XOR2D0 U1126 ( .A1(n463), .A2(n462), .Z(n667) );
  INVD0 U1127 ( .I(n481), .ZN(n469) );
  NR2D0 U1128 ( .A1(n469), .A2(n480), .ZN(n472) );
  INVD0 U1129 ( .I(n485), .ZN(n470) );
  OAI21D0 U1130 ( .A1(n470), .A2(n480), .B(n482), .ZN(n471) );
  XOR2D0 U1131 ( .A1(n475), .A2(n474), .Z(n659) );
  INVD0 U1132 ( .I(n478), .ZN(n496) );
  INVD0 U1133 ( .I(n648), .ZN(n656) );
  CKND2D0 U1134 ( .A1(n483), .A2(n482), .ZN(n484) );
  INVD0 U1135 ( .I(n562), .ZN(n490) );
  INVD0 U1136 ( .I(n497), .ZN(n500) );
  OAI21D1 U1137 ( .A1(n502), .A2(n573), .B(n579), .ZN(n560) );
  INVD0 U1138 ( .I(n561), .ZN(n503) );
  XNR2D0 U1139 ( .A1(n517), .A2(n516), .ZN(n547) );
  OR2D0 U1140 ( .A1(n547), .A2(n49), .Z(n670) );
  INVD0 U1141 ( .I(n518), .ZN(n520) );
  CKND2D0 U1142 ( .A1(n520), .A2(n519), .ZN(n522) );
  XOR2D0 U1143 ( .A1(n522), .A2(n521), .Z(n531) );
  OR2D0 U1144 ( .A1(n531), .A2(n61), .Z(n676) );
  CKND2D0 U1145 ( .A1(n524), .A2(n523), .ZN(n526) );
  XNR2D0 U1146 ( .A1(n526), .A2(n525), .ZN(n530) );
  NR2D0 U1147 ( .A1(n530), .A2(n46), .ZN(n682) );
  OR2D0 U1148 ( .A1(n527), .A2(x_mantissa[0]), .Z(n529) );
  CKAN2D0 U1149 ( .A1(n529), .A2(n528), .Z(n691) );
  OAI21D0 U1150 ( .A1(n682), .A2(n692), .B(n683), .ZN(n677) );
  INVD0 U1151 ( .I(n675), .ZN(n532) );
  INVD0 U1152 ( .I(n538), .ZN(n533) );
  INVD0 U1153 ( .I(n534), .ZN(n539) );
  XOR2D0 U1154 ( .A1(n535), .A2(n539), .Z(n536) );
  NR2D0 U1155 ( .A1(n536), .A2(n47), .ZN(n700) );
  INVD0 U1156 ( .I(n540), .ZN(n542) );
  CKND2D0 U1157 ( .A1(n542), .A2(n541), .ZN(n543) );
  XNR2D0 U1158 ( .A1(n544), .A2(n543), .ZN(n545) );
  OR2D0 U1159 ( .A1(n545), .A2(n48), .Z(n711) );
  INVD0 U1160 ( .I(n710), .ZN(n546) );
  INVD0 U1161 ( .I(n669), .ZN(n662) );
  INVD0 U1162 ( .I(n663), .ZN(n549) );
  INVD0 U1163 ( .I(n655), .ZN(n555) );
  INVD0 U1164 ( .I(n649), .ZN(n554) );
  AOI21D1 U1165 ( .A1(n558), .A2(n647), .B(n557), .ZN(n780) );
  INVD0 U1166 ( .I(n598), .ZN(n566) );
  CKND2D0 U1167 ( .A1(n564), .A2(n563), .ZN(n602) );
  INVD0 U1168 ( .I(n602), .ZN(n565) );
  AOI21D1 U1169 ( .A1(n583), .A2(n582), .B(n581), .ZN(n885) );
  CKND2D0 U1170 ( .A1(n598), .A2(n585), .ZN(n587) );
  INVD0 U1171 ( .I(n599), .ZN(n584) );
  AOI21D1 U1172 ( .A1(n737), .A2(n771), .B(n776), .ZN(n644) );
  CKND2D0 U1173 ( .A1(n600), .A2(n599), .ZN(n601) );
  INVD0 U1174 ( .I(n797), .ZN(n616) );
  AOI21D1 U1175 ( .A1(n806), .A2(n616), .B(n615), .ZN(n782) );
  INVD0 U1176 ( .I(n845), .ZN(n808) );
  INVD0 U1177 ( .I(n785), .ZN(n617) );
  INVD0 U1178 ( .I(n783), .ZN(n621) );
  INVD0 U1179 ( .I(n774), .ZN(n627) );
  INVD0 U1180 ( .I(n60), .ZN(n832) );
  CKAN2D0 U1181 ( .A1(n630), .A2(n832), .Z(n632) );
  INVD1 U1182 ( .I(n679), .ZN(n828) );
  INVD0 U1183 ( .I(n734), .ZN(n634) );
  INVD0 U1184 ( .I(n635), .ZN(n637) );
  INVD0 U1185 ( .I(n60), .ZN(n749) );
  CKAN2D0 U1186 ( .A1(n640), .A2(n749), .Z(n641) );
  XOR2D0 U1187 ( .A1(n641), .A2(n739), .Z(n760) );
  INVD0 U1188 ( .I(n770), .ZN(n642) );
  CKAN2D0 U1189 ( .A1(n645), .A2(n832), .Z(n646) );
  XOR2D0 U1190 ( .A1(n646), .A2(n739), .Z(n762) );
  CKAN2D0 U1191 ( .A1(n653), .A2(n749), .Z(n654) );
  XOR2D0 U1192 ( .A1(n654), .A2(n751), .Z(n730) );
  INVD0 U1193 ( .I(n658), .ZN(n714) );
  CKAN2D0 U1194 ( .A1(n659), .A2(n714), .Z(n660) );
  XOR2D0 U1195 ( .A1(n660), .A2(n751), .Z(n728) );
  NR2D0 U1196 ( .A1(n1197), .A2(n1195), .ZN(n733) );
  CKAN2D0 U1197 ( .A1(n667), .A2(n714), .Z(n668) );
  XOR2D0 U1198 ( .A1(n668), .A2(n751), .Z(n723) );
  XNR2D0 U1199 ( .A1(n672), .A2(n671), .ZN(n722) );
  CKAN2D0 U1200 ( .A1(n673), .A2(n714), .Z(n674) );
  BUFFD1 U1201 ( .I(n828), .Z(n952) );
  XOR2D0 U1202 ( .A1(n674), .A2(n716), .Z(n721) );
  OR2D0 U1203 ( .A1(n722), .A2(n721), .Z(n1209) );
  CKND2D0 U1204 ( .A1(n1205), .A2(n1209), .ZN(n727) );
  CKND2D0 U1205 ( .A1(n676), .A2(n675), .ZN(n678) );
  XNR2D0 U1206 ( .A1(n678), .A2(n677), .ZN(n698) );
  INVD0 U1207 ( .I(n679), .ZN(n705) );
  CKAN2D0 U1208 ( .A1(n680), .A2(n705), .Z(n681) );
  XOR2D0 U1209 ( .A1(n681), .A2(n716), .Z(n697) );
  OR2D0 U1210 ( .A1(n698), .A2(n697), .Z(n1222) );
  INVD0 U1211 ( .I(n682), .ZN(n684) );
  CKND2D0 U1212 ( .A1(n684), .A2(n683), .ZN(n685) );
  XOR2D0 U1213 ( .A1(n685), .A2(n692), .Z(n695) );
  CKAN2D0 U1214 ( .A1(n686), .A2(n705), .Z(n687) );
  BUFFD1 U1215 ( .I(n952), .Z(n689) );
  XOR2D0 U1216 ( .A1(n687), .A2(n689), .Z(n694) );
  NR2D0 U1217 ( .A1(n695), .A2(n694), .ZN(n1225) );
  CKAN2D0 U1218 ( .A1(n688), .A2(n705), .Z(n690) );
  XOR2D0 U1219 ( .A1(n690), .A2(n689), .Z(n1149) );
  OR2D0 U1220 ( .A1(n691), .A2(n9), .Z(n693) );
  CKAN2D0 U1221 ( .A1(n693), .A2(n692), .Z(n1148) );
  INVD0 U1222 ( .I(n1228), .ZN(n696) );
  OAI21D0 U1223 ( .A1(n1225), .A2(n696), .B(n1226), .ZN(n1223) );
  INVD0 U1224 ( .I(n1221), .ZN(n699) );
  INVD0 U1225 ( .I(n700), .ZN(n702) );
  CKND2D0 U1226 ( .A1(n702), .A2(n701), .ZN(n703) );
  XOR2D0 U1227 ( .A1(n704), .A2(n703), .Z(n709) );
  CKAN2D0 U1228 ( .A1(n706), .A2(n705), .Z(n707) );
  XOR2D0 U1229 ( .A1(n707), .A2(n716), .Z(n708) );
  NR2D0 U1230 ( .A1(n709), .A2(n708), .ZN(n1216) );
  XNR2D0 U1231 ( .A1(n713), .A2(n712), .ZN(n719) );
  CKAN2D0 U1232 ( .A1(n715), .A2(n714), .Z(n717) );
  XOR2D0 U1233 ( .A1(n717), .A2(n716), .Z(n718) );
  OR2D0 U1234 ( .A1(n719), .A2(n718), .Z(n1213) );
  INVD0 U1235 ( .I(n1212), .ZN(n720) );
  INVD0 U1236 ( .I(n1208), .ZN(n1203) );
  INVD0 U1237 ( .I(n1204), .ZN(n725) );
  CKAN2D0 U1238 ( .A1(n738), .A2(n749), .Z(n740) );
  XOR2D0 U1239 ( .A1(n740), .A2(n739), .Z(n755) );
  INVD0 U1240 ( .I(n744), .ZN(n746) );
  CKAN2D0 U1241 ( .A1(n750), .A2(n749), .Z(n752) );
  XOR2D0 U1242 ( .A1(n752), .A2(n751), .Z(n753) );
  INVD0 U1243 ( .I(n1176), .ZN(n765) );
  INVD0 U1244 ( .I(n1178), .ZN(n764) );
  AOI21D1 U1245 ( .A1(n769), .A2(n1136), .B(n768), .ZN(n1122) );
  OAI21D1 U1246 ( .A1(n780), .A2(n779), .B(n778), .ZN(n1030) );
  CKND2D0 U1247 ( .A1(n808), .A2(n844), .ZN(n788) );
  CKND2D0 U1248 ( .A1(n786), .A2(n785), .ZN(n849) );
  INVD0 U1249 ( .I(n843), .ZN(n789) );
  INVD0 U1250 ( .I(n798), .ZN(n801) );
  AOI21D1 U1251 ( .A1(n806), .A2(n876), .B(n882), .ZN(n841) );
  INVD0 U1252 ( .I(n844), .ZN(n807) );
  INVD0 U1253 ( .I(n849), .ZN(n809) );
  INVD0 U1254 ( .I(n842), .ZN(n816) );
  INVD0 U1255 ( .I(n875), .ZN(n821) );
  INVD0 U1256 ( .I(n838), .ZN(n824) );
  CKAN2D0 U1257 ( .A1(n827), .A2(n832), .Z(n829) );
  XOR2D0 U1258 ( .A1(n829), .A2(n974), .Z(n868) );
  INVD0 U1259 ( .I(n835), .ZN(n830) );
  CKAN2D0 U1260 ( .A1(n833), .A2(n832), .Z(n834) );
  XOR2D0 U1261 ( .A1(n834), .A2(n974), .Z(n866) );
  INVD0 U1262 ( .I(n893), .ZN(n840) );
  CKND2D0 U1263 ( .A1(n847), .A2(n846), .ZN(n848) );
  INVD0 U1264 ( .I(n879), .ZN(n859) );
  INVD0 U1265 ( .I(n679), .ZN(n980) );
  CKAN2D0 U1266 ( .A1(n864), .A2(n980), .Z(n865) );
  XOR2D0 U1267 ( .A1(n865), .A2(n974), .Z(n870) );
  OAI21D1 U1268 ( .A1(n1122), .A2(n874), .B(n873), .ZN(n1112) );
  INVD0 U1269 ( .I(n899), .ZN(n886) );
  INVD0 U1270 ( .I(n911), .ZN(n890) );
  INVD0 U1271 ( .I(n936), .ZN(n904) );
  CKND2D0 U1272 ( .A1(n902), .A2(n901), .ZN(n940) );
  INVD0 U1273 ( .I(n940), .ZN(n903) );
  INVD0 U1274 ( .I(n914), .ZN(n908) );
  INVD0 U1275 ( .I(n999), .ZN(n916) );
  INVD0 U1276 ( .I(n937), .ZN(n917) );
  INVD0 U1277 ( .I(n934), .ZN(n921) );
  INVD0 U1278 ( .I(n1020), .ZN(n930) );
  OAI21D1 U1279 ( .A1(n979), .A2(n930), .B(n929), .ZN(n1071) );
  CKND2D0 U1280 ( .A1(n938), .A2(n937), .ZN(n939) );
  INVD0 U1281 ( .I(n1035), .ZN(n1010) );
  INVD0 U1282 ( .I(n1002), .ZN(n945) );
  INVD0 U1283 ( .I(n950), .ZN(n1077) );
  CKAN2D0 U1284 ( .A1(n951), .A2(n1077), .Z(n953) );
  XOR2D0 U1285 ( .A1(n953), .A2(n689), .Z(n991) );
  INVD0 U1286 ( .I(n957), .ZN(n959) );
  CKAN2D0 U1287 ( .A1(n962), .A2(n980), .Z(n963) );
  INVD0 U1288 ( .I(n968), .ZN(n970) );
  CKAN2D0 U1289 ( .A1(n973), .A2(n980), .Z(n975) );
  CKAN2D0 U1290 ( .A1(n981), .A2(n980), .Z(n982) );
  XOR2D0 U1291 ( .A1(n982), .A2(n1371), .Z(n985) );
  INVD0 U1292 ( .I(n1165), .ZN(n988) );
  AOI21D1 U1293 ( .A1(n988), .A2(n1169), .B(n987), .ZN(n1113) );
  INVD0 U1294 ( .I(n1037), .ZN(n1008) );
  CKND2D0 U1295 ( .A1(n1008), .A2(n1010), .ZN(n1012) );
  INVD0 U1296 ( .I(n1057), .ZN(n1041) );
  INVD0 U1297 ( .I(n1038), .ZN(n1009) );
  INVD0 U1298 ( .I(n1036), .ZN(n1013) );
  AOI21D1 U1299 ( .A1(n1031), .A2(n1030), .B(n1029), .ZN(n1096) );
  INVD1 U1300 ( .I(n1096), .ZN(n1065) );
  INVD0 U1301 ( .I(n1051), .ZN(n1032) );
  NR2D0 U1302 ( .A1(n1036), .A2(n1035), .ZN(n1040) );
  INVD0 U1303 ( .I(n1040), .ZN(n1056) );
  OR2D0 U1304 ( .A1(n1037), .A2(n1056), .Z(n1059) );
  CKND2D0 U1305 ( .A1(n1039), .A2(n1038), .ZN(n1054) );
  INVD0 U1306 ( .I(n1052), .ZN(n1046) );
  NR2D0 U1307 ( .A1(n1054), .A2(n65), .ZN(n1055) );
  OA21D0 U1308 ( .A1(n1057), .A2(n1056), .B(n1055), .Z(n1058) );
  CKAN2D0 U1309 ( .A1(n1063), .A2(n1077), .Z(n1101) );
  INVD0 U1310 ( .I(n1101), .ZN(n1064) );
  XOR2D0 U1311 ( .A1(n1064), .A2(n1150), .Z(n1084) );
  IND2D0 U1312 ( .A1(n1066), .B1(n1077), .ZN(n1067) );
  IND2D0 U1313 ( .A1(n1078), .B1(n1077), .ZN(n1079) );
  INVD0 U1314 ( .I(n1151), .ZN(n1087) );
  INVD0 U1315 ( .I(n1154), .ZN(n1086) );
  NR2D0 U1316 ( .A1(n1087), .A2(n1086), .ZN(n1088) );
  HA1D0 U1317 ( .A(n1100), .B(n1099), .S(n1103) );
  XOR2D0 U1318 ( .A1(n1101), .A2(n1150), .Z(n1102) );
  AOI21D1 U1319 ( .A1(n78), .A2(n1159), .B(n1109), .ZN(n1153) );
  OAI21D1 U1320 ( .A1(n1167), .A2(n1114), .B(n1113), .ZN(n1164) );
  INVD0 U1321 ( .I(n1131), .ZN(n1133) );
  INVD0 U1322 ( .I(n1195), .ZN(n1146) );
  XOR2D0 U1323 ( .A1(n1196), .A2(n1147), .Z(base_c1[7]) );
  FA1D0 U1324 ( .A(n1150), .B(n1149), .CI(n1148), .CO(n1228), .S(base_c1[0])
         );
  INVD0 U1325 ( .I(n1185), .ZN(n1187) );
  INVD0 U1326 ( .I(n1197), .ZN(n1199) );
  XNR2D0 U1327 ( .A1(n1201), .A2(n1200), .ZN(base_c1[8]) );
  INVD0 U1328 ( .I(n1202), .ZN(n1210) );
  XOR2D0 U1329 ( .A1(n1207), .A2(n1206), .Z(base_c1[6]) );
  XNR2D0 U1330 ( .A1(n1211), .A2(n1210), .ZN(base_c1[5]) );
  XNR2D0 U1331 ( .A1(n1215), .A2(n1214), .ZN(base_c1[4]) );
  INVD0 U1332 ( .I(n1216), .ZN(n1218) );
  XOR2D0 U1333 ( .A1(n1220), .A2(n1219), .Z(base_c1[3]) );
  XNR2D0 U1334 ( .A1(n1224), .A2(n1223), .ZN(base_c1[2]) );
  INVD0 U1335 ( .I(n1225), .ZN(n1227) );
  XNR2D0 U1336 ( .A1(n1229), .A2(n1228), .ZN(base_c1[1]) );
  AOI21D1 U1337 ( .A1(n1257), .A2(n85), .B(n1231), .ZN(d1_c1[28]) );
  FA1D0 U1338 ( .A(n56), .B(n1233), .CI(n1232), .CO(n197), .S(n1234) );
  CKND2D1 U1339 ( .A1(n69), .A2(n1234), .ZN(n1235) );
  CKND2D1 U1340 ( .A1(n84), .A2(n1235), .ZN(n1236) );
  CKXOR2D1 U1341 ( .A1(n1236), .A2(n1246), .Z(d1_c1[26]) );
  FA1D0 U1342 ( .A(n57), .B(n1243), .CI(n1237), .CO(n1232), .S(n1238) );
  CKND2D1 U1343 ( .A1(n83), .A2(n1239), .ZN(n1241) );
  XNR2D0 U1344 ( .A1(n1241), .A2(n1240), .ZN(d1_c1[25]) );
  CKND2D1 U1345 ( .A1(n82), .A2(n1245), .ZN(n1247) );
  XOR2D0 U1346 ( .A1(n1247), .A2(n1246), .Z(d1_c1[24]) );
  FA1D1 U1347 ( .A(n57), .B(n1254), .CI(n1253), .CO(n1242), .S(n1255) );
  XNR2D1 U1348 ( .A1(n1258), .A2(n1257), .ZN(d1_c1[23]) );
  FA1D1 U1349 ( .A(n57), .B(n1260), .CI(n1259), .CO(n1253), .S(n1262) );
  INVD0 U1350 ( .I(n1292), .ZN(n1294) );
  INVD0 U1351 ( .I(n1301), .ZN(n1303) );
  INVD0 U1352 ( .I(n1310), .ZN(n1312) );
  XNR2D0 U1353 ( .A1(n1318), .A2(n1317), .ZN(d1_c1[9]) );
  INVD0 U1354 ( .I(n1319), .ZN(n1321) );
  XOR2D0 U1355 ( .A1(n1323), .A2(n1322), .Z(d1_c1[8]) );
  XNR2D0 U1356 ( .A1(n1327), .A2(n1326), .ZN(d1_c1[7]) );
  INVD0 U1357 ( .I(n1328), .ZN(n1330) );
  XOR2D0 U1358 ( .A1(n1332), .A2(n1331), .Z(d1_c1[6]) );
  XNR2D0 U1359 ( .A1(n1336), .A2(n1335), .ZN(d1_c1[5]) );
  INVD0 U1360 ( .I(n1337), .ZN(n1339) );
  CKND2D0 U1361 ( .A1(n1339), .A2(n1338), .ZN(n1341) );
  XOR2D0 U1362 ( .A1(n1341), .A2(n1340), .Z(d1_c1[4]) );
  CKND2D0 U1363 ( .A1(n1343), .A2(n1342), .ZN(n1345) );
  XNR2D0 U1364 ( .A1(n1345), .A2(n1344), .ZN(d1_c1[3]) );
  INVD0 U1365 ( .I(n1346), .ZN(n1348) );
  CKND2D0 U1366 ( .A1(n1348), .A2(n1347), .ZN(n1350) );
  XOR2D0 U1367 ( .A1(n1350), .A2(n1349), .Z(d1_c1[2]) );
  CKND2D0 U1368 ( .A1(n1352), .A2(n1351), .ZN(n1354) );
  XNR2D0 U1369 ( .A1(n1354), .A2(n1353), .ZN(d1_c1[1]) );
  OR2D0 U1370 ( .A1(n1356), .A2(n1355), .Z(n1358) );
  CKAN2D0 U1371 ( .A1(n1358), .A2(n1357), .Z(d1_c1[0]) );
  BUFFD1 U1372 ( .I(divide_s5), .Z(n1362) );
  BUFFD1 U1373 ( .I(n1362), .Z(n1370) );
  FA1D0 U1374 ( .A(carry2[4]), .B(sum2[4]), .CI(n1359), .CO(n416), .S(
        shared_comb[4]) );
  FA1D0 U1375 ( .A(carry2[6]), .B(sum2[6]), .CI(n1360), .CO(n1361), .S(
        shared_comb[6]) );
  FA1D0 U1376 ( .A(carry2[7]), .B(sum2[7]), .CI(n1361), .CO(n404), .S(
        shared_comb[7]) );
  MUX2D0 U1377 ( .I0(shared_s5[26]), .I1(divided_s5[26]), .S(n1370), .Z(N454)
         );
  BUFFD1 U1378 ( .I(n1362), .Z(n1363) );
  MUX2D0 U1379 ( .I0(shared_s5[24]), .I1(divided_s5[24]), .S(n1363), .Z(N452)
         );
  MUX2D0 U1380 ( .I0(shared_s5[25]), .I1(divided_s5[25]), .S(n1363), .Z(N453)
         );
  MUX2D0 U1381 ( .I0(shared_s5[19]), .I1(divided_s5[19]), .S(divide_s5), .Z(
        N447) );
  MUX2D0 U1382 ( .I0(shared_s5[21]), .I1(divided_s5[21]), .S(n1362), .Z(N449)
         );
  MUX2D0 U1383 ( .I0(shared_s5[22]), .I1(divided_s5[22]), .S(n1363), .Z(N450)
         );
  MUX2D0 U1384 ( .I0(shared_s5[23]), .I1(divided_s5[23]), .S(n1363), .Z(N451)
         );
  MUX2D0 U1385 ( .I0(shared_s5[11]), .I1(divided_s5[11]), .S(n1369), .Z(N439)
         );
  MUX2D0 U1386 ( .I0(shared_s5[12]), .I1(divided_s5[12]), .S(n1369), .Z(N440)
         );
  BUFFD1 U1387 ( .I(divide_s5), .Z(n1365) );
  BUFFD1 U1388 ( .I(n1365), .Z(n1364) );
  MUX2D0 U1389 ( .I0(shared_s5[13]), .I1(divided_s5[13]), .S(n1364), .Z(N441)
         );
  MUX2D0 U1390 ( .I0(shared_s5[14]), .I1(divided_s5[14]), .S(n1364), .Z(N442)
         );
  MUX2D0 U1391 ( .I0(shared_s5[15]), .I1(divided_s5[15]), .S(n1364), .Z(N443)
         );
  MUX2D0 U1392 ( .I0(shared_s5[16]), .I1(divided_s5[16]), .S(n1364), .Z(N444)
         );
  MUX2D0 U1393 ( .I0(shared_s5[17]), .I1(divided_s5[17]), .S(n1365), .Z(N445)
         );
  MUX2D0 U1394 ( .I0(shared_s5[18]), .I1(divided_s5[18]), .S(n1365), .Z(N446)
         );
  MUX2D0 U1395 ( .I0(shared_s5[20]), .I1(divided_s5[20]), .S(n1365), .Z(N448)
         );
  MUX2D0 U1396 ( .I0(shared_s5[0]), .I1(divided_s5[0]), .S(n1370), .Z(N428) );
  MUX2D0 U1397 ( .I0(shared_s5[1]), .I1(divided_s5[1]), .S(n1366), .Z(N429) );
  MUX2D0 U1398 ( .I0(shared_s5[2]), .I1(divided_s5[2]), .S(n1366), .Z(N430) );
  MUX2D0 U1399 ( .I0(shared_s5[4]), .I1(divided_s5[4]), .S(n1366), .Z(N432) );
  MUX2D0 U1400 ( .I0(shared_s5[3]), .I1(divided_s5[3]), .S(n1366), .Z(N431) );
  MUX2D0 U1401 ( .I0(shared_s5[5]), .I1(divided_s5[5]), .S(n1368), .Z(N433) );
  MUX2D0 U1402 ( .I0(shared_s5[6]), .I1(divided_s5[6]), .S(n1368), .Z(N434) );
  MUX2D0 U1403 ( .I0(shared_s5[7]), .I1(divided_s5[7]), .S(n1368), .Z(N435) );
  MUX2D0 U1404 ( .I0(shared_s5[8]), .I1(divided_s5[8]), .S(n1368), .Z(N436) );
  MUX2D0 U1405 ( .I0(shared_s5[9]), .I1(divided_s5[9]), .S(n1369), .Z(N437) );
  MUX2D0 U1406 ( .I0(shared_s5[10]), .I1(divided_s5[10]), .S(n1369), .Z(N438)
         );
  CKMUX2D1 U1407 ( .I0(shared_s5[28]), .I1(divided_s5[28]), .S(n1370), .Z(N456) );
  HA1D0 U1408 ( .A(sum2[3]), .B(carry2[3]), .CO(n1359), .S(shared_comb[3]) );
endmodule


module oadm_dm_fixed_APPROX_LEVEL1 ( clk, x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input clk, divide_mode;
  wire   sign_out, invalid_operation, infinity_result, zero_result, sign_s1,
         invalid_s1, infinity_s1, zero_s1, sign_s2, invalid_s2, infinity_s2,
         zero_s2, sign_s3, invalid_s3, infinity_s3, zero_s3, sign_s4,
         invalid_s4, infinity_s4, zero_s4, N62, N63, N64, N65, N66, N67, N68,
         N69, N70, sign_s5, invalid_s6, invalid_s5, infinity_s6, infinity_s5,
         zero_s6, zero_s5, finite_result_31_, N150, N151, N152, N153, N154,
         N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N169, N170, N171, N181, n148, n149, n1500, n1510,
         n1520, n1530, n1540, n1550, n1560, C2_Z_7, C2_Z_6, C2_Z_5, C2_Z_4,
         C2_Z_3, C2_Z_2, C2_Z_1, C2_Z_0, DP_OP_58J1_124_7635_n50,
         DP_OP_58J1_124_7635_n49, DP_OP_58J1_124_7635_n48,
         DP_OP_58J1_124_7635_n47, DP_OP_58J1_124_7635_n46,
         DP_OP_58J1_124_7635_n45, DP_OP_58J1_124_7635_n44,
         DP_OP_58J1_124_7635_n43, DP_OP_58J1_124_7635_n10,
         DP_OP_58J1_124_7635_n9, DP_OP_58J1_124_7635_n8,
         DP_OP_58J1_124_7635_n7, DP_OP_58J1_124_7635_n6,
         DP_OP_58J1_124_7635_n5, DP_OP_58J1_124_7635_n4,
         DP_OP_58J1_124_7635_n3, DP_OP_57J1_123_2635_n8,
         DP_OP_57J1_123_2635_n7, DP_OP_57J1_123_2635_n6,
         DP_OP_57J1_123_2635_n5, DP_OP_57J1_123_2635_n4,
         DP_OP_57J1_123_2635_n3, DP_OP_57J1_123_2635_n2,
         DP_OP_57J1_123_2635_n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n620, n630, n640, n650, n660, n670,
         n680, n690, n700, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n1570, n1580, n1590,
         n1600, n1610, n1620, n1630, n1640, n1650, n1660, n1670, n1680, n1690,
         n1700, n1710, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n1810, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280;
  wire   [28:0] core_value;
  wire   [10:0] exponent_s1;
  wire   [10:0] exponent_s2;
  wire   [10:0] exponent_s3;
  wire   [10:0] exponent_s4;
  wire   [11:0] exponent_s6;
  wire   [10:0] exponent_s5;

  oadm_core_fixed_APPROX_LEVEL1 mantissa_core ( .clk(clk), .x_mantissa({1'b0, 
        x[22:4], n53, x[2:0]}), .y_mantissa({1'b0, y[22:0]}), .divide_mode(
        n280), .mantissa_value(core_value) );
  DFQD1 infinity_s1_reg ( .D(infinity_result), .CP(clk), .Q(infinity_s1) );
  DFQD1 invalid_s1_reg ( .D(invalid_operation), .CP(clk), .Q(invalid_s1) );
  DFQD1 zero_s1_reg ( .D(zero_result), .CP(clk), .Q(zero_s1) );
  DFQD1 zero_s2_reg ( .D(zero_s1), .CP(clk), .Q(zero_s2) );
  DFQD1 zero_s3_reg ( .D(zero_s2), .CP(clk), .Q(zero_s3) );
  DFQD1 zero_s4_reg ( .D(zero_s3), .CP(clk), .Q(zero_s4) );
  DFQD1 zero_s5_reg ( .D(zero_s4), .CP(clk), .Q(zero_s5) );
  DFQD1 zero_s6_reg ( .D(zero_s5), .CP(clk), .Q(zero_s6) );
  DFQD1 infinity_s2_reg ( .D(infinity_s1), .CP(clk), .Q(infinity_s2) );
  DFQD1 infinity_s3_reg ( .D(infinity_s2), .CP(clk), .Q(infinity_s3) );
  DFQD1 infinity_s4_reg ( .D(infinity_s3), .CP(clk), .Q(infinity_s4) );
  DFQD1 infinity_s5_reg ( .D(infinity_s4), .CP(clk), .Q(infinity_s5) );
  DFQD1 infinity_s6_reg ( .D(infinity_s5), .CP(clk), .Q(infinity_s6) );
  DFQD1 invalid_s2_reg ( .D(invalid_s1), .CP(clk), .Q(invalid_s2) );
  DFQD1 invalid_s3_reg ( .D(invalid_s2), .CP(clk), .Q(invalid_s3) );
  DFQD1 invalid_s4_reg ( .D(invalid_s3), .CP(clk), .Q(invalid_s4) );
  DFQD1 invalid_s5_reg ( .D(invalid_s4), .CP(clk), .Q(invalid_s5) );
  DFQD1 invalid_s6_reg ( .D(invalid_s5), .CP(clk), .Q(invalid_s6) );
  DFQD1 exponent_s1_reg_10_ ( .D(n272), .CP(clk), .Q(exponent_s1[10]) );
  DFQD1 exponent_s2_reg_10_ ( .D(exponent_s1[10]), .CP(clk), .Q(
        exponent_s2[10]) );
  DFQD1 exponent_s3_reg_10_ ( .D(exponent_s2[10]), .CP(clk), .Q(
        exponent_s3[10]) );
  DFQD1 exponent_s4_reg_10_ ( .D(exponent_s3[10]), .CP(clk), .Q(
        exponent_s4[10]) );
  DFQD1 exponent_s5_reg_10_ ( .D(exponent_s4[10]), .CP(clk), .Q(
        exponent_s5[10]) );
  DFQD1 exponent_s6_reg_10_ ( .D(exponent_s5[10]), .CP(clk), .Q(
        exponent_s6[10]) );
  DFQD1 exponent_s6_reg_11_ ( .D(exponent_s5[10]), .CP(clk), .Q(
        exponent_s6[11]) );
  DFQD1 exponent_s5_reg_9_ ( .D(exponent_s4[10]), .CP(clk), .Q(exponent_s5[9])
         );
  DFQD1 exponent_s6_reg_9_ ( .D(exponent_s5[9]), .CP(clk), .Q(exponent_s6[9])
         );
  DFQD1 exponent_s1_reg_8_ ( .D(N70), .CP(clk), .Q(exponent_s1[8]) );
  DFQD1 exponent_s2_reg_8_ ( .D(exponent_s1[8]), .CP(clk), .Q(exponent_s2[8])
         );
  DFQD1 exponent_s3_reg_8_ ( .D(exponent_s2[8]), .CP(clk), .Q(exponent_s3[8])
         );
  DFQD1 exponent_s4_reg_8_ ( .D(exponent_s3[8]), .CP(clk), .Q(exponent_s4[8])
         );
  DFQD1 exponent_s5_reg_8_ ( .D(exponent_s4[8]), .CP(clk), .Q(exponent_s5[8])
         );
  DFQD1 exponent_s6_reg_8_ ( .D(exponent_s5[8]), .CP(clk), .Q(exponent_s6[8])
         );
  DFQD1 exponent_s1_reg_7_ ( .D(N69), .CP(clk), .Q(exponent_s1[7]) );
  DFQD1 exponent_s2_reg_7_ ( .D(exponent_s1[7]), .CP(clk), .Q(exponent_s2[7])
         );
  DFQD1 exponent_s3_reg_7_ ( .D(exponent_s2[7]), .CP(clk), .Q(exponent_s3[7])
         );
  DFQD1 exponent_s4_reg_7_ ( .D(exponent_s3[7]), .CP(clk), .Q(exponent_s4[7])
         );
  DFQD1 exponent_s5_reg_7_ ( .D(exponent_s4[7]), .CP(clk), .Q(exponent_s5[7])
         );
  DFQD1 exponent_s6_reg_7_ ( .D(exponent_s5[7]), .CP(clk), .Q(exponent_s6[7])
         );
  DFQD1 exponent_s1_reg_6_ ( .D(N68), .CP(clk), .Q(exponent_s1[6]) );
  DFQD1 exponent_s2_reg_6_ ( .D(exponent_s1[6]), .CP(clk), .Q(exponent_s2[6])
         );
  DFQD1 exponent_s3_reg_6_ ( .D(exponent_s2[6]), .CP(clk), .Q(exponent_s3[6])
         );
  DFQD1 exponent_s4_reg_6_ ( .D(exponent_s3[6]), .CP(clk), .Q(exponent_s4[6])
         );
  DFQD1 exponent_s5_reg_6_ ( .D(exponent_s4[6]), .CP(clk), .Q(exponent_s5[6])
         );
  DFQD1 exponent_s6_reg_6_ ( .D(exponent_s5[6]), .CP(clk), .Q(exponent_s6[6])
         );
  DFQD1 exponent_s1_reg_5_ ( .D(N67), .CP(clk), .Q(exponent_s1[5]) );
  DFQD1 exponent_s2_reg_5_ ( .D(exponent_s1[5]), .CP(clk), .Q(exponent_s2[5])
         );
  DFQD1 exponent_s3_reg_5_ ( .D(exponent_s2[5]), .CP(clk), .Q(exponent_s3[5])
         );
  DFQD1 exponent_s4_reg_5_ ( .D(exponent_s3[5]), .CP(clk), .Q(exponent_s4[5])
         );
  DFQD1 exponent_s5_reg_5_ ( .D(exponent_s4[5]), .CP(clk), .Q(exponent_s5[5])
         );
  DFQD1 exponent_s6_reg_5_ ( .D(exponent_s5[5]), .CP(clk), .Q(exponent_s6[5])
         );
  DFQD1 exponent_s1_reg_4_ ( .D(N66), .CP(clk), .Q(exponent_s1[4]) );
  DFQD1 exponent_s2_reg_4_ ( .D(exponent_s1[4]), .CP(clk), .Q(exponent_s2[4])
         );
  DFQD1 exponent_s3_reg_4_ ( .D(exponent_s2[4]), .CP(clk), .Q(exponent_s3[4])
         );
  DFQD1 exponent_s4_reg_4_ ( .D(exponent_s3[4]), .CP(clk), .Q(exponent_s4[4])
         );
  DFQD1 exponent_s5_reg_4_ ( .D(exponent_s4[4]), .CP(clk), .Q(exponent_s5[4])
         );
  DFQD1 exponent_s6_reg_4_ ( .D(exponent_s5[4]), .CP(clk), .Q(exponent_s6[4])
         );
  DFQD1 exponent_s1_reg_3_ ( .D(N65), .CP(clk), .Q(exponent_s1[3]) );
  DFQD1 exponent_s2_reg_3_ ( .D(exponent_s1[3]), .CP(clk), .Q(exponent_s2[3])
         );
  DFQD1 exponent_s3_reg_3_ ( .D(exponent_s2[3]), .CP(clk), .Q(exponent_s3[3])
         );
  DFQD1 exponent_s4_reg_3_ ( .D(exponent_s3[3]), .CP(clk), .Q(exponent_s4[3])
         );
  DFQD1 exponent_s5_reg_3_ ( .D(exponent_s4[3]), .CP(clk), .Q(exponent_s5[3])
         );
  DFQD1 exponent_s6_reg_3_ ( .D(exponent_s5[3]), .CP(clk), .Q(exponent_s6[3])
         );
  DFQD1 exponent_s1_reg_2_ ( .D(N64), .CP(clk), .Q(exponent_s1[2]) );
  DFQD1 exponent_s2_reg_2_ ( .D(exponent_s1[2]), .CP(clk), .Q(exponent_s2[2])
         );
  DFQD1 exponent_s3_reg_2_ ( .D(exponent_s2[2]), .CP(clk), .Q(exponent_s3[2])
         );
  DFQD1 exponent_s4_reg_2_ ( .D(exponent_s3[2]), .CP(clk), .Q(exponent_s4[2])
         );
  DFQD1 exponent_s5_reg_2_ ( .D(exponent_s4[2]), .CP(clk), .Q(exponent_s5[2])
         );
  DFQD1 exponent_s6_reg_2_ ( .D(exponent_s5[2]), .CP(clk), .Q(exponent_s6[2])
         );
  DFQD1 exponent_s1_reg_1_ ( .D(N63), .CP(clk), .Q(exponent_s1[1]) );
  DFQD1 exponent_s2_reg_1_ ( .D(exponent_s1[1]), .CP(clk), .Q(exponent_s2[1])
         );
  DFQD1 exponent_s3_reg_1_ ( .D(exponent_s2[1]), .CP(clk), .Q(exponent_s3[1])
         );
  DFQD1 exponent_s4_reg_1_ ( .D(exponent_s3[1]), .CP(clk), .Q(exponent_s4[1])
         );
  DFQD1 exponent_s5_reg_1_ ( .D(exponent_s4[1]), .CP(clk), .Q(exponent_s5[1])
         );
  DFQD1 exponent_s6_reg_1_ ( .D(exponent_s5[1]), .CP(clk), .Q(exponent_s6[1])
         );
  DFQD1 exponent_s1_reg_0_ ( .D(N62), .CP(clk), .Q(exponent_s1[0]) );
  DFQD1 exponent_s2_reg_0_ ( .D(exponent_s1[0]), .CP(clk), .Q(exponent_s2[0])
         );
  DFQD1 exponent_s3_reg_0_ ( .D(exponent_s2[0]), .CP(clk), .Q(exponent_s3[0])
         );
  DFQD1 exponent_s4_reg_0_ ( .D(exponent_s3[0]), .CP(clk), .Q(exponent_s4[0])
         );
  DFQD1 exponent_s5_reg_0_ ( .D(exponent_s4[0]), .CP(clk), .Q(exponent_s5[0])
         );
  DFQD1 exponent_s6_reg_0_ ( .D(exponent_s5[0]), .CP(clk), .Q(exponent_s6[0])
         );
  DFQD1 sign_s1_reg ( .D(sign_out), .CP(clk), .Q(sign_s1) );
  DFQD1 sign_s2_reg ( .D(sign_s1), .CP(clk), .Q(sign_s2) );
  DFQD1 sign_s3_reg ( .D(sign_s2), .CP(clk), .Q(sign_s3) );
  DFQD1 sign_s4_reg ( .D(sign_s3), .CP(clk), .Q(sign_s4) );
  DFQD1 sign_s5_reg ( .D(sign_s4), .CP(clk), .Q(sign_s5) );
  DFQD1 sign_s6_reg ( .D(sign_s5), .CP(clk), .Q(finite_result_31_) );
  FA1D0 DP_OP_58J1_124_7635_U11 ( .A(n273), .B(DP_OP_58J1_124_7635_n44), .CI(
        DP_OP_58J1_124_7635_n10), .CO(DP_OP_58J1_124_7635_n9), .S(N63) );
  FA1D0 DP_OP_58J1_124_7635_U10 ( .A(n274), .B(DP_OP_58J1_124_7635_n45), .CI(
        DP_OP_58J1_124_7635_n9), .CO(DP_OP_58J1_124_7635_n8), .S(N64) );
  FA1D0 DP_OP_58J1_124_7635_U9 ( .A(n275), .B(DP_OP_58J1_124_7635_n46), .CI(
        DP_OP_58J1_124_7635_n8), .CO(DP_OP_58J1_124_7635_n7), .S(N65) );
  FA1D0 DP_OP_58J1_124_7635_U8 ( .A(n276), .B(DP_OP_58J1_124_7635_n47), .CI(
        DP_OP_58J1_124_7635_n7), .CO(DP_OP_58J1_124_7635_n6), .S(N66) );
  FA1D0 DP_OP_58J1_124_7635_U7 ( .A(n277), .B(DP_OP_58J1_124_7635_n48), .CI(
        DP_OP_58J1_124_7635_n6), .CO(DP_OP_58J1_124_7635_n5), .S(N67) );
  FA1D0 DP_OP_58J1_124_7635_U6 ( .A(n278), .B(DP_OP_58J1_124_7635_n49), .CI(
        DP_OP_58J1_124_7635_n5), .CO(DP_OP_58J1_124_7635_n4), .S(N68) );
  FA1D0 DP_OP_58J1_124_7635_U5 ( .A(n279), .B(DP_OP_58J1_124_7635_n50), .CI(
        DP_OP_58J1_124_7635_n4), .CO(DP_OP_58J1_124_7635_n3), .S(N69) );
  HA1D0 DP_OP_57J1_123_2635_U9 ( .A(x[23]), .B(C2_Z_0), .CO(
        DP_OP_57J1_123_2635_n8), .S(DP_OP_58J1_124_7635_n43) );
  FA1D0 DP_OP_57J1_123_2635_U8 ( .A(x[24]), .B(C2_Z_1), .CI(
        DP_OP_57J1_123_2635_n8), .CO(DP_OP_57J1_123_2635_n7), .S(
        DP_OP_58J1_124_7635_n44) );
  FA1D0 DP_OP_57J1_123_2635_U7 ( .A(x[25]), .B(C2_Z_2), .CI(
        DP_OP_57J1_123_2635_n7), .CO(DP_OP_57J1_123_2635_n6), .S(
        DP_OP_58J1_124_7635_n45) );
  FA1D0 DP_OP_57J1_123_2635_U6 ( .A(x[26]), .B(C2_Z_3), .CI(
        DP_OP_57J1_123_2635_n6), .CO(DP_OP_57J1_123_2635_n5), .S(
        DP_OP_58J1_124_7635_n46) );
  FA1D0 DP_OP_57J1_123_2635_U5 ( .A(x[27]), .B(C2_Z_4), .CI(
        DP_OP_57J1_123_2635_n5), .CO(DP_OP_57J1_123_2635_n4), .S(
        DP_OP_58J1_124_7635_n47) );
  FA1D0 DP_OP_57J1_123_2635_U4 ( .A(x[28]), .B(C2_Z_5), .CI(
        DP_OP_57J1_123_2635_n4), .CO(DP_OP_57J1_123_2635_n3), .S(
        DP_OP_58J1_124_7635_n48) );
  FA1D0 DP_OP_57J1_123_2635_U3 ( .A(x[29]), .B(C2_Z_6), .CI(
        DP_OP_57J1_123_2635_n3), .CO(DP_OP_57J1_123_2635_n2), .S(
        DP_OP_58J1_124_7635_n49) );
  FA1D0 DP_OP_57J1_123_2635_U2 ( .A(x[30]), .B(C2_Z_7), .CI(
        DP_OP_57J1_123_2635_n2), .CO(DP_OP_57J1_123_2635_n1), .S(
        DP_OP_58J1_124_7635_n50) );
  DFQD1 result_reg_31_ ( .D(N181), .CP(clk), .Q(result[31]) );
  DFQD1 result_reg_30_ ( .D(n148), .CP(clk), .Q(result[30]) );
  DFQD1 result_reg_29_ ( .D(n149), .CP(clk), .Q(result[29]) );
  DFQD1 result_reg_28_ ( .D(n1500), .CP(clk), .Q(result[28]) );
  DFQD1 result_reg_27_ ( .D(n1510), .CP(clk), .Q(result[27]) );
  DFQD1 result_reg_26_ ( .D(n1520), .CP(clk), .Q(result[26]) );
  DFQD1 result_reg_25_ ( .D(n1530), .CP(clk), .Q(result[25]) );
  DFQD1 result_reg_24_ ( .D(n1540), .CP(clk), .Q(result[24]) );
  DFQD1 result_reg_23_ ( .D(n1550), .CP(clk), .Q(result[23]) );
  DFQD1 result_reg_22_ ( .D(n1560), .CP(clk), .Q(result[22]) );
  DFQD1 result_reg_21_ ( .D(N171), .CP(clk), .Q(result[21]) );
  DFQD1 result_reg_20_ ( .D(N170), .CP(clk), .Q(result[20]) );
  DFQD1 result_reg_19_ ( .D(N169), .CP(clk), .Q(result[19]) );
  DFQD1 result_reg_18_ ( .D(N168), .CP(clk), .Q(result[18]) );
  DFQD1 result_reg_17_ ( .D(N167), .CP(clk), .Q(result[17]) );
  DFQD1 result_reg_16_ ( .D(N166), .CP(clk), .Q(result[16]) );
  DFQD1 result_reg_15_ ( .D(N165), .CP(clk), .Q(result[15]) );
  DFQD1 result_reg_14_ ( .D(N164), .CP(clk), .Q(result[14]) );
  DFQD1 result_reg_13_ ( .D(N163), .CP(clk), .Q(result[13]) );
  DFQD1 result_reg_12_ ( .D(N162), .CP(clk), .Q(result[12]) );
  DFQD1 result_reg_11_ ( .D(N161), .CP(clk), .Q(result[11]) );
  DFQD1 result_reg_10_ ( .D(N160), .CP(clk), .Q(result[10]) );
  DFQD1 result_reg_9_ ( .D(N159), .CP(clk), .Q(result[9]) );
  DFQD1 result_reg_8_ ( .D(N158), .CP(clk), .Q(result[8]) );
  DFQD1 result_reg_7_ ( .D(N157), .CP(clk), .Q(result[7]) );
  DFQD1 result_reg_6_ ( .D(N156), .CP(clk), .Q(result[6]) );
  DFQD1 result_reg_5_ ( .D(N155), .CP(clk), .Q(result[5]) );
  DFQD1 result_reg_4_ ( .D(N154), .CP(clk), .Q(result[4]) );
  DFQD1 result_reg_3_ ( .D(N153), .CP(clk), .Q(result[3]) );
  DFQD1 result_reg_2_ ( .D(N152), .CP(clk), .Q(result[2]) );
  DFQD1 result_reg_1_ ( .D(N151), .CP(clk), .Q(result[1]) );
  DFQD1 result_reg_0_ ( .D(N150), .CP(clk), .Q(result[0]) );
  BUFFD1 U3 ( .I(n257), .Z(n261) );
  BUFFD1 U4 ( .I(n264), .Z(n254) );
  INVD0 U5 ( .I(n88), .ZN(n89) );
  INVD0 U6 ( .I(core_value[28]), .ZN(n75) );
  AN2XD1 U7 ( .A1(n79), .A2(n228), .Z(n107) );
  INVD0 U8 ( .I(n126), .ZN(n124) );
  INVD0 U9 ( .I(divide_mode), .ZN(n200) );
  INVD0 U10 ( .I(n39), .ZN(n40) );
  INVD0 U11 ( .I(n39), .ZN(n41) );
  CKND2D0 U12 ( .A1(n640), .A2(n630), .ZN(n223) );
  AO211D0 U13 ( .A1(n213), .A2(n212), .B(infinity_s6), .C(invalid_s6), .Z(n219) );
  INVD0 U14 ( .I(n202), .ZN(n280) );
  INVD0 U15 ( .I(n252), .ZN(n59) );
  INVD0 U16 ( .I(n252), .ZN(n58) );
  OR2D0 U17 ( .A1(infinity_s6), .A2(n220), .Z(n230) );
  AO222D0 U18 ( .A1(n32), .A2(core_value[0]), .B1(n47), .B2(n8), .C1(n28), 
        .C2(core_value[2]), .Z(N151) );
  CKND2D0 U19 ( .A1(n234), .A2(n233), .ZN(N152) );
  OAI211D0 U20 ( .A1(n1650), .A2(n56), .B(n1640), .C(n1630), .ZN(N167) );
  INVD0 U21 ( .I(n261), .ZN(n43) );
  CKND2D0 U22 ( .A1(n126), .A2(n223), .ZN(n257) );
  INVD0 U23 ( .I(n254), .ZN(n47) );
  CKND2D0 U24 ( .A1(n126), .A2(n222), .ZN(n264) );
  NR2D0 U25 ( .A1(n228), .A2(n124), .ZN(n258) );
  INVD0 U26 ( .I(n258), .ZN(n3) );
  INVD0 U27 ( .I(n257), .ZN(n28) );
  BUFFD1 U28 ( .I(n60), .Z(n6) );
  INVD0 U29 ( .I(n39), .ZN(n4) );
  INVD1 U30 ( .I(n3), .ZN(n60) );
  AN2D1 U31 ( .A1(n225), .A2(n126), .Z(n252) );
  NR2D2 U32 ( .A1(n230), .A2(invalid_s6), .ZN(n126) );
  CKND2D2 U33 ( .A1(n213), .A2(n123), .ZN(n220) );
  NR3D1 U34 ( .A1(n117), .A2(n116), .A3(n115), .ZN(n213) );
  OR2XD1 U35 ( .A1(n93), .A2(n92), .Z(n120) );
  AN2D0 U36 ( .A1(n96), .A2(n118), .Z(n122) );
  FA1D0 U37 ( .A(n110), .B(exponent_s6[1]), .CI(n109), .CO(n104), .S(n111) );
  XOR2D0 U38 ( .A1(n36), .A2(n80), .Z(n110) );
  CKND2D1 U39 ( .A1(n125), .A2(n78), .ZN(n228) );
  NR2XD1 U40 ( .A1(n223), .A2(core_value[23]), .ZN(n125) );
  NR2D1 U41 ( .A1(core_value[25]), .A2(core_value[24]), .ZN(n630) );
  NR2D1 U42 ( .A1(core_value[27]), .A2(core_value[26]), .ZN(n640) );
  OAI211D1 U43 ( .A1(n240), .A2(n58), .B(n239), .C(n238), .ZN(N158) );
  OAI211D1 U44 ( .A1(n253), .A2(n58), .B(n251), .C(n250), .ZN(N168) );
  OAI211D1 U45 ( .A1(n237), .A2(n57), .B(n236), .C(n235), .ZN(N154) );
  OAI211D1 U46 ( .A1(n243), .A2(n59), .B(n242), .C(n241), .ZN(N162) );
  OAI211D1 U47 ( .A1(n249), .A2(n5), .B(n248), .C(n247), .ZN(N165) );
  INVD0 U48 ( .I(n260), .ZN(n5) );
  INVD1 U49 ( .I(n56), .ZN(n260) );
  OAI21D0 U50 ( .A1(n215), .A2(n54), .B(n34), .ZN(n148) );
  OAI21D0 U51 ( .A1(n217), .A2(n54), .B(n33), .ZN(n1530) );
  OAI21D0 U52 ( .A1(n218), .A2(n55), .B(n34), .ZN(n149) );
  OAI21D0 U53 ( .A1(n216), .A2(n55), .B(n33), .ZN(n1500) );
  OAI21D0 U54 ( .A1(n214), .A2(n220), .B(n33), .ZN(n1510) );
  OAI21D0 U55 ( .A1(n103), .A2(n55), .B(n34), .ZN(n1520) );
  OAI21D0 U56 ( .A1(n112), .A2(n220), .B(n34), .ZN(n1540) );
  OAI21D0 U57 ( .A1(n231), .A2(n230), .B(n229), .ZN(n1560) );
  CKND2D0 U58 ( .A1(n213), .A2(n123), .ZN(n55) );
  CKND2D0 U59 ( .A1(n213), .A2(n123), .ZN(n54) );
  AO21D1 U60 ( .A1(n122), .A2(n121), .B(n120), .Z(n212) );
  IND2D1 U61 ( .A1(n90), .B1(n89), .ZN(n93) );
  INVD0 U62 ( .I(n119), .ZN(n215) );
  INVD1 U63 ( .I(n98), .ZN(n216) );
  INVD1 U64 ( .I(n100), .ZN(n214) );
  INVD0 U65 ( .I(n105), .ZN(n217) );
  INVD0 U66 ( .I(n108), .ZN(n221) );
  XOR2D0 U67 ( .A1(n35), .A2(exponent_s6[11]), .Z(n84) );
  XOR2D0 U68 ( .A1(n35), .A2(n83), .Z(n106) );
  CKND2 U69 ( .I(n107), .ZN(n35) );
  ND2D1 U70 ( .A1(n82), .A2(n77), .ZN(n80) );
  ND3D0 U71 ( .A1(n82), .A2(n81), .A3(n228), .ZN(n83) );
  ND2D1 U72 ( .A1(n76), .A2(n75), .ZN(n224) );
  CKND2D0 U73 ( .A1(n74), .A2(n129), .ZN(n72) );
  ND2D1 U74 ( .A1(n125), .A2(n650), .ZN(n78) );
  NR2D0 U75 ( .A1(n125), .A2(n223), .ZN(n222) );
  INVD0 U76 ( .I(n223), .ZN(n81) );
  CKND2D0 U77 ( .A1(n205), .A2(n206), .ZN(C2_Z_2) );
  CKND2D0 U78 ( .A1(n207), .A2(n206), .ZN(C2_Z_3) );
  CKND2D0 U79 ( .A1(n208), .A2(n202), .ZN(C2_Z_4) );
  BUFFD0 U80 ( .I(core_value[18]), .Z(n26) );
  BUFFD0 U81 ( .I(core_value[20]), .Z(n9) );
  BUFFD0 U82 ( .I(core_value[19]), .Z(n27) );
  BUFFD0 U83 ( .I(n200), .Z(n206) );
  CKND2D0 U84 ( .A1(n209), .A2(n200), .ZN(C2_Z_5) );
  INR2D1 U86 ( .A1(n224), .B1(n124), .ZN(n259) );
  BUFFD0 U87 ( .I(core_value[0]), .Z(n7) );
  INVD0 U88 ( .I(n129), .ZN(n8) );
  INVD0 U89 ( .I(n237), .ZN(n10) );
  INVD0 U90 ( .I(n132), .ZN(n11) );
  INVD0 U91 ( .I(n135), .ZN(n12) );
  INVD0 U92 ( .I(n138), .ZN(n13) );
  INVD0 U93 ( .I(n240), .ZN(n14) );
  INVD0 U94 ( .I(n141), .ZN(n15) );
  INVD0 U95 ( .I(n144), .ZN(n16) );
  INVD0 U96 ( .I(n147), .ZN(n17) );
  INVD0 U97 ( .I(n243), .ZN(n18) );
  INVD0 U98 ( .I(n246), .ZN(n19) );
  INVD0 U99 ( .I(n1590), .ZN(n20) );
  INVD0 U100 ( .I(n249), .ZN(n21) );
  INVD0 U101 ( .I(n1620), .ZN(n22) );
  INVD0 U102 ( .I(n1650), .ZN(n23) );
  INVD0 U103 ( .I(n253), .ZN(n24) );
  INVD0 U104 ( .I(n1680), .ZN(n25) );
  INVD1 U105 ( .I(n257), .ZN(n29) );
  INVD1 U106 ( .I(n264), .ZN(n30) );
  INVD1 U107 ( .I(n264), .ZN(n31) );
  INVD1 U108 ( .I(n3), .ZN(n32) );
  INVD1 U109 ( .I(n219), .ZN(n33) );
  INVD1 U110 ( .I(n219), .ZN(n34) );
  INVD1 U111 ( .I(n107), .ZN(n36) );
  INVD1 U112 ( .I(n107), .ZN(n37) );
  INVD1 U113 ( .I(n107), .ZN(n38) );
  INVD1 U114 ( .I(n259), .ZN(n39) );
  INVD1 U115 ( .I(n39), .ZN(n42) );
  INVD1 U116 ( .I(n261), .ZN(n44) );
  INVD1 U117 ( .I(n261), .ZN(n45) );
  INVD1 U118 ( .I(n261), .ZN(n46) );
  INVD1 U119 ( .I(n254), .ZN(n48) );
  INVD1 U120 ( .I(n254), .ZN(n49) );
  INVD1 U121 ( .I(n254), .ZN(n50) );
  INVD0 U122 ( .I(n199), .ZN(n51) );
  INVD0 U123 ( .I(n81), .ZN(n52) );
  BUFFD1 U124 ( .I(x[3]), .Z(n53) );
  INVD1 U125 ( .I(n252), .ZN(n56) );
  INVD1 U126 ( .I(n252), .ZN(n57) );
  INVD1 U127 ( .I(n3), .ZN(n61) );
  INVD1 U128 ( .I(n3), .ZN(n620) );
  OAI21D0 U129 ( .A1(n221), .A2(n54), .B(n33), .ZN(n1550) );
  INVD0 U130 ( .I(core_value[1]), .ZN(n129) );
  INVD0 U131 ( .I(core_value[21]), .ZN(n265) );
  INVD1 U132 ( .I(core_value[22]), .ZN(n650) );
  INR2D1 U133 ( .A1(core_value[21]), .B1(n78), .ZN(n225) );
  NR4D0 U134 ( .A1(core_value[12]), .A2(core_value[13]), .A3(core_value[14]), 
        .A4(core_value[11]), .ZN(n690) );
  NR4D0 U135 ( .A1(core_value[19]), .A2(core_value[15]), .A3(core_value[17]), 
        .A4(core_value[16]), .ZN(n680) );
  NR4D0 U136 ( .A1(core_value[4]), .A2(core_value[6]), .A3(core_value[5]), 
        .A4(core_value[3]), .ZN(n670) );
  NR4D0 U137 ( .A1(core_value[10]), .A2(core_value[8]), .A3(core_value[9]), 
        .A4(core_value[7]), .ZN(n660) );
  ND4D0 U138 ( .A1(n690), .A2(n680), .A3(n670), .A4(n660), .ZN(n73) );
  NR2XD0 U139 ( .A1(n78), .A2(core_value[21]), .ZN(n74) );
  OR4D0 U140 ( .A1(core_value[2]), .A2(core_value[0]), .A3(core_value[18]), 
        .A4(core_value[20]), .Z(n71) );
  NR2D0 U141 ( .A1(core_value[28]), .A2(zero_s6), .ZN(n700) );
  OAI31D1 U142 ( .A1(n73), .A2(n72), .A3(n71), .B(n700), .ZN(n117) );
  INVD1 U143 ( .I(n74), .ZN(n76) );
  INVD1 U144 ( .I(n224), .ZN(n82) );
  INVD1 U145 ( .I(n225), .ZN(n77) );
  INVD1 U146 ( .I(n80), .ZN(n79) );
  CKXOR2D1 U147 ( .A1(n85), .A2(n84), .Z(n116) );
  FA1D0 U148 ( .A(n37), .B(exponent_s6[9]), .CI(n86), .CO(n91), .S(n90) );
  FA1D0 U149 ( .A(n36), .B(exponent_s6[8]), .CI(n87), .CO(n86), .S(n88) );
  FA1D0 U150 ( .A(n38), .B(exponent_s6[10]), .CI(n91), .CO(n85), .S(n92) );
  FA1D0 U151 ( .A(n35), .B(exponent_s6[7]), .CI(n94), .CO(n87), .S(n119) );
  FA1D0 U152 ( .A(n38), .B(exponent_s6[6]), .CI(n95), .CO(n94), .S(n96) );
  FA1D0 U153 ( .A(n37), .B(exponent_s6[5]), .CI(n97), .CO(n95), .S(n98) );
  FA1D0 U154 ( .A(n36), .B(exponent_s6[4]), .CI(n99), .CO(n97), .S(n100) );
  FA1D0 U155 ( .A(n35), .B(exponent_s6[3]), .CI(n101), .CO(n99), .S(n102) );
  INVD0 U156 ( .I(n102), .ZN(n103) );
  FA1D0 U157 ( .A(n38), .B(exponent_s6[2]), .CI(n104), .CO(n101), .S(n105) );
  FA1D0 U158 ( .A(exponent_s6[0]), .B(n37), .CI(n106), .CO(n109), .S(n108) );
  INVD0 U159 ( .I(n111), .ZN(n112) );
  NR4D0 U160 ( .A1(n102), .A2(n105), .A3(n108), .A4(n111), .ZN(n113) );
  ND3D1 U161 ( .A1(n216), .A2(n214), .A3(n113), .ZN(n114) );
  NR4D0 U162 ( .A1(n120), .A2(n119), .A3(n96), .A4(n114), .ZN(n115) );
  NR3D0 U163 ( .A1(n216), .A2(n103), .A3(n112), .ZN(n118) );
  NR4D0 U164 ( .A1(n215), .A2(n214), .A3(n217), .A4(n221), .ZN(n121) );
  INVD1 U165 ( .I(n212), .ZN(n123) );
  AOI22D0 U166 ( .A1(n10), .A2(n61), .B1(core_value[0]), .B2(n41), .ZN(n128)
         );
  AOI22D0 U167 ( .A1(n12), .A2(n46), .B1(n11), .B2(n30), .ZN(n127) );
  OAI211D1 U168 ( .A1(n129), .A2(n59), .B(n128), .C(n127), .ZN(N153) );
  INVD0 U169 ( .I(core_value[3]), .ZN(n132) );
  AOI22D0 U170 ( .A1(core_value[2]), .A2(n42), .B1(core_value[4]), .B2(n32), 
        .ZN(n131) );
  AOI22D0 U171 ( .A1(n14), .A2(n29), .B1(n13), .B2(n50), .ZN(n130) );
  OAI211D1 U172 ( .A1(n132), .A2(n5), .B(n131), .C(n130), .ZN(N155) );
  INVD0 U173 ( .I(core_value[4]), .ZN(n135) );
  AOI22D0 U174 ( .A1(n13), .A2(n620), .B1(core_value[3]), .B2(n40), .ZN(n134)
         );
  AOI22D0 U175 ( .A1(n15), .A2(n46), .B1(n14), .B2(n47), .ZN(n133) );
  OAI211D1 U176 ( .A1(n135), .A2(n57), .B(n134), .C(n133), .ZN(N156) );
  INVD0 U177 ( .I(core_value[5]), .ZN(n138) );
  AOI22D0 U178 ( .A1(n12), .A2(n40), .B1(core_value[6]), .B2(n60), .ZN(n137)
         );
  AOI22D0 U179 ( .A1(n16), .A2(n45), .B1(core_value[7]), .B2(n50), .ZN(n136)
         );
  OAI211D1 U180 ( .A1(n138), .A2(n58), .B(n137), .C(n136), .ZN(N157) );
  INVD0 U181 ( .I(core_value[7]), .ZN(n141) );
  AOI22D0 U182 ( .A1(n16), .A2(n61), .B1(core_value[6]), .B2(n4), .ZN(n140) );
  AOI22D0 U183 ( .A1(n18), .A2(n29), .B1(n17), .B2(n48), .ZN(n139) );
  OAI211D1 U184 ( .A1(n141), .A2(n59), .B(n140), .C(n139), .ZN(N159) );
  INVD0 U185 ( .I(core_value[8]), .ZN(n144) );
  AOI22D0 U186 ( .A1(n17), .A2(n620), .B1(core_value[7]), .B2(n40), .ZN(n143)
         );
  AOI22D0 U187 ( .A1(n19), .A2(n45), .B1(core_value[10]), .B2(n48), .ZN(n142)
         );
  OAI211D1 U188 ( .A1(n144), .A2(n56), .B(n143), .C(n142), .ZN(N160) );
  INVD0 U189 ( .I(core_value[9]), .ZN(n147) );
  AOI22D0 U190 ( .A1(n18), .A2(n6), .B1(core_value[8]), .B2(n259), .ZN(n146)
         );
  AOI22D0 U191 ( .A1(n20), .A2(n44), .B1(core_value[11]), .B2(n31), .ZN(n145)
         );
  OAI211D1 U192 ( .A1(n147), .A2(n57), .B(n146), .C(n145), .ZN(N161) );
  INVD0 U193 ( .I(core_value[12]), .ZN(n1590) );
  AOI22D0 U194 ( .A1(n21), .A2(n6), .B1(core_value[11]), .B2(n42), .ZN(n1580)
         );
  AOI22D0 U195 ( .A1(n23), .A2(n44), .B1(n22), .B2(n47), .ZN(n1570) );
  OAI211D1 U196 ( .A1(n1590), .A2(n58), .B(n1580), .C(n1570), .ZN(N164) );
  INVD0 U197 ( .I(core_value[14]), .ZN(n1620) );
  AOI22D0 U198 ( .A1(n23), .A2(n60), .B1(core_value[13]), .B2(n4), .ZN(n1610)
         );
  AOI22D0 U199 ( .A1(n25), .A2(n29), .B1(n24), .B2(n49), .ZN(n1600) );
  OAI211D1 U200 ( .A1(n1620), .A2(n59), .B(n1610), .C(n1600), .ZN(N166) );
  INVD0 U201 ( .I(core_value[15]), .ZN(n1650) );
  AOI22D0 U202 ( .A1(n24), .A2(n6), .B1(n22), .B2(n41), .ZN(n1640) );
  AOI22D0 U203 ( .A1(n26), .A2(n44), .B1(n25), .B2(n49), .ZN(n1630) );
  INVD0 U204 ( .I(core_value[17]), .ZN(n1680) );
  AOI22D0 U205 ( .A1(n26), .A2(n32), .B1(core_value[16]), .B2(n259), .ZN(n1670) );
  AOI22D0 U206 ( .A1(n9), .A2(n46), .B1(n27), .B2(n31), .ZN(n1660) );
  OAI211D1 U207 ( .A1(n1680), .A2(n57), .B(n1670), .C(n1660), .ZN(N169) );
  CKBD1 U208 ( .I(n200), .Z(n202) );
  AN4D0 U209 ( .A1(y[30]), .A2(y[29]), .A3(y[28]), .A4(y[27]), .Z(n1700) );
  AN4D0 U210 ( .A1(y[26]), .A2(y[25]), .A3(y[24]), .A4(y[23]), .Z(n1690) );
  CKND2D0 U211 ( .A1(n1700), .A2(n1690), .ZN(n267) );
  AN4D0 U212 ( .A1(x[30]), .A2(x[29]), .A3(x[28]), .A4(x[27]), .Z(n172) );
  AN4D0 U213 ( .A1(x[26]), .A2(x[25]), .A3(x[24]), .A4(x[23]), .Z(n1710) );
  CKND2D0 U214 ( .A1(n172), .A2(n1710), .ZN(n196) );
  NR4D0 U215 ( .A1(y[30]), .A2(y[29]), .A3(y[28]), .A4(y[27]), .ZN(n174) );
  NR4D0 U216 ( .A1(y[26]), .A2(y[25]), .A3(y[24]), .A4(y[23]), .ZN(n173) );
  CKND2D0 U217 ( .A1(n174), .A2(n173), .ZN(n270) );
  NR4D0 U218 ( .A1(x[22]), .A2(x[20]), .A3(x[9]), .A4(x[10]), .ZN(n179) );
  OR4D0 U219 ( .A1(x[2]), .A2(x[18]), .A3(x[6]), .A4(x[8]), .Z(n175) );
  NR4D0 U220 ( .A1(x[0]), .A2(x[3]), .A3(x[4]), .A4(n175), .ZN(n178) );
  NR4D0 U221 ( .A1(x[11]), .A2(x[15]), .A3(x[16]), .A4(x[14]), .ZN(n177) );
  NR4D0 U222 ( .A1(x[1]), .A2(x[7]), .A3(x[12]), .A4(x[13]), .ZN(n176) );
  ND4D0 U223 ( .A1(n179), .A2(n178), .A3(n177), .A4(n176), .ZN(n189) );
  INVD0 U224 ( .I(n196), .ZN(n194) );
  OR4D0 U225 ( .A1(x[5]), .A2(x[19]), .A3(x[17]), .A4(x[21]), .Z(n188) );
  NR4D0 U226 ( .A1(y[5]), .A2(y[19]), .A3(y[17]), .A4(y[21]), .ZN(n186) );
  NR4D0 U227 ( .A1(y[22]), .A2(y[20]), .A3(y[9]), .A4(y[10]), .ZN(n185) );
  NR4D0 U228 ( .A1(y[2]), .A2(y[18]), .A3(y[6]), .A4(y[8]), .ZN(n183) );
  NR3D0 U229 ( .A1(y[0]), .A2(y[3]), .A3(y[4]), .ZN(n182) );
  NR4D0 U230 ( .A1(y[11]), .A2(y[15]), .A3(y[16]), .A4(y[14]), .ZN(n1810) );
  NR4D0 U231 ( .A1(y[1]), .A2(y[7]), .A3(y[12]), .A4(y[13]), .ZN(n180) );
  AN4D0 U232 ( .A1(n183), .A2(n182), .A3(n1810), .A4(n180), .Z(n184) );
  AOI31D0 U233 ( .A1(n186), .A2(n185), .A3(n184), .B(n51), .ZN(n187) );
  AOI221D0 U234 ( .A1(n189), .A2(n194), .B1(n188), .B2(n194), .C(n187), .ZN(
        n192) );
  OAI211D0 U235 ( .A1(n196), .A2(n270), .B(n192), .C(n202), .ZN(n271) );
  INVD0 U236 ( .I(n271), .ZN(n198) );
  NR4D0 U237 ( .A1(x[30]), .A2(x[29]), .A3(x[28]), .A4(x[27]), .ZN(n191) );
  NR4D0 U238 ( .A1(x[26]), .A2(x[25]), .A3(x[24]), .A4(x[23]), .ZN(n190) );
  CKND2D0 U239 ( .A1(n191), .A2(n190), .ZN(n269) );
  INVD0 U240 ( .I(n267), .ZN(n199) );
  OAI211D0 U241 ( .A1(n269), .A2(n270), .B(divide_mode), .C(n192), .ZN(n193)
         );
  AOI21D0 U242 ( .A1(n194), .A2(n199), .B(n193), .ZN(n195) );
  AOI221D0 U243 ( .A1(n267), .A2(n198), .B1(n269), .B2(n198), .C(n195), .ZN(
        invalid_operation) );
  INVD0 U244 ( .I(y[25]), .ZN(n205) );
  CKAN2D0 U245 ( .A1(n205), .A2(n280), .Z(n274) );
  INVD0 U246 ( .I(y[26]), .ZN(n207) );
  CKAN2D0 U247 ( .A1(n207), .A2(n280), .Z(n275) );
  AOI21D0 U248 ( .A1(n198), .A2(n267), .B(n195), .ZN(n268) );
  INVD0 U249 ( .I(n195), .ZN(n266) );
  OAI22D0 U250 ( .A1(n268), .A2(n196), .B1(n270), .B2(n266), .ZN(n197) );
  AO31D0 U251 ( .A1(n199), .A2(n198), .A3(n269), .B(n197), .Z(infinity_result)
         );
  NR2D0 U252 ( .A1(DP_OP_58J1_124_7635_n3), .A2(DP_OP_57J1_123_2635_n1), .ZN(
        n272) );
  INVD0 U253 ( .I(y[23]), .ZN(n203) );
  CKAN2D0 U254 ( .A1(n203), .A2(n280), .Z(n232) );
  OR2D0 U255 ( .A1(n232), .A2(DP_OP_58J1_124_7635_n43), .Z(
        DP_OP_58J1_124_7635_n10) );
  INVD0 U256 ( .I(y[24]), .ZN(n204) );
  INVD0 U257 ( .I(n206), .ZN(n201) );
  CKAN2D0 U258 ( .A1(n204), .A2(n201), .Z(n273) );
  INVD0 U259 ( .I(y[27]), .ZN(n208) );
  CKAN2D0 U260 ( .A1(n208), .A2(n201), .Z(n276) );
  INVD0 U261 ( .I(y[28]), .ZN(n209) );
  CKAN2D0 U262 ( .A1(n209), .A2(n201), .Z(n277) );
  INVD0 U263 ( .I(y[29]), .ZN(n210) );
  CKAN2D0 U264 ( .A1(n210), .A2(n201), .Z(n278) );
  CKND2D0 U265 ( .A1(y[30]), .A2(divide_mode), .ZN(n279) );
  CKND2D0 U266 ( .A1(n203), .A2(n202), .ZN(C2_Z_0) );
  CKND2D0 U267 ( .A1(n204), .A2(n206), .ZN(C2_Z_1) );
  CKND2D0 U268 ( .A1(n210), .A2(n200), .ZN(C2_Z_6) );
  INVD0 U269 ( .I(y[30]), .ZN(n211) );
  NR2D0 U270 ( .A1(n211), .A2(divide_mode), .ZN(C2_Z_7) );
  INVD0 U271 ( .I(n96), .ZN(n218) );
  AOI22D0 U272 ( .A1(core_value[23]), .A2(n52), .B1(core_value[22]), .B2(n222), 
        .ZN(n227) );
  AOI22D0 U273 ( .A1(core_value[20]), .A2(n225), .B1(core_value[19]), .B2(n224), .ZN(n226) );
  OA211D0 U274 ( .A1(n265), .A2(n228), .B(n227), .C(n226), .Z(n231) );
  INVD0 U275 ( .I(invalid_s6), .ZN(n229) );
  XOR2D0 U276 ( .A1(y[31]), .A2(x[31]), .Z(sign_out) );
  INR2D0 U277 ( .A1(finite_result_31_), .B1(invalid_s6), .ZN(N181) );
  XNR2D0 U278 ( .A1(DP_OP_58J1_124_7635_n43), .A2(n232), .ZN(N62) );
  XNR2D0 U279 ( .A1(DP_OP_57J1_123_2635_n1), .A2(DP_OP_58J1_124_7635_n3), .ZN(
        N70) );
  AO22D0 U280 ( .A1(core_value[1]), .A2(n29), .B1(n7), .B2(n31), .Z(N150) );
  AOI22D0 U281 ( .A1(n10), .A2(n49), .B1(n11), .B2(n45), .ZN(n234) );
  AOI22D0 U282 ( .A1(core_value[1]), .A2(n6), .B1(n7), .B2(n260), .ZN(n233) );
  INVD0 U283 ( .I(core_value[2]), .ZN(n237) );
  AOI22D0 U284 ( .A1(core_value[1]), .A2(n42), .B1(core_value[3]), .B2(n60), 
        .ZN(n236) );
  AOI22D0 U285 ( .A1(core_value[4]), .A2(n49), .B1(core_value[5]), .B2(n43), 
        .ZN(n235) );
  INVD0 U286 ( .I(core_value[6]), .ZN(n240) );
  AOI22D0 U287 ( .A1(n15), .A2(n620), .B1(core_value[5]), .B2(n41), .ZN(n239)
         );
  AOI22D0 U288 ( .A1(core_value[8]), .A2(n30), .B1(core_value[9]), .B2(n28), 
        .ZN(n238) );
  INVD0 U289 ( .I(core_value[10]), .ZN(n243) );
  AOI22D0 U290 ( .A1(n19), .A2(n32), .B1(core_value[9]), .B2(n40), .ZN(n242)
         );
  AOI22D0 U291 ( .A1(n20), .A2(n50), .B1(core_value[13]), .B2(n43), .ZN(n241)
         );
  INVD0 U292 ( .I(core_value[11]), .ZN(n246) );
  AOI22D0 U293 ( .A1(core_value[12]), .A2(n61), .B1(core_value[10]), .B2(n259), 
        .ZN(n245) );
  AOI22D0 U294 ( .A1(n21), .A2(n50), .B1(core_value[14]), .B2(n43), .ZN(n244)
         );
  OAI211D0 U295 ( .A1(n246), .A2(n56), .B(n245), .C(n244), .ZN(N163) );
  INVD0 U296 ( .I(core_value[13]), .ZN(n249) );
  AOI22D0 U297 ( .A1(core_value[12]), .A2(n41), .B1(core_value[14]), .B2(n258), 
        .ZN(n248) );
  AOI22D0 U298 ( .A1(core_value[15]), .A2(n48), .B1(core_value[16]), .B2(n46), 
        .ZN(n247) );
  INVD0 U299 ( .I(core_value[16]), .ZN(n253) );
  AOI22D0 U300 ( .A1(core_value[15]), .A2(n4), .B1(core_value[17]), .B2(n61), 
        .ZN(n251) );
  AOI22D0 U301 ( .A1(n26), .A2(n48), .B1(n27), .B2(n44), .ZN(n250) );
  AOI22D0 U302 ( .A1(n27), .A2(n258), .B1(core_value[17]), .B2(n42), .ZN(n256)
         );
  AOI22D0 U303 ( .A1(core_value[18]), .A2(n260), .B1(n9), .B2(n30), .ZN(n255)
         );
  OAI211D0 U304 ( .A1(n265), .A2(n257), .B(n256), .C(n255), .ZN(N170) );
  AOI22D0 U305 ( .A1(core_value[18]), .A2(n4), .B1(core_value[20]), .B2(n620), 
        .ZN(n263) );
  AOI22D0 U306 ( .A1(core_value[22]), .A2(n45), .B1(core_value[19]), .B2(n260), 
        .ZN(n262) );
  OAI211D0 U307 ( .A1(n265), .A2(n264), .B(n263), .C(n262), .ZN(N171) );
  OAI222D0 U308 ( .A1(n271), .A2(n270), .B1(n269), .B2(n268), .C1(n267), .C2(
        n266), .ZN(zero_result) );
endmodule


module oadm_dm_l1 ( clk, x, y, divide_mode, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  input clk, divide_mode;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44;

  oadm_dm_fixed_APPROX_LEVEL1 impl ( .clk(clk), .x({x[31:23], n44, n43, n42, 
        n41, n40, n39, n38, n37, n36, n35, n34, n33, n32, n31, n30, n29, n28, 
        n27, n26, n25, n24, n23, x[0]}), .y({y[31:22], n22, n21, n20, n19, n18, 
        n17, n16, n15, n14, n13, n12, n11, n10, n9, n8, n7, n6, n5, n4, n3, n2, 
        n1}), .divide_mode(divide_mode), .result(result) );
  BUFFD0 U1 ( .I(x[6]), .Z(n28) );
  BUFFD0 U2 ( .I(y[3]), .Z(n4) );
  BUFFD0 U3 ( .I(x[5]), .Z(n27) );
  BUFFD1 U4 ( .I(y[21]), .Z(n22) );
  BUFFD1 U5 ( .I(y[2]), .Z(n3) );
  BUFFD1 U6 ( .I(y[1]), .Z(n2) );
  BUFFD1 U7 ( .I(y[0]), .Z(n1) );
  BUFFD1 U8 ( .I(y[4]), .Z(n5) );
  BUFFD1 U9 ( .I(y[5]), .Z(n6) );
  BUFFD1 U10 ( .I(y[6]), .Z(n7) );
  BUFFD1 U11 ( .I(y[7]), .Z(n8) );
  BUFFD1 U12 ( .I(y[8]), .Z(n9) );
  BUFFD1 U13 ( .I(y[9]), .Z(n10) );
  BUFFD1 U14 ( .I(y[10]), .Z(n11) );
  BUFFD1 U15 ( .I(y[11]), .Z(n12) );
  BUFFD1 U16 ( .I(y[12]), .Z(n13) );
  BUFFD1 U17 ( .I(y[13]), .Z(n14) );
  BUFFD1 U18 ( .I(y[14]), .Z(n15) );
  BUFFD1 U19 ( .I(y[15]), .Z(n16) );
  BUFFD1 U20 ( .I(y[16]), .Z(n17) );
  BUFFD1 U21 ( .I(y[17]), .Z(n18) );
  BUFFD1 U22 ( .I(y[18]), .Z(n19) );
  BUFFD1 U23 ( .I(y[19]), .Z(n20) );
  BUFFD1 U24 ( .I(y[20]), .Z(n21) );
  BUFFD1 U25 ( .I(x[20]), .Z(n42) );
  BUFFD1 U26 ( .I(x[19]), .Z(n41) );
  BUFFD1 U27 ( .I(x[18]), .Z(n40) );
  BUFFD1 U28 ( .I(x[17]), .Z(n39) );
  BUFFD1 U29 ( .I(x[16]), .Z(n38) );
  BUFFD1 U30 ( .I(x[15]), .Z(n37) );
  BUFFD1 U31 ( .I(x[14]), .Z(n36) );
  BUFFD1 U32 ( .I(x[13]), .Z(n35) );
  BUFFD1 U33 ( .I(x[12]), .Z(n34) );
  BUFFD1 U34 ( .I(x[11]), .Z(n33) );
  BUFFD1 U35 ( .I(x[10]), .Z(n32) );
  BUFFD1 U36 ( .I(x[9]), .Z(n31) );
  BUFFD1 U37 ( .I(x[8]), .Z(n30) );
  BUFFD1 U38 ( .I(x[7]), .Z(n29) );
  BUFFD1 U39 ( .I(x[21]), .Z(n43) );
  CKBD1 U40 ( .I(x[22]), .Z(n44) );
  BUFFD1 U41 ( .I(x[1]), .Z(n23) );
  BUFFD1 U42 ( .I(x[2]), .Z(n24) );
  BUFFD1 U43 ( .I(x[3]), .Z(n25) );
  BUFFD1 U44 ( .I(x[4]), .Z(n26) );
endmodule

