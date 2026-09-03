/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 12:55:18 2026
/////////////////////////////////////////////////////////////


module oadm_fixed_mul_plane_root_opt_LEVEL1_RESIDUAL_DROP10_DW_mult_tc_1 ( a, 
        b, product );
  input [11:0] a;
  input [5:0] b;
  output [17:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n19,
         n20, n21, n22, n23, n25, n26, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n46, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207;

  FA1D0 U2 ( .A(n196), .B(n17), .CI(n2), .CO(n1), .S(product[16]) );
  FA1D0 U3 ( .A(n19), .B(n194), .CI(n3), .CO(n2), .S(product[15]) );
  FA1D0 U4 ( .A(n21), .B(n20), .CI(n4), .CO(n3), .S(product[14]) );
  FA1D0 U5 ( .A(n25), .B(n22), .CI(n5), .CO(n4), .S(product[13]) );
  FA1D0 U6 ( .A(n26), .B(n28), .CI(n6), .CO(n5), .S(product[12]) );
  FA1D0 U7 ( .A(n30), .B(n29), .CI(n7), .CO(n6), .S(product[11]) );
  FA1D0 U8 ( .A(n32), .B(n31), .CI(n8), .CO(n7), .S(product[10]) );
  FA1D0 U9 ( .A(n34), .B(n33), .CI(n9), .CO(n8), .S(product[9]) );
  FA1D0 U10 ( .A(n36), .B(n35), .CI(n10), .CO(n9), .S(product[8]) );
  FA1D0 U11 ( .A(n38), .B(n37), .CI(n11), .CO(n10), .S(product[7]) );
  FA1D0 U12 ( .A(n40), .B(n39), .CI(n12), .CO(n11), .S(product[6]) );
  FA1D0 U13 ( .A(n42), .B(n41), .CI(n13), .CO(n12), .S(product[5]) );
  FA1D0 U19 ( .A(n49), .B(n23), .CI(n59), .CO(n19), .S(n20) );
  FA1D0 U20 ( .A(n195), .B(n50), .CI(n193), .CO(n21), .S(n22) );
  INVD1 U134 ( .I(n17), .ZN(n194) );
  INVD1 U135 ( .I(b[3]), .ZN(n192) );
  INVD1 U136 ( .I(n23), .ZN(n193) );
  XNR2D1 U137 ( .A1(b[3]), .A2(n205), .ZN(n182) );
  XNR2D1 U138 ( .A1(b[3]), .A2(n204), .ZN(n183) );
  XNR2D1 U139 ( .A1(b[3]), .A2(n206), .ZN(n184) );
  XNR2D1 U140 ( .A1(b[3]), .A2(n203), .ZN(n185) );
  XNR2D1 U141 ( .A1(b[3]), .A2(n202), .ZN(n186) );
  INVD1 U142 ( .I(a[0]), .ZN(n207) );
  XNR2D1 U143 ( .A1(b[3]), .A2(n201), .ZN(n187) );
  XNR2D1 U144 ( .A1(b[3]), .A2(n200), .ZN(n188) );
  XNR2D1 U145 ( .A1(b[3]), .A2(n199), .ZN(n189) );
  XNR2D1 U146 ( .A1(b[3]), .A2(n198), .ZN(n190) );
  XNR2D1 U147 ( .A1(b[3]), .A2(n197), .ZN(n191) );
  INVD1 U148 ( .I(n59), .ZN(n195) );
  INVD1 U149 ( .I(a[11]), .ZN(n196) );
  INVD1 U150 ( .I(a[2]), .ZN(n205) );
  INVD1 U151 ( .I(a[1]), .ZN(n206) );
  INVD1 U152 ( .I(a[3]), .ZN(n204) );
  INVD1 U153 ( .I(a[4]), .ZN(n203) );
  INVD1 U154 ( .I(a[5]), .ZN(n202) );
  INVD1 U155 ( .I(a[6]), .ZN(n201) );
  INVD1 U156 ( .I(a[7]), .ZN(n200) );
  INVD1 U157 ( .I(a[8]), .ZN(n199) );
  INVD1 U158 ( .I(a[9]), .ZN(n198) );
  INVD1 U159 ( .I(a[10]), .ZN(n197) );
  AN2D0 U160 ( .A1(n14), .A2(n43), .Z(n13) );
  CKXOR2D0 U161 ( .A1(n14), .A2(n43), .Z(product[4]) );
  AN2D0 U162 ( .A1(n46), .A2(n184), .Z(n14) );
  CKXOR2D0 U163 ( .A1(n46), .A2(n184), .Z(product[3]) );
  CKND0 U164 ( .I(n207), .ZN(product[2]) );
  NR2D0 U165 ( .A1(n192), .A2(a[0]), .ZN(n46) );
  AN2D0 U166 ( .A1(n182), .A2(n58), .Z(n42) );
  CKXOR2D0 U167 ( .A1(n182), .A2(n58), .Z(n43) );
  AN2D0 U168 ( .A1(n183), .A2(n57), .Z(n40) );
  CKXOR2D0 U169 ( .A1(n183), .A2(n57), .Z(n41) );
  AN2D0 U170 ( .A1(n185), .A2(n56), .Z(n38) );
  CKXOR2D0 U171 ( .A1(n185), .A2(n56), .Z(n39) );
  AN2D0 U172 ( .A1(n186), .A2(n55), .Z(n36) );
  CKXOR2D0 U173 ( .A1(n186), .A2(n55), .Z(n37) );
  AN2D0 U174 ( .A1(n187), .A2(n54), .Z(n34) );
  CKXOR2D0 U175 ( .A1(n187), .A2(n54), .Z(n35) );
  AN2D0 U176 ( .A1(n188), .A2(n53), .Z(n32) );
  CKXOR2D0 U177 ( .A1(n188), .A2(n53), .Z(n33) );
  AN2D0 U178 ( .A1(n189), .A2(n52), .Z(n30) );
  CKXOR2D0 U179 ( .A1(n189), .A2(n52), .Z(n31) );
  AN2D0 U180 ( .A1(n190), .A2(n51), .Z(n28) );
  CKXOR2D0 U181 ( .A1(n190), .A2(n51), .Z(n29) );
  OR2D0 U182 ( .A1(n193), .A2(n191), .Z(n25) );
  XNR2D0 U183 ( .A1(n193), .A2(n191), .ZN(n26) );
  CKND0 U184 ( .I(n1), .ZN(product[17]) );
  CKXOR2D0 U185 ( .A1(n192), .A2(a[11]), .Z(n59) );
  NR2D0 U186 ( .A1(b[3]), .A2(n207), .ZN(n58) );
  OAI22D0 U187 ( .A1(n207), .A2(n192), .B1(b[3]), .B2(n206), .ZN(n57) );
  OAI22D0 U188 ( .A1(n206), .A2(n192), .B1(b[3]), .B2(n205), .ZN(n56) );
  OAI22D0 U189 ( .A1(n205), .A2(n192), .B1(b[3]), .B2(n204), .ZN(n55) );
  OAI22D0 U190 ( .A1(n204), .A2(n192), .B1(b[3]), .B2(n203), .ZN(n54) );
  OAI22D0 U191 ( .A1(n203), .A2(n192), .B1(b[3]), .B2(n202), .ZN(n53) );
  OAI22D0 U192 ( .A1(n202), .A2(n192), .B1(b[3]), .B2(n201), .ZN(n52) );
  OAI22D0 U193 ( .A1(n201), .A2(n192), .B1(b[3]), .B2(n200), .ZN(n51) );
  OAI22D0 U194 ( .A1(n199), .A2(n192), .B1(b[3]), .B2(n198), .ZN(n50) );
  OAI22D0 U195 ( .A1(n198), .A2(n192), .B1(b[3]), .B2(n197), .ZN(n49) );
  OAI22D0 U196 ( .A1(n200), .A2(n192), .B1(b[3]), .B2(n199), .ZN(n23) );
  OAI22D0 U197 ( .A1(b[3]), .A2(n196), .B1(n197), .B2(n192), .ZN(n17) );
endmodule


module oadm_fixed_mul_plane_root_opt_LEVEL1_RESIDUAL_DROP10_DW_mult_tc_0 ( a, 
        b, product );
  input [11:0] a;
  input [5:0] b;
  output [17:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n19,
         n20, n21, n22, n23, n25, n26, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n46, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207;

  FA1D0 U2 ( .A(n196), .B(n17), .CI(n2), .CO(n1), .S(product[16]) );
  FA1D0 U3 ( .A(n19), .B(n194), .CI(n3), .CO(n2), .S(product[15]) );
  FA1D0 U4 ( .A(n21), .B(n20), .CI(n4), .CO(n3), .S(product[14]) );
  FA1D0 U5 ( .A(n25), .B(n22), .CI(n5), .CO(n4), .S(product[13]) );
  FA1D0 U6 ( .A(n26), .B(n28), .CI(n6), .CO(n5), .S(product[12]) );
  FA1D0 U7 ( .A(n30), .B(n29), .CI(n7), .CO(n6), .S(product[11]) );
  FA1D0 U8 ( .A(n32), .B(n31), .CI(n8), .CO(n7), .S(product[10]) );
  FA1D0 U9 ( .A(n34), .B(n33), .CI(n9), .CO(n8), .S(product[9]) );
  FA1D0 U10 ( .A(n36), .B(n35), .CI(n10), .CO(n9), .S(product[8]) );
  FA1D0 U11 ( .A(n38), .B(n37), .CI(n11), .CO(n10), .S(product[7]) );
  FA1D0 U12 ( .A(n40), .B(n39), .CI(n12), .CO(n11), .S(product[6]) );
  FA1D0 U13 ( .A(n42), .B(n41), .CI(n13), .CO(n12), .S(product[5]) );
  FA1D0 U19 ( .A(n49), .B(n23), .CI(n59), .CO(n19), .S(n20) );
  FA1D0 U20 ( .A(n195), .B(n50), .CI(n193), .CO(n21), .S(n22) );
  INVD1 U134 ( .I(n17), .ZN(n194) );
  INVD1 U135 ( .I(b[3]), .ZN(n192) );
  INVD1 U136 ( .I(n23), .ZN(n193) );
  XNR2D1 U137 ( .A1(b[3]), .A2(n205), .ZN(n182) );
  XNR2D1 U138 ( .A1(b[3]), .A2(n204), .ZN(n183) );
  XNR2D1 U139 ( .A1(b[3]), .A2(n206), .ZN(n184) );
  XNR2D1 U140 ( .A1(b[3]), .A2(n203), .ZN(n185) );
  INVD1 U141 ( .I(a[0]), .ZN(n207) );
  XNR2D1 U142 ( .A1(b[3]), .A2(n202), .ZN(n186) );
  XNR2D1 U143 ( .A1(b[3]), .A2(n201), .ZN(n187) );
  XNR2D1 U144 ( .A1(b[3]), .A2(n200), .ZN(n188) );
  XNR2D1 U145 ( .A1(b[3]), .A2(n199), .ZN(n189) );
  XNR2D1 U146 ( .A1(b[3]), .A2(n198), .ZN(n190) );
  XNR2D1 U147 ( .A1(b[3]), .A2(n197), .ZN(n191) );
  INVD1 U148 ( .I(n59), .ZN(n195) );
  INVD1 U149 ( .I(a[11]), .ZN(n196) );
  INVD1 U150 ( .I(a[2]), .ZN(n205) );
  INVD1 U151 ( .I(a[1]), .ZN(n206) );
  INVD1 U152 ( .I(a[3]), .ZN(n204) );
  INVD1 U153 ( .I(a[4]), .ZN(n203) );
  INVD1 U154 ( .I(a[5]), .ZN(n202) );
  INVD1 U155 ( .I(a[6]), .ZN(n201) );
  INVD1 U156 ( .I(a[7]), .ZN(n200) );
  INVD1 U157 ( .I(a[8]), .ZN(n199) );
  INVD1 U158 ( .I(a[9]), .ZN(n198) );
  INVD1 U159 ( .I(a[10]), .ZN(n197) );
  AN2D0 U160 ( .A1(n14), .A2(n43), .Z(n13) );
  CKXOR2D0 U161 ( .A1(n14), .A2(n43), .Z(product[4]) );
  AN2D0 U162 ( .A1(n46), .A2(n184), .Z(n14) );
  CKXOR2D0 U163 ( .A1(n46), .A2(n184), .Z(product[3]) );
  CKND0 U164 ( .I(n207), .ZN(product[2]) );
  NR2D0 U165 ( .A1(n192), .A2(a[0]), .ZN(n46) );
  AN2D0 U166 ( .A1(n182), .A2(n58), .Z(n42) );
  CKXOR2D0 U167 ( .A1(n182), .A2(n58), .Z(n43) );
  AN2D0 U168 ( .A1(n183), .A2(n57), .Z(n40) );
  CKXOR2D0 U169 ( .A1(n183), .A2(n57), .Z(n41) );
  AN2D0 U170 ( .A1(n185), .A2(n56), .Z(n38) );
  CKXOR2D0 U171 ( .A1(n185), .A2(n56), .Z(n39) );
  AN2D0 U172 ( .A1(n186), .A2(n55), .Z(n36) );
  CKXOR2D0 U173 ( .A1(n186), .A2(n55), .Z(n37) );
  AN2D0 U174 ( .A1(n187), .A2(n54), .Z(n34) );
  CKXOR2D0 U175 ( .A1(n187), .A2(n54), .Z(n35) );
  AN2D0 U176 ( .A1(n188), .A2(n53), .Z(n32) );
  CKXOR2D0 U177 ( .A1(n188), .A2(n53), .Z(n33) );
  AN2D0 U178 ( .A1(n189), .A2(n52), .Z(n30) );
  CKXOR2D0 U179 ( .A1(n189), .A2(n52), .Z(n31) );
  AN2D0 U180 ( .A1(n190), .A2(n51), .Z(n28) );
  CKXOR2D0 U181 ( .A1(n190), .A2(n51), .Z(n29) );
  OR2D0 U182 ( .A1(n193), .A2(n191), .Z(n25) );
  XNR2D0 U183 ( .A1(n193), .A2(n191), .ZN(n26) );
  CKND0 U184 ( .I(n1), .ZN(product[17]) );
  CKXOR2D0 U185 ( .A1(n192), .A2(a[11]), .Z(n59) );
  NR2D0 U186 ( .A1(b[3]), .A2(n207), .ZN(n58) );
  OAI22D0 U187 ( .A1(n207), .A2(n192), .B1(b[3]), .B2(n206), .ZN(n57) );
  OAI22D0 U188 ( .A1(n206), .A2(n192), .B1(b[3]), .B2(n205), .ZN(n56) );
  OAI22D0 U189 ( .A1(n205), .A2(n192), .B1(b[3]), .B2(n204), .ZN(n55) );
  OAI22D0 U190 ( .A1(n204), .A2(n192), .B1(b[3]), .B2(n203), .ZN(n54) );
  OAI22D0 U191 ( .A1(n203), .A2(n192), .B1(b[3]), .B2(n202), .ZN(n53) );
  OAI22D0 U192 ( .A1(n202), .A2(n192), .B1(b[3]), .B2(n201), .ZN(n52) );
  OAI22D0 U193 ( .A1(n201), .A2(n192), .B1(b[3]), .B2(n200), .ZN(n51) );
  OAI22D0 U194 ( .A1(n199), .A2(n192), .B1(b[3]), .B2(n198), .ZN(n50) );
  OAI22D0 U195 ( .A1(n198), .A2(n192), .B1(b[3]), .B2(n197), .ZN(n49) );
  OAI22D0 U196 ( .A1(n200), .A2(n192), .B1(b[3]), .B2(n199), .ZN(n23) );
  OAI22D0 U197 ( .A1(b[3]), .A2(n196), .B1(n197), .B2(n192), .ZN(n17) );
endmodule


module oadm_fixed_mul_plane_root_opt_LEVEL1_RESIDUAL_DROP10 ( x_mantissa, 
        y_mantissa, plane_value );
  input [23:0] x_mantissa;
  input [23:0] y_mantissa;
  output [28:0] plane_value;
  wire   x_residual_21_, y_residual_21_, N9, N8, N51, N50, N49, N48, N47, N46,
         N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N24, N23, N22,
         N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10,
         mult_46_n15, mult_46_n13, mult_46_n10, mult_46_n9, mult_46_n3,
         mult_46_n2, n1, n100, n120, n130, n140, n150, n160, n170, n180, n190,
         n200, n210, n220, n230, n240, n25, n28, n30, n32;
  wire   [17:13] x_product;
  wire   [17:2] y_product;
  wire   [8:5] midpoint_product;
  wire   [4:3] midpoint_sum;
  wire   [24:10] add_0_root_add_56_3_carry;
  wire   [24:21] add_2_root_add_56_3_carry;
  wire   [11:10] add_1_root_add_56_3_carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  oadm_fixed_mul_plane_root_opt_LEVEL1_RESIDUAL_DROP10_DW_mult_tc_1 mult_33 ( 
        .a({x_residual_21_, x_mantissa[20:10]}), .b({n1, n100, y_mantissa[22], 
        n100, n1, n1}), .product({x_product, N18, N17, N16, N15, N14, N13, N12, 
        N11, N10, N9, N8, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1})
         );
  oadm_fixed_mul_plane_root_opt_LEVEL1_RESIDUAL_DROP10_DW_mult_tc_0 mult_35 ( 
        .a({y_residual_21_, y_mantissa[20:10]}), .b({n1, n100, x_mantissa[22], 
        n100, n1, n1}), .product({y_product, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3}) );
  TIEL U3 ( .ZN(n1) );
  TIEH U4 ( .Z(n100) );
  AN2XD1 U16 ( .A1(midpoint_sum[3]), .A2(y_product[2]), .Z(n120) );
  AN2XD1 U17 ( .A1(N8), .A2(N35), .Z(n130) );
  XOR3D1 U18 ( .A1(N24), .A2(N51), .A3(add_0_root_add_56_3_carry[24]), .Z(
        plane_value[24]) );
  FA1D0 U20 ( .A(midpoint_product[7]), .B(x_product[16]), .CI(
        add_2_root_add_56_3_carry[22]), .CO(add_2_root_add_56_3_carry[23]), 
        .S(N22) );
  FA1D0 U21 ( .A(N23), .B(N50), .CI(add_0_root_add_56_3_carry[23]), .CO(
        add_0_root_add_56_3_carry[24]), .S(plane_value[23]) );
  FA1D0 U22 ( .A(N22), .B(N49), .CI(add_0_root_add_56_3_carry[22]), .CO(
        add_0_root_add_56_3_carry[23]), .S(plane_value[22]) );
  FA1D0 U23 ( .A(N21), .B(N48), .CI(add_0_root_add_56_3_carry[21]), .CO(
        add_0_root_add_56_3_carry[22]), .S(plane_value[21]) );
  FA1D0 U24 ( .A(N20), .B(N47), .CI(add_0_root_add_56_3_carry[20]), .CO(
        add_0_root_add_56_3_carry[21]), .S(plane_value[20]) );
  AN2XD1 U25 ( .A1(n150), .A2(y_product[16]), .Z(n140) );
  FA1D0 U26 ( .A(N19), .B(N46), .CI(add_0_root_add_56_3_carry[19]), .CO(
        add_0_root_add_56_3_carry[20]), .S(plane_value[19]) );
  INVD1 U27 ( .I(x_product[13]), .ZN(N19) );
  AN2XD1 U28 ( .A1(n160), .A2(y_product[15]), .Z(n150) );
  FA1D0 U29 ( .A(N18), .B(N45), .CI(add_0_root_add_56_3_carry[18]), .CO(
        add_0_root_add_56_3_carry[19]), .S(plane_value[18]) );
  AN2XD1 U30 ( .A1(n170), .A2(y_product[14]), .Z(n160) );
  FA1D0 U31 ( .A(N17), .B(N44), .CI(add_0_root_add_56_3_carry[17]), .CO(
        add_0_root_add_56_3_carry[18]), .S(plane_value[17]) );
  AN2XD1 U32 ( .A1(n180), .A2(y_product[13]), .Z(n170) );
  FA1D0 U33 ( .A(N16), .B(N43), .CI(add_0_root_add_56_3_carry[16]), .CO(
        add_0_root_add_56_3_carry[17]), .S(plane_value[16]) );
  AN2XD1 U34 ( .A1(n190), .A2(y_product[12]), .Z(n180) );
  FA1D0 U35 ( .A(N15), .B(N42), .CI(add_0_root_add_56_3_carry[15]), .CO(
        add_0_root_add_56_3_carry[16]), .S(plane_value[15]) );
  AN2XD1 U36 ( .A1(n200), .A2(y_product[11]), .Z(n190) );
  FA1D0 U37 ( .A(N14), .B(N41), .CI(add_0_root_add_56_3_carry[14]), .CO(
        add_0_root_add_56_3_carry[15]), .S(plane_value[14]) );
  AN2XD1 U38 ( .A1(n210), .A2(y_product[10]), .Z(n200) );
  FA1D0 U39 ( .A(N13), .B(N40), .CI(add_0_root_add_56_3_carry[13]), .CO(
        add_0_root_add_56_3_carry[14]), .S(plane_value[13]) );
  AN2XD1 U40 ( .A1(n220), .A2(y_product[9]), .Z(n210) );
  FA1D0 U41 ( .A(N12), .B(N39), .CI(add_0_root_add_56_3_carry[12]), .CO(
        add_0_root_add_56_3_carry[13]), .S(plane_value[12]) );
  FA1D0 U42 ( .A(N10), .B(N37), .CI(add_0_root_add_56_3_carry[10]), .CO(
        add_0_root_add_56_3_carry[11]), .S(plane_value[10]) );
  FA1D0 U43 ( .A(N11), .B(N38), .CI(add_0_root_add_56_3_carry[11]), .CO(
        add_0_root_add_56_3_carry[12]), .S(plane_value[11]) );
  AN2XD1 U44 ( .A1(n230), .A2(y_product[8]), .Z(n220) );
  AN2XD1 U46 ( .A1(n240), .A2(y_product[7]), .Z(n230) );
  AN2XD1 U47 ( .A1(n25), .A2(y_product[6]), .Z(n240) );
  AN2XD1 U48 ( .A1(add_1_root_add_56_3_carry[11]), .A2(y_product[5]), .Z(n25)
         );
  FA1D0 U49 ( .A(midpoint_product[8]), .B(x_product[17]), .CI(
        add_2_root_add_56_3_carry[23]), .CO(add_2_root_add_56_3_carry[24]), 
        .S(N23) );
  FA1D0 U50 ( .A(midpoint_product[6]), .B(x_product[15]), .CI(
        add_2_root_add_56_3_carry[21]), .CO(add_2_root_add_56_3_carry[22]), 
        .S(N21) );
  FA1D0 U51 ( .A(midpoint_product[5]), .B(x_product[14]), .CI(x_product[13]), 
        .CO(add_2_root_add_56_3_carry[21]), .S(N20) );
  FA1D0 U52 ( .A(y_product[3]), .B(midpoint_sum[4]), .CI(n120), .CO(
        add_1_root_add_56_3_carry[10]), .S(N36) );
  ND2D1 U53 ( .A1(n28), .A2(n30), .ZN(midpoint_sum[4]) );
  FA1D0 U54 ( .A(N9), .B(N36), .CI(n130), .CO(add_0_root_add_56_3_carry[10]), 
        .S(plane_value[9]) );
  ND2D1 U58 ( .A1(n30), .A2(n28), .ZN(mult_46_n9) );
  INVD1 U61 ( .I(x_mantissa[21]), .ZN(x_residual_21_) );
  INVD1 U62 ( .I(y_mantissa[21]), .ZN(y_residual_21_) );
  XNR2D1 U63 ( .A1(y_mantissa[22]), .A2(x_mantissa[22]), .ZN(midpoint_sum[3])
         );
  XNR2D1 U64 ( .A1(add_1_root_add_56_3_carry[10]), .A2(y_product[4]), .ZN(N37)
         );
  CKXOR2D1 U65 ( .A1(N35), .A2(N8), .Z(plane_value[8]) );
  CKXOR2D1 U66 ( .A1(midpoint_sum[3]), .A2(y_product[2]), .Z(N35) );
  CKXOR2D1 U67 ( .A1(add_1_root_add_56_3_carry[11]), .A2(y_product[5]), .Z(N38) );
  CKXOR2D1 U68 ( .A1(n25), .A2(y_product[6]), .Z(N39) );
  CKXOR2D1 U69 ( .A1(n240), .A2(y_product[7]), .Z(N40) );
  CKXOR2D1 U70 ( .A1(n230), .A2(y_product[8]), .Z(N41) );
  CKXOR2D1 U71 ( .A1(n220), .A2(y_product[9]), .Z(N42) );
  CKXOR2D1 U72 ( .A1(n210), .A2(y_product[10]), .Z(N43) );
  CKXOR2D1 U73 ( .A1(n200), .A2(y_product[11]), .Z(N44) );
  CKXOR2D1 U74 ( .A1(n190), .A2(y_product[12]), .Z(N45) );
  CKXOR2D1 U75 ( .A1(n180), .A2(y_product[13]), .Z(N46) );
  CKXOR2D1 U76 ( .A1(n170), .A2(y_product[14]), .Z(N47) );
  CKXOR2D1 U77 ( .A1(n160), .A2(y_product[15]), .Z(N48) );
  CKXOR2D1 U78 ( .A1(n150), .A2(y_product[16]), .Z(N49) );
  CKXOR2D1 U79 ( .A1(n140), .A2(y_product[17]), .Z(N50) );
  NR2D0 U81 ( .A1(n28), .A2(n30), .ZN(mult_46_n13) );
  CKXOR2D0 U82 ( .A1(x_mantissa[22]), .A2(y_mantissa[22]), .Z(
        midpoint_product[5]) );
  AN2D0 U83 ( .A1(x_mantissa[22]), .A2(y_mantissa[22]), .Z(mult_46_n15) );
  CKXOR2D0 U84 ( .A1(mult_46_n13), .A2(mult_46_n15), .Z(midpoint_product[6])
         );
  AN2D0 U85 ( .A1(mult_46_n13), .A2(mult_46_n15), .Z(mult_46_n3) );
  CKXOR2D0 U86 ( .A1(mult_46_n3), .A2(mult_46_n10), .Z(midpoint_product[7]) );
  XNR2D1 U88 ( .A1(mult_46_n2), .A2(mult_46_n9), .ZN(midpoint_product[8]) );
  XNR2D1 U89 ( .A1(x_mantissa[22]), .A2(y_mantissa[22]), .ZN(mult_46_n10) );
  XNR3D0 U5 ( .A1(add_2_root_add_56_3_carry[24]), .A2(x_product[17]), .A3(n32), 
        .ZN(N24) );
  NR2D0 U6 ( .A1(mult_46_n2), .A2(mult_46_n9), .ZN(n32) );
  INR2D0 U7 ( .A1(y_product[17]), .B1(n140), .ZN(N51) );
  AN2D0 U8 ( .A1(mult_46_n10), .A2(mult_46_n3), .Z(mult_46_n2) );
  OR2D0 U9 ( .A1(y_product[4]), .A2(add_1_root_add_56_3_carry[10]), .Z(
        add_1_root_add_56_3_carry[11]) );
  CKND0 U10 ( .I(y_mantissa[22]), .ZN(n28) );
  CKND0 U11 ( .I(x_mantissa[22]), .ZN(n30) );
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
  CKBD1 U26 ( .I(result_fraction[7]), .Z(result[7]) );
  CKBD1 U27 ( .I(result_fraction[22]), .Z(result[22]) );
  CKBD1 U28 ( .I(result_fraction[9]), .Z(result[9]) );
  CKBD1 U29 ( .I(result_fraction[21]), .Z(result[21]) );
  CKBD1 U30 ( .I(result_fraction[12]), .Z(result[12]) );
  CKBD1 U31 ( .I(result_fraction[13]), .Z(result[13]) );
  CKBD1 U32 ( .I(result_fraction[14]), .Z(result[14]) );
  CKBD1 U33 ( .I(result_fraction[15]), .Z(result[15]) );
  CKBD1 U34 ( .I(result_fraction[16]), .Z(result[16]) );
  CKBD1 U35 ( .I(result_fraction[17]), .Z(result[17]) );
  CKBD1 U36 ( .I(result_fraction[18]), .Z(result[18]) );
  CKBD1 U37 ( .I(result_fraction[19]), .Z(result[19]) );
  CKBD1 U38 ( .I(result_fraction[20]), .Z(result[20]) );
  CKBD1 U39 ( .I(result_fraction[8]), .Z(result[8]) );
  CKBD1 U40 ( .I(result_fraction[10]), .Z(result[10]) );
  CKBD1 U41 ( .I(result_fraction[11]), .Z(result[11]) );
  FA1D0 U42 ( .A(N28), .B(exponent_adjust[1]), .CI(n1), .CO(
        add_0_root_add_0_root_add_25_2_carry[2]), .S(result[24]) );
  FA1D0 U43 ( .A(N29), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[2]), .CO(
        add_0_root_add_0_root_add_25_2_carry[3]), .S(result[25]) );
  FA1D0 U44 ( .A(N30), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[3]), .CO(
        add_0_root_add_0_root_add_25_2_carry[4]), .S(result[26]) );
  FA1D0 U45 ( .A(N31), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[4]), .CO(
        add_0_root_add_0_root_add_25_2_carry[5]), .S(result[27]) );
  FA1D0 U46 ( .A(N32), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[5]), .CO(
        add_0_root_add_0_root_add_25_2_carry[6]), .S(result[28]) );
  FA1D0 U47 ( .A(N33), .B(exponent_adjust[2]), .CI(
        add_0_root_add_0_root_add_25_2_carry[6]), .CO(
        add_0_root_add_0_root_add_25_2_carry[7]), .S(result[29]) );
  XOR3D1 U56 ( .A1(N34), .A2(exponent_adjust[2]), .A3(
        add_0_root_add_0_root_add_25_2_carry[7]), .Z(result[30]) );
  CKBD1 U57 ( .I(y[22]), .Z(fraction_y[22]) );
  CKBD1 U58 ( .I(x[22]), .Z(fraction_x[22]) );
  CKBD1 U61 ( .I(y[10]), .Z(fraction_y[10]) );
  AN2XD1 U67 ( .A1(y[23]), .A2(y[24]), .Z(n4) );
  AN2XD1 U68 ( .A1(n4), .A2(y[25]), .Z(n5) );
  AN2XD1 U69 ( .A1(n5), .A2(y[26]), .Z(n6) );
  AN2XD1 U70 ( .A1(n6), .A2(y[27]), .Z(n7) );
  AN2XD1 U71 ( .A1(n7), .A2(y[28]), .Z(n8) );
  CKBD1 U86 ( .I(x[21]), .Z(fraction_x[21]) );
  CKBD1 U87 ( .I(x[20]), .Z(fraction_x[20]) );
  CKBD1 U88 ( .I(x[19]), .Z(fraction_x[19]) );
  CKBD1 U89 ( .I(x[18]), .Z(fraction_x[18]) );
  CKBD1 U90 ( .I(x[17]), .Z(fraction_x[17]) );
  CKBD1 U91 ( .I(x[16]), .Z(fraction_x[16]) );
  CKBD1 U92 ( .I(x[15]), .Z(fraction_x[15]) );
  CKBD1 U93 ( .I(x[14]), .Z(fraction_x[14]) );
  CKBD1 U94 ( .I(x[13]), .Z(fraction_x[13]) );
  CKBD1 U95 ( .I(x[12]), .Z(fraction_x[12]) );
  CKBD1 U96 ( .I(x[11]), .Z(fraction_x[11]) );
  CKBD1 U97 ( .I(x[10]), .Z(fraction_x[10]) );
  CKBD1 U98 ( .I(y[21]), .Z(fraction_y[21]) );
  CKBD1 U99 ( .I(y[20]), .Z(fraction_y[20]) );
  CKBD1 U100 ( .I(y[19]), .Z(fraction_y[19]) );
  CKBD1 U101 ( .I(y[18]), .Z(fraction_y[18]) );
  CKBD1 U102 ( .I(y[17]), .Z(fraction_y[17]) );
  CKBD1 U103 ( .I(y[16]), .Z(fraction_y[16]) );
  CKBD1 U104 ( .I(y[15]), .Z(fraction_y[15]) );
  CKBD1 U105 ( .I(y[14]), .Z(fraction_y[14]) );
  CKBD1 U106 ( .I(y[13]), .Z(fraction_y[13]) );
  CKBD1 U107 ( .I(y[12]), .Z(fraction_y[12]) );
  CKBD1 U108 ( .I(y[11]), .Z(fraction_y[11]) );
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


module oadm_fixed_mul_root_opt_LEVEL1_RESIDUAL_DROP10 ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;
  wire   n27, n28, n29, n30, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
  wire   [22:10] x_mantissa;
  wire   [22:10] y_mantissa;
  wire   [24:8] core_value;
  wire   [22:7] normalized_fraction;
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
        SYNOPSYS_UNCONNECTED__38;

  oadm_fixed_mul_plane_root_opt_LEVEL1_RESIDUAL_DROP10 plane ( .x_mantissa({
        1'b0, x_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .y_mantissa({1'b0, y_mantissa, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .plane_value({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, core_value, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11}) );
  fp32_normal_finite_wrapper fp_wrapper ( .x({x[31:10], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:10], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .divide_mode(1'b0), 
        .fraction_x({x_mantissa, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21}), .fraction_y({y_mantissa, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31}), 
        .result_fraction({normalized_fraction, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .exponent_adjust({exponent_adjust[2], exponent_adjust[2], 
        exponent_adjust[0]}), .result({result[31:7], SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38}) );
  IND2D1 U3 ( .A1(n29), .B1(n4), .ZN(exponent_adjust[2]) );
  INVD1 U4 ( .I(n30), .ZN(n4) );
  ND2D1 U5 ( .A1(n3), .A2(n4), .ZN(exponent_adjust[0]) );
  NR2D1 U6 ( .A1(n20), .A2(n3), .ZN(normalized_fraction[7]) );
  NR3D0 U7 ( .A1(core_value[23]), .A2(core_value[24]), .A3(core_value[22]), 
        .ZN(n29) );
  NR3D0 U8 ( .A1(core_value[23]), .A2(core_value[24]), .A3(n6), .ZN(n30) );
  INVD1 U9 ( .I(core_value[24]), .ZN(n3) );
  INVD1 U10 ( .I(core_value[22]), .ZN(n6) );
  ND2D1 U11 ( .A1(core_value[23]), .A2(n3), .ZN(n27) );
  OAI221D0 U12 ( .A1(n6), .A2(n27), .B1(n5), .B2(n3), .C(n38), .ZN(
        normalized_fraction[22]) );
  INVD1 U13 ( .I(core_value[23]), .ZN(n5) );
  AOI22D1 U14 ( .A1(core_value[20]), .A2(n29), .B1(core_value[21]), .B2(n30), 
        .ZN(n38) );
  OAI221D0 U15 ( .A1(n27), .A2(n19), .B1(n18), .B2(n3), .C(n28), .ZN(
        normalized_fraction[9]) );
  ND2D1 U16 ( .A1(core_value[8]), .A2(n30), .ZN(n28) );
  OAI221D0 U17 ( .A1(n27), .A2(n7), .B1(n6), .B2(n3), .C(n39), .ZN(
        normalized_fraction[21]) );
  AOI22D1 U18 ( .A1(core_value[19]), .A2(n29), .B1(core_value[20]), .B2(n30), 
        .ZN(n39) );
  OAI221D0 U19 ( .A1(n27), .A2(n16), .B1(n3), .B2(n15), .C(n48), .ZN(
        normalized_fraction[12]) );
  AOI22D1 U20 ( .A1(core_value[10]), .A2(n29), .B1(core_value[11]), .B2(n30), 
        .ZN(n48) );
  OAI221D0 U21 ( .A1(n27), .A2(n15), .B1(n3), .B2(n14), .C(n47), .ZN(
        normalized_fraction[13]) );
  AOI22D1 U22 ( .A1(core_value[11]), .A2(n29), .B1(core_value[12]), .B2(n30), 
        .ZN(n47) );
  OAI221D0 U23 ( .A1(n27), .A2(n14), .B1(n3), .B2(n13), .C(n46), .ZN(
        normalized_fraction[14]) );
  AOI22D1 U24 ( .A1(core_value[12]), .A2(n29), .B1(core_value[13]), .B2(n30), 
        .ZN(n46) );
  OAI221D0 U25 ( .A1(n27), .A2(n13), .B1(n3), .B2(n12), .C(n45), .ZN(
        normalized_fraction[15]) );
  AOI22D1 U26 ( .A1(core_value[13]), .A2(n29), .B1(core_value[14]), .B2(n30), 
        .ZN(n45) );
  OAI221D0 U27 ( .A1(n27), .A2(n12), .B1(n3), .B2(n11), .C(n44), .ZN(
        normalized_fraction[16]) );
  AOI22D1 U28 ( .A1(core_value[14]), .A2(n29), .B1(core_value[15]), .B2(n30), 
        .ZN(n44) );
  OAI221D0 U29 ( .A1(n27), .A2(n11), .B1(n3), .B2(n10), .C(n43), .ZN(
        normalized_fraction[17]) );
  AOI22D1 U30 ( .A1(core_value[15]), .A2(n29), .B1(core_value[16]), .B2(n30), 
        .ZN(n43) );
  OAI221D0 U31 ( .A1(n27), .A2(n10), .B1(n3), .B2(n9), .C(n42), .ZN(
        normalized_fraction[18]) );
  AOI22D1 U32 ( .A1(core_value[16]), .A2(n29), .B1(core_value[17]), .B2(n30), 
        .ZN(n42) );
  OAI221D0 U33 ( .A1(n27), .A2(n9), .B1(n3), .B2(n8), .C(n41), .ZN(
        normalized_fraction[19]) );
  AOI22D1 U34 ( .A1(core_value[17]), .A2(n29), .B1(core_value[18]), .B2(n30), 
        .ZN(n41) );
  OAI221D0 U35 ( .A1(n27), .A2(n8), .B1(n3), .B2(n7), .C(n40), .ZN(
        normalized_fraction[20]) );
  AOI22D1 U36 ( .A1(core_value[18]), .A2(n29), .B1(core_value[19]), .B2(n30), 
        .ZN(n40) );
  OAI22D1 U37 ( .A1(n20), .A2(n27), .B1(n19), .B2(n3), .ZN(
        normalized_fraction[8]) );
  INVD1 U38 ( .I(core_value[21]), .ZN(n7) );
  INVD1 U39 ( .I(core_value[20]), .ZN(n8) );
  INVD1 U40 ( .I(core_value[19]), .ZN(n9) );
  INVD1 U41 ( .I(core_value[18]), .ZN(n10) );
  INVD1 U42 ( .I(core_value[17]), .ZN(n11) );
  INVD1 U43 ( .I(core_value[16]), .ZN(n12) );
  INVD1 U44 ( .I(core_value[15]), .ZN(n13) );
  INVD1 U45 ( .I(core_value[14]), .ZN(n14) );
  INVD1 U46 ( .I(core_value[13]), .ZN(n15) );
  INVD1 U47 ( .I(core_value[12]), .ZN(n16) );
  INVD1 U48 ( .I(core_value[11]), .ZN(n17) );
  INVD1 U49 ( .I(core_value[10]), .ZN(n18) );
  INVD1 U50 ( .I(core_value[8]), .ZN(n20) );
  OAI221D0 U51 ( .A1(n27), .A2(n18), .B1(n3), .B2(n17), .C(n50), .ZN(
        normalized_fraction[10]) );
  AOI22D1 U52 ( .A1(core_value[8]), .A2(n29), .B1(core_value[9]), .B2(n30), 
        .ZN(n50) );
  OAI221D0 U53 ( .A1(n27), .A2(n17), .B1(n3), .B2(n16), .C(n49), .ZN(
        normalized_fraction[11]) );
  AOI22D1 U54 ( .A1(core_value[9]), .A2(n29), .B1(core_value[10]), .B2(n30), 
        .ZN(n49) );
  INVD1 U55 ( .I(core_value[9]), .ZN(n19) );
endmodule


module oadm_fixed_l1_mul_root_opt_accuracy ( x, y, result );
  input [31:0] x;
  input [31:0] y;
  output [31:0] result;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;
  assign result[6] = 1'b0;
  assign result[5] = 1'b0;
  assign result[4] = 1'b0;
  assign result[3] = 1'b0;
  assign result[2] = 1'b0;
  assign result[1] = 1'b0;
  assign result[0] = 1'b0;

  oadm_fixed_mul_root_opt_LEVEL1_RESIDUAL_DROP10 impl ( .x({x[31:10], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .y({y[31:10], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result(
        {result[31:7], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6}) );
endmodule

