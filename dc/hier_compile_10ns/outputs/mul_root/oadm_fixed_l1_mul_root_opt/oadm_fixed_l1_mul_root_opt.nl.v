/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 12:56:12 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_mul_plane_root_opt_LEVEL1_RESIDUAL_DROP14_DW_mult_tc_1 ( a, 
        b, product );
  input [7:0] a;
  input [5:0] b;
  output [13:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n13, n15, n16, n17, n18, n19,
         n21, n22, n24, n25, n26, n27, n28, n29, n30, n31, n34, n37, n38, n39,
         n40, n41, n42, n43, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155;

  FA1D0 U2 ( .A(n148), .B(n13), .CI(n2), .CO(n1), .S(product[12]) );
  FA1D0 U3 ( .A(n15), .B(n145), .CI(n3), .CO(n2), .S(product[11]) );
  FA1D0 U4 ( .A(n17), .B(n16), .CI(n4), .CO(n3), .S(product[10]) );
  FA1D0 U5 ( .A(n21), .B(n18), .CI(n5), .CO(n4), .S(product[9]) );
  FA1D0 U6 ( .A(n22), .B(n24), .CI(n6), .CO(n5), .S(product[8]) );
  FA1D0 U7 ( .A(n26), .B(n25), .CI(n7), .CO(n6), .S(product[7]) );
  FA1D0 U8 ( .A(n28), .B(n27), .CI(n8), .CO(n7), .S(product[6]) );
  FA1D0 U9 ( .A(n30), .B(n29), .CI(n9), .CO(n8), .S(product[5]) );
  FA1D0 U15 ( .A(n37), .B(n19), .CI(n43), .CO(n15), .S(n16) );
  FA1D0 U16 ( .A(n146), .B(n38), .CI(n144), .CO(n17), .S(n18) );
  INVD1 U102 ( .I(n13), .ZN(n145) );
  INVD1 U103 ( .I(b[3]), .ZN(n147) );
  INVD1 U104 ( .I(n19), .ZN(n144) );
  XNR2D1 U105 ( .A1(b[3]), .A2(n153), .ZN(n138) );
  XNR2D1 U106 ( .A1(b[3]), .A2(n152), .ZN(n139) );
  XNR2D1 U107 ( .A1(b[3]), .A2(n154), .ZN(n140) );
  XNR2D1 U108 ( .A1(b[3]), .A2(n151), .ZN(n141) );
  INVD1 U109 ( .I(a[0]), .ZN(n155) );
  XNR2D1 U110 ( .A1(b[3]), .A2(n150), .ZN(n142) );
  XNR2D1 U111 ( .A1(b[3]), .A2(n149), .ZN(n143) );
  INVD1 U112 ( .I(n43), .ZN(n146) );
  INVD1 U113 ( .I(a[7]), .ZN(n148) );
  INVD1 U114 ( .I(a[2]), .ZN(n153) );
  INVD1 U115 ( .I(a[1]), .ZN(n154) );
  INVD1 U116 ( .I(a[3]), .ZN(n152) );
  INVD1 U117 ( .I(a[4]), .ZN(n151) );
  INVD1 U118 ( .I(a[5]), .ZN(n150) );
  INVD1 U119 ( .I(a[6]), .ZN(n149) );
  AN2D0 U120 ( .A1(n10), .A2(n31), .Z(n9) );
  CKXOR2D0 U121 ( .A1(n10), .A2(n31), .Z(product[4]) );
  AN2D0 U122 ( .A1(n34), .A2(n140), .Z(n10) );
  CKXOR2D0 U123 ( .A1(n34), .A2(n140), .Z(product[3]) );
  CKND0 U124 ( .I(n155), .ZN(product[2]) );
  NR2D0 U125 ( .A1(n147), .A2(a[0]), .ZN(n34) );
  AN2D0 U126 ( .A1(n138), .A2(n42), .Z(n30) );
  CKXOR2D0 U127 ( .A1(n138), .A2(n42), .Z(n31) );
  AN2D0 U128 ( .A1(n139), .A2(n41), .Z(n28) );
  CKXOR2D0 U129 ( .A1(n139), .A2(n41), .Z(n29) );
  AN2D0 U130 ( .A1(n141), .A2(n40), .Z(n26) );
  CKXOR2D0 U131 ( .A1(n141), .A2(n40), .Z(n27) );
  AN2D0 U132 ( .A1(n142), .A2(n39), .Z(n24) );
  CKXOR2D0 U133 ( .A1(n142), .A2(n39), .Z(n25) );
  OR2D0 U134 ( .A1(n144), .A2(n143), .Z(n21) );
  XNR2D0 U135 ( .A1(n144), .A2(n143), .ZN(n22) );
  CKND0 U136 ( .I(n1), .ZN(product[13]) );
  CKXOR2D0 U137 ( .A1(n147), .A2(a[7]), .Z(n43) );
  NR2D0 U138 ( .A1(b[3]), .A2(n155), .ZN(n42) );
  OAI22D0 U139 ( .A1(n155), .A2(n147), .B1(b[3]), .B2(n154), .ZN(n41) );
  OAI22D0 U140 ( .A1(n154), .A2(n147), .B1(b[3]), .B2(n153), .ZN(n40) );
  OAI22D0 U141 ( .A1(n153), .A2(n147), .B1(b[3]), .B2(n152), .ZN(n39) );
  OAI22D0 U142 ( .A1(n151), .A2(n147), .B1(b[3]), .B2(n150), .ZN(n38) );
  OAI22D0 U143 ( .A1(n150), .A2(n147), .B1(b[3]), .B2(n149), .ZN(n37) );
  OAI22D0 U144 ( .A1(n152), .A2(n147), .B1(b[3]), .B2(n151), .ZN(n19) );
  OAI22D0 U145 ( .A1(b[3]), .A2(n148), .B1(n149), .B2(n147), .ZN(n13) );
endmodule


module oadm_fixed_mul_plane_root_opt_LEVEL1_RESIDUAL_DROP14_DW_mult_tc_0 ( a, 
        b, product );
  input [7:0] a;
  input [5:0] b;
  output [13:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n13, n15, n16, n17, n18, n19,
         n21, n22, n24, n25, n26, n27, n28, n29, n30, n31, n34, n37, n38, n39,
         n40, n41, n42, n43, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155;

  FA1D0 U2 ( .A(n148), .B(n13), .CI(n2), .CO(n1), .S(product[12]) );
  FA1D0 U3 ( .A(n15), .B(n145), .CI(n3), .CO(n2), .S(product[11]) );
  FA1D0 U4 ( .A(n17), .B(n16), .CI(n4), .CO(n3), .S(product[10]) );
  FA1D0 U5 ( .A(n21), .B(n18), .CI(n5), .CO(n4), .S(product[9]) );
  FA1D0 U6 ( .A(n22), .B(n24), .CI(n6), .CO(n5), .S(product[8]) );
  FA1D0 U7 ( .A(n26), .B(n25), .CI(n7), .CO(n6), .S(product[7]) );
  FA1D0 U8 ( .A(n28), .B(n27), .CI(n8), .CO(n7), .S(product[6]) );
  FA1D0 U9 ( .A(n30), .B(n29), .CI(n9), .CO(n8), .S(product[5]) );
  FA1D0 U15 ( .A(n37), .B(n19), .CI(n43), .CO(n15), .S(n16) );
  FA1D0 U16 ( .A(n146), .B(n38), .CI(n144), .CO(n17), .S(n18) );
  INVD1 U102 ( .I(n13), .ZN(n145) );
  INVD1 U103 ( .I(b[3]), .ZN(n147) );
  INVD1 U104 ( .I(n19), .ZN(n144) );
  XNR2D1 U105 ( .A1(b[3]), .A2(n153), .ZN(n138) );
  XNR2D1 U106 ( .A1(b[3]), .A2(n152), .ZN(n139) );
  XNR2D1 U107 ( .A1(b[3]), .A2(n154), .ZN(n140) );
  XNR2D1 U108 ( .A1(b[3]), .A2(n151), .ZN(n141) );
  INVD1 U109 ( .I(a[0]), .ZN(n155) );
  XNR2D1 U110 ( .A1(b[3]), .A2(n150), .ZN(n142) );
  XNR2D1 U111 ( .A1(b[3]), .A2(n149), .ZN(n143) );
  INVD1 U112 ( .I(n43), .ZN(n146) );
  INVD1 U113 ( .I(a[7]), .ZN(n148) );
  INVD1 U114 ( .I(a[2]), .ZN(n153) );
  INVD1 U115 ( .I(a[1]), .ZN(n154) );
  INVD1 U116 ( .I(a[3]), .ZN(n152) );
  INVD1 U117 ( .I(a[4]), .ZN(n151) );
  INVD1 U118 ( .I(a[5]), .ZN(n150) );
  INVD1 U119 ( .I(a[6]), .ZN(n149) );
  AN2D0 U120 ( .A1(n10), .A2(n31), .Z(n9) );
  CKXOR2D0 U121 ( .A1(n10), .A2(n31), .Z(product[4]) );
  AN2D0 U122 ( .A1(n34), .A2(n140), .Z(n10) );
  CKXOR2D0 U123 ( .A1(n34), .A2(n140), .Z(product[3]) );
  CKND0 U124 ( .I(n155), .ZN(product[2]) );
  NR2D0 U125 ( .A1(n147), .A2(a[0]), .ZN(n34) );
  AN2D0 U126 ( .A1(n138), .A2(n42), .Z(n30) );
  CKXOR2D0 U127 ( .A1(n138), .A2(n42), .Z(n31) );
  AN2D0 U128 ( .A1(n139), .A2(n41), .Z(n28) );
  CKXOR2D0 U129 ( .A1(n139), .A2(n41), .Z(n29) );
  AN2D0 U130 ( .A1(n141), .A2(n40), .Z(n26) );
  CKXOR2D0 U131 ( .A1(n141), .A2(n40), .Z(n27) );
  AN2D0 U132 ( .A1(n142), .A2(n39), .Z(n24) );
  CKXOR2D0 U133 ( .A1(n142), .A2(n39), .Z(n25) );
  OR2D0 U134 ( .A1(n144), .A2(n143), .Z(n21) );
  XNR2D0 U135 ( .A1(n144), .A2(n143), .ZN(n22) );
  CKND0 U136 ( .I(n1), .ZN(product[13]) );
  CKXOR2D0 U137 ( .A1(n147), .A2(a[7]), .Z(n43) );
  NR2D0 U138 ( .A1(b[3]), .A2(n155), .ZN(n42) );
  OAI22D0 U139 ( .A1(n155), .A2(n147), .B1(b[3]), .B2(n154), .ZN(n41) );
  OAI22D0 U140 ( .A1(n154), .A2(n147), .B1(b[3]), .B2(n153), .ZN(n40) );
  OAI22D0 U141 ( .A1(n153), .A2(n147), .B1(b[3]), .B2(n152), .ZN(n39) );
  OAI22D0 U142 ( .A1(n151), .A2(n147), .B1(b[3]), .B2(n150), .ZN(n38) );
  OAI22D0 U143 ( .A1(n150), .A2(n147), .B1(b[3]), .B2(n149), .ZN(n37) );
  OAI22D0 U144 ( .A1(n152), .A2(n147), .B1(b[3]), .B2(n151), .ZN(n19) );
  OAI22D0 U145 ( .A1(b[3]), .A2(n148), .B1(n149), .B2(n147), .ZN(n13) );
endmodule


module oadm_fixed_mul_plane_root_opt_LEVEL1_RESIDUAL_DROP14 ( x_mantissa, 
        y_mantissa, plane_value );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_value;
  wire   x_residual_21_, y_residual_21_, N51, N50, N49, N48, N47, N46, N45,
         N44, N43, N42, N41, N40, N39, N24, N23, N22, N21, N20, N19, N18, N17,
         N16, N15, N14, N13, N12, mult_46_n15, mult_46_n13, mult_46_n10,
         mult_46_n9, mult_46_n3, mult_46_n2, n1, n140, n160, n170, n180, n190,
         n200, n210, n220, n230, n240, n25, n26, n28, n30;
  wire   [13:9] x_product;
  wire   [13:2] y_product;
  wire   [8:5] midpoint_product;
  wire   [4:3] midpoint_sum;
  wire   [24:14] add_0_root_add_56_3_carry;
  wire   [24:21] add_2_root_add_56_3_carry;
  wire   [15:14] add_1_root_add_56_3_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  oadm_fixed_mul_plane_root_opt_LEVEL1_RESIDUAL_DROP14_DW_mult_tc_1 mult_33 ( 
        .a({x_residual_21_, x_mantissa[20:14]}), .b({n1, n140, y_mantissa[22], 
        n140, n1, n1}), .product({x_product, N18, N17, N16, N15, N14, N13, N12, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1}) );
  oadm_fixed_mul_plane_root_opt_LEVEL1_RESIDUAL_DROP14_DW_mult_tc_0 mult_35 ( 
        .a({y_residual_21_, y_mantissa[20:14]}), .b({n1, n140, x_mantissa[22], 
        n140, n1, n1}), .product({y_product, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3}) );
  TIEL U3 ( .ZN(n1) );
  TIEH U4 ( .Z(n140) );
  AN2XD1 U20 ( .A1(midpoint_sum[3]), .A2(y_product[2]), .Z(n160) );
  AN2XD1 U21 ( .A1(N12), .A2(N39), .Z(n170) );
  XOR3D1 U22 ( .A1(N24), .A2(N51), .A3(add_0_root_add_56_3_carry[24]), .Z(
        plane_value[24]) );
  FA1D0 U24 ( .A(N23), .B(N50), .CI(add_0_root_add_56_3_carry[23]), .CO(
        add_0_root_add_56_3_carry[24]), .S(plane_value[23]) );
  FA1D0 U25 ( .A(midpoint_product[8]), .B(x_product[13]), .CI(
        add_2_root_add_56_3_carry[23]), .CO(add_2_root_add_56_3_carry[24]), 
        .S(N23) );
  FA1D0 U26 ( .A(N22), .B(N49), .CI(add_0_root_add_56_3_carry[22]), .CO(
        add_0_root_add_56_3_carry[23]), .S(plane_value[22]) );
  FA1D0 U27 ( .A(N21), .B(N48), .CI(add_0_root_add_56_3_carry[21]), .CO(
        add_0_root_add_56_3_carry[22]), .S(plane_value[21]) );
  AN2XD1 U28 ( .A1(n190), .A2(y_product[12]), .Z(n180) );
  FA1D0 U29 ( .A(N19), .B(N46), .CI(add_0_root_add_56_3_carry[19]), .CO(
        add_0_root_add_56_3_carry[20]), .S(plane_value[19]) );
  INVD1 U30 ( .I(x_product[9]), .ZN(N19) );
  AN2XD1 U31 ( .A1(n200), .A2(y_product[11]), .Z(n190) );
  FA1D0 U32 ( .A(N18), .B(N45), .CI(add_0_root_add_56_3_carry[18]), .CO(
        add_0_root_add_56_3_carry[19]), .S(plane_value[18]) );
  AN2XD1 U33 ( .A1(n210), .A2(y_product[10]), .Z(n200) );
  FA1D0 U34 ( .A(N17), .B(N44), .CI(add_0_root_add_56_3_carry[17]), .CO(
        add_0_root_add_56_3_carry[18]), .S(plane_value[17]) );
  AN2XD1 U35 ( .A1(n220), .A2(y_product[9]), .Z(n210) );
  FA1D0 U36 ( .A(N16), .B(N43), .CI(add_0_root_add_56_3_carry[16]), .CO(
        add_0_root_add_56_3_carry[17]), .S(plane_value[16]) );
  FA1D0 U37 ( .A(N14), .B(N41), .CI(add_0_root_add_56_3_carry[14]), .CO(
        add_0_root_add_56_3_carry[15]), .S(plane_value[14]) );
  FA1D0 U38 ( .A(N15), .B(N42), .CI(add_0_root_add_56_3_carry[15]), .CO(
        add_0_root_add_56_3_carry[16]), .S(plane_value[15]) );
  AN2XD1 U39 ( .A1(n230), .A2(y_product[8]), .Z(n220) );
  AN2XD1 U40 ( .A1(n240), .A2(y_product[7]), .Z(n230) );
  AN2XD1 U42 ( .A1(n25), .A2(y_product[6]), .Z(n240) );
  AN2XD1 U43 ( .A1(add_1_root_add_56_3_carry[15]), .A2(y_product[5]), .Z(n25)
         );
  FA1D0 U45 ( .A(midpoint_product[7]), .B(x_product[12]), .CI(
        add_2_root_add_56_3_carry[22]), .CO(add_2_root_add_56_3_carry[23]), 
        .S(N22) );
  FA1D0 U46 ( .A(midpoint_product[6]), .B(x_product[11]), .CI(
        add_2_root_add_56_3_carry[21]), .CO(add_2_root_add_56_3_carry[22]), 
        .S(N21) );
  FA1D0 U47 ( .A(N20), .B(N47), .CI(add_0_root_add_56_3_carry[20]), .CO(
        add_0_root_add_56_3_carry[21]), .S(plane_value[20]) );
  FA1D0 U48 ( .A(y_product[3]), .B(midpoint_sum[4]), .CI(n160), .CO(
        add_1_root_add_56_3_carry[14]), .S(N40) );
  ND2D1 U49 ( .A1(n26), .A2(n28), .ZN(midpoint_sum[4]) );
  FA1D0 U50 ( .A(N13), .B(N40), .CI(n170), .CO(add_0_root_add_56_3_carry[14]), 
        .S(plane_value[13]) );
  ND2D1 U51 ( .A1(n28), .A2(n26), .ZN(mult_46_n9) );
  FA1D0 U52 ( .A(midpoint_product[5]), .B(x_product[10]), .CI(x_product[9]), 
        .CO(add_2_root_add_56_3_carry[21]), .S(N20) );
  INVD1 U53 ( .I(y_mantissa[22]), .ZN(n26) );
  INVD1 U54 ( .I(x_mantissa[22]), .ZN(n28) );
  INVD1 U55 ( .I(x_mantissa[21]), .ZN(x_residual_21_) );
  INVD1 U56 ( .I(y_mantissa[21]), .ZN(y_residual_21_) );
  XNR2D1 U57 ( .A1(y_mantissa[22]), .A2(x_mantissa[22]), .ZN(midpoint_sum[3])
         );
  XNR2D1 U58 ( .A1(add_1_root_add_56_3_carry[14]), .A2(y_product[4]), .ZN(N41)
         );
  CKXOR2D1 U59 ( .A1(N39), .A2(N12), .Z(plane_value[12]) );
  CKXOR2D1 U60 ( .A1(midpoint_sum[3]), .A2(y_product[2]), .Z(N39) );
  CKXOR2D1 U61 ( .A1(add_1_root_add_56_3_carry[15]), .A2(y_product[5]), .Z(N42) );
  CKXOR2D1 U62 ( .A1(n25), .A2(y_product[6]), .Z(N43) );
  CKXOR2D1 U63 ( .A1(n240), .A2(y_product[7]), .Z(N44) );
  CKXOR2D1 U64 ( .A1(n230), .A2(y_product[8]), .Z(N45) );
  CKXOR2D1 U65 ( .A1(n220), .A2(y_product[9]), .Z(N46) );
  CKXOR2D1 U66 ( .A1(n210), .A2(y_product[10]), .Z(N47) );
  CKXOR2D1 U67 ( .A1(n200), .A2(y_product[11]), .Z(N48) );
  CKXOR2D1 U68 ( .A1(n190), .A2(y_product[12]), .Z(N49) );
  CKXOR2D1 U69 ( .A1(n180), .A2(y_product[13]), .Z(N50) );
  NR2D0 U71 ( .A1(n26), .A2(n28), .ZN(mult_46_n13) );
  CKXOR2D0 U72 ( .A1(x_mantissa[22]), .A2(y_mantissa[22]), .Z(
        midpoint_product[5]) );
  AN2D0 U73 ( .A1(x_mantissa[22]), .A2(y_mantissa[22]), .Z(mult_46_n15) );
  CKXOR2D0 U74 ( .A1(mult_46_n13), .A2(mult_46_n15), .Z(midpoint_product[6])
         );
  AN2D0 U75 ( .A1(mult_46_n13), .A2(mult_46_n15), .Z(mult_46_n3) );
  CKXOR2D0 U76 ( .A1(mult_46_n3), .A2(mult_46_n10), .Z(midpoint_product[7]) );
  XNR2D1 U78 ( .A1(mult_46_n2), .A2(mult_46_n9), .ZN(midpoint_product[8]) );
  XNR2D1 U79 ( .A1(x_mantissa[22]), .A2(y_mantissa[22]), .ZN(mult_46_n10) );
  XNR3D0 U5 ( .A1(add_2_root_add_56_3_carry[24]), .A2(x_product[13]), .A3(n30), 
        .ZN(N24) );
  NR2D0 U6 ( .A1(mult_46_n2), .A2(mult_46_n9), .ZN(n30) );
  INR2D0 U7 ( .A1(y_product[13]), .B1(n180), .ZN(N51) );
  AN2D0 U8 ( .A1(mult_46_n10), .A2(mult_46_n3), .Z(mult_46_n2) );
  OR2D0 U9 ( .A1(y_product[4]), .A2(add_1_root_add_56_3_carry[14]), .Z(
        add_1_root_add_56_3_carry[15]) );
endmodule


module fp32_normal_finite_wrapper_DW01_add_3_DW01_add_9 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:2] carry;

  XOR3D1 U1_7 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .Z(SUM[7]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  AN2D1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module fp32_normal_finite_wrapper ( x, y, divide_mode, fraction_x, fraction_y, 
        result_fraction, exponent_adjust, result );
  input [31:0] x;
  input [31:0] y;
  output [22:0] fraction_x;
  output [22:0] fraction_y;
  input [22:0] result_fraction;
  input [2:0] exponent_adjust;
  output [31:0] result;
  input divide_mode;
  wire   N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29,
         N28, N27, n1, n4, n5, n6, n7, n8, n79, n80;
  wire   [7:2] add_0_root_add_0_root_add_25_2_carry;

  CKXOR2D1 U2 ( .A1(y[31]), .A2(x[31]), .Z(result[31]) );
  fp32_normal_finite_wrapper_DW01_add_3_DW01_add_9 add_1_root_add_0_root_add_25_2 ( 
        .A(x[30:23]), .B({N42, N41, N40, N39, N38, N37, N36, N35}), .CI(n79), 
        .SUM({N34, N33, N32, N31, N30, N29, N28, N27}) );
  AN2XD1 U3 ( .A1(exponent_adjust[0]), .A2(N27), .Z(n1) );
  CKBD1 U34 ( .I(result_fraction[11]), .Z(result[11]) );
  CKBD1 U35 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U36 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U37 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U38 ( .I(result_fraction[15]), .Z(result[15]) );
  FA1D0 U39 ( .A(N28), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(result[24]) );
  FA1D0 U40 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(result[25]) );
  FA1D0 U41 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(result[26]) );
  FA1D0 U42 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(result[27]) );
  FA1D0 U43 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(result[28]) );
  FA1D0 U44 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(result[29]) );
  XOR3D1 U53 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(result[30]) );
  CKBD1 U54 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U55 ( .I(x[22]), .Z(fraction_x[22]) );
  AN2XD1 U63 ( .A1(y[23]), .A2(y[24]), .Z(n4) );
  AN2XD1 U64 ( .A1(n4), .A2(y[25]), .Z(n5) );
  AN2XD1 U65 ( .A1(n5), .A2(y[26]), .Z(n6) );
  AN2XD1 U66 ( .A1(n6), .A2(y[27]), .Z(n7) );
  AN2XD1 U67 ( .A1(n7), .A2(y[28]), .Z(n8) );
  CKBD1 U86 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U87 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U88 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U89 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U90 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U91 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U92 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U93 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U94 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U95 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U96 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U97 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U98 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U99 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U100 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U101 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U102 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U103 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U104 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U105 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U106 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U107 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U108 ( .I(result_fraction[16]), .Z(result[16]) );
  TIEL U109 ( .ZN(n79) );
  CKXOR2D1 U112 ( .A1(exponent_adjust[0]), .A2(N27), .Z(result[23]) );
  CKXOR2D1 U113 ( .A1(y[23]), .A2(y[24]), .Z(N36) );
  CKXOR2D1 U114 ( .A1(n4), .A2(y[25]), .Z(N37) );
  CKXOR2D1 U115 ( .A1(n5), .A2(y[26]), .Z(N38) );
  CKXOR2D1 U116 ( .A1(n6), .A2(y[27]), .Z(N39) );
  CKXOR2D1 U117 ( .A1(n7), .A2(y[28]), .Z(N40) );
  CKXOR2D1 U118 ( .A1(n8), .A2(y[29]), .Z(N41) );
  CKND0 U119 ( .I(y[23]), .ZN(N35) );
  CKXOR2D0 U4 ( .A1(y[30]), .A2(n80), .Z(N42) );
  CKND2D0 U5 ( .A1(y[29]), .A2(n8), .ZN(n80) );
endmodule


module oadm_fixed_mul_root_opt_LEVEL1_RESIDUAL_DROP14 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n27, n29, n30, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [22:14] x_mantissa;
  wire   [22:14] y_mantissa;
  wire   [24:12] core_value;
  wire   [22:11] normalized_fraction;
  wire   [2:0] exponent_adjust;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54;

  oadm_fixed_mul_plane_root_opt_LEVEL1_RESIDUAL_DROP14 plane ( .x_mantissa({
        1'b0, x_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y_mantissa({1'b0, y_mantissa, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .plane_value({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, core_value, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({
        y[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), .fraction_x({x_mantissa, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29}), .fraction_y({
        y_mantissa, SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .exponent_adjust({
        exponent_adjust[2], exponent_adjust[2], exponent_adjust[0]}), .result(
        {result[31:11], SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54}) );
  INVD1 U3 ( .I(n30), .ZN(n2) );
  ND2D1 U4 ( .A1(n1), .A2(n2), .ZN(exponent_adjust[0]) );
  IND2D1 U5 ( .A1(n29), .B1(n2), .ZN(exponent_adjust[2]) );
  NR3D0 U6 ( .A1(core_value[23]), .A2(core_value[24]), .A3(n4), .ZN(n30) );
  INVD1 U7 ( .I(core_value[24]), .ZN(n1) );
  ND2D1 U8 ( .A1(core_value[23]), .A2(n1), .ZN(n27) );
  NR2D1 U9 ( .A1(n1), .A2(n14), .ZN(normalized_fraction[11]) );
  NR3D0 U10 ( .A1(core_value[23]), .A2(core_value[24]), .A3(core_value[22]), 
        .ZN(n29) );
  INVD1 U11 ( .I(core_value[22]), .ZN(n4) );
  OAI221D0 U12 ( .A1(n27), .A2(n10), .B1(n1), .B2(n9), .C(n44), .ZN(
        normalized_fraction[16]) );
  AOI22D1 U13 ( .A1(core_value[14]), .A2(n29), .B1(core_value[15]), .B2(n30), 
        .ZN(n44) );
  OAI221D0 U14 ( .A1(n27), .A2(n9), .B1(n1), .B2(n8), .C(n43), .ZN(
        normalized_fraction[17]) );
  AOI22D1 U15 ( .A1(core_value[15]), .A2(n29), .B1(core_value[16]), .B2(n30), 
        .ZN(n43) );
  OAI221D0 U16 ( .A1(n27), .A2(n8), .B1(n1), .B2(n7), .C(n42), .ZN(
        normalized_fraction[18]) );
  AOI22D1 U17 ( .A1(core_value[16]), .A2(n29), .B1(core_value[17]), .B2(n30), 
        .ZN(n42) );
  OAI221D0 U18 ( .A1(n27), .A2(n7), .B1(n1), .B2(n6), .C(n41), .ZN(
        normalized_fraction[19]) );
  AOI22D1 U19 ( .A1(core_value[17]), .A2(n29), .B1(core_value[18]), .B2(n30), 
        .ZN(n41) );
  OAI221D0 U20 ( .A1(n27), .A2(n6), .B1(n1), .B2(n5), .C(n40), .ZN(
        normalized_fraction[20]) );
  AOI22D1 U21 ( .A1(core_value[18]), .A2(n29), .B1(core_value[19]), .B2(n30), 
        .ZN(n40) );
  OAI221D0 U22 ( .A1(n27), .A2(n13), .B1(n1), .B2(n12), .C(n47), .ZN(
        normalized_fraction[13]) );
  ND2D1 U23 ( .A1(core_value[12]), .A2(n30), .ZN(n47) );
  OAI22D1 U24 ( .A1(n27), .A2(n14), .B1(n1), .B2(n13), .ZN(
        normalized_fraction[12]) );
  INVD1 U25 ( .I(core_value[21]), .ZN(n5) );
  INVD1 U26 ( .I(core_value[19]), .ZN(n7) );
  INVD1 U27 ( .I(core_value[18]), .ZN(n8) );
  INVD1 U28 ( .I(core_value[17]), .ZN(n9) );
  INVD1 U29 ( .I(core_value[16]), .ZN(n10) );
  INVD1 U30 ( .I(core_value[15]), .ZN(n11) );
  INVD1 U31 ( .I(core_value[14]), .ZN(n12) );
  INVD1 U32 ( .I(core_value[12]), .ZN(n14) );
  OAI221D0 U33 ( .A1(n27), .A2(n12), .B1(n1), .B2(n11), .C(n46), .ZN(
        normalized_fraction[14]) );
  AOI22D1 U34 ( .A1(core_value[12]), .A2(n29), .B1(core_value[13]), .B2(n30), 
        .ZN(n46) );
  OAI221D0 U35 ( .A1(n27), .A2(n11), .B1(n1), .B2(n10), .C(n45), .ZN(
        normalized_fraction[15]) );
  AOI22D1 U36 ( .A1(core_value[13]), .A2(n29), .B1(core_value[14]), .B2(n30), 
        .ZN(n45) );
  OAI221D0 U37 ( .A1(n4), .A2(n27), .B1(n3), .B2(n1), .C(n38), .ZN(
        normalized_fraction[22]) );
  INVD1 U38 ( .I(core_value[23]), .ZN(n3) );
  AOI22D1 U39 ( .A1(core_value[20]), .A2(n29), .B1(core_value[21]), .B2(n30), 
        .ZN(n38) );
  OAI221D0 U40 ( .A1(n27), .A2(n5), .B1(n4), .B2(n1), .C(n39), .ZN(
        normalized_fraction[21]) );
  AOI22D1 U41 ( .A1(core_value[19]), .A2(n29), .B1(core_value[20]), .B2(n30), 
        .ZN(n39) );
  INVD1 U42 ( .I(core_value[20]), .ZN(n6) );
  INVD1 U43 ( .I(core_value[13]), .ZN(n13) );
endmodule


module oadm_fixed_l1_mul_root_opt ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10;
  assign result[9] = 1'b0;
  assign result[8] = 1'b0;
  assign result[7] = 1'b0;
  assign result[6] = 1'b0;
  assign result[5] = 1'b0;
  assign result[4] = 1'b0;
  assign result[3] = 1'b0;
  assign result[2] = 1'b0;
  assign result[1] = 1'b0;
  assign result[10] = 1'b0;
  assign result[0] = 1'b0;

  oadm_fixed_mul_root_opt_LEVEL1_RESIDUAL_DROP14 impl ( .x({x[31:14], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .y({y[31:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result({result[31:11], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10}) );
endmodule

