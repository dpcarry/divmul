/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Sep  3 12:37:34 2026
/////////////////////////////////////////////////////////////


module connector_WIDTH23_0 ( In0, Out0 );
  input [22:0] In0;
  output [22:0] Out0;


  CKBD1 U1 ( .I(In0[22]), .Z(Out0[22]) );
  CKBD1 U2 ( .I(In0[21]), .Z(Out0[21]) );
  CKBD1 U3 ( .I(In0[20]), .Z(Out0[20]) );
  CKBD1 U4 ( .I(In0[19]), .Z(Out0[19]) );
  CKBD1 U5 ( .I(In0[18]), .Z(Out0[18]) );
  CKBD1 U6 ( .I(In0[17]), .Z(Out0[17]) );
  CKBD1 U7 ( .I(In0[16]), .Z(Out0[16]) );
  CKBD1 U8 ( .I(In0[15]), .Z(Out0[15]) );
  CKBD1 U9 ( .I(In0[14]), .Z(Out0[14]) );
  CKBD1 U10 ( .I(In0[13]), .Z(Out0[13]) );
  CKBD1 U11 ( .I(In0[12]), .Z(Out0[12]) );
  CKBD1 U12 ( .I(In0[11]), .Z(Out0[11]) );
  CKBD1 U13 ( .I(In0[10]), .Z(Out0[10]) );
  CKBD1 U14 ( .I(In0[9]), .Z(Out0[9]) );
  CKBD1 U15 ( .I(In0[8]), .Z(Out0[8]) );
  CKBD1 U16 ( .I(In0[7]), .Z(Out0[7]) );
  CKBD1 U17 ( .I(In0[6]), .Z(Out0[6]) );
  CKBD1 U18 ( .I(In0[5]), .Z(Out0[5]) );
  CKBD1 U19 ( .I(In0[4]), .Z(Out0[4]) );
  CKBD1 U20 ( .I(In0[3]), .Z(Out0[3]) );
  CKBD1 U21 ( .I(In0[2]), .Z(Out0[2]) );
  CKBD1 U22 ( .I(In0[1]), .Z(Out0[1]) );
  CKBD1 U23 ( .I(In0[0]), .Z(Out0[0]) );
endmodule


module connector_WIDTH23_1 ( In0, Out0 );
  input [22:0] In0;
  output [22:0] Out0;


  CKBD1 U1 ( .I(In0[2]), .Z(Out0[2]) );
  CKBD1 U2 ( .I(In0[1]), .Z(Out0[1]) );
  CKBD1 U3 ( .I(In0[3]), .Z(Out0[3]) );
  CKBD1 U4 ( .I(In0[4]), .Z(Out0[4]) );
  CKBD1 U5 ( .I(In0[0]), .Z(Out0[0]) );
  CKBD1 U6 ( .I(In0[5]), .Z(Out0[5]) );
  CKBD1 U7 ( .I(In0[6]), .Z(Out0[6]) );
  CKBD1 U8 ( .I(In0[7]), .Z(Out0[7]) );
  CKBD1 U9 ( .I(In0[8]), .Z(Out0[8]) );
  CKBD1 U10 ( .I(In0[9]), .Z(Out0[9]) );
  CKBD1 U11 ( .I(In0[10]), .Z(Out0[10]) );
  CKBD1 U12 ( .I(In0[11]), .Z(Out0[11]) );
  CKBD1 U13 ( .I(In0[12]), .Z(Out0[12]) );
  CKBD1 U14 ( .I(In0[13]), .Z(Out0[13]) );
  CKBD1 U15 ( .I(In0[14]), .Z(Out0[14]) );
  CKBD1 U16 ( .I(In0[15]), .Z(Out0[15]) );
  CKBD1 U17 ( .I(In0[16]), .Z(Out0[16]) );
  CKBD1 U18 ( .I(In0[17]), .Z(Out0[17]) );
  CKBD1 U19 ( .I(In0[21]), .Z(Out0[21]) );
  CKBD1 U20 ( .I(In0[18]), .Z(Out0[18]) );
  CKBD1 U21 ( .I(In0[20]), .Z(Out0[20]) );
  CKBD1 U22 ( .I(In0[19]), .Z(Out0[19]) );
endmodule


module Partial_Product_Generator_BASELINE15_MANTISSA_WIDTH23_MAX_LEVEL1 ( 
        Mantissa_X, Mantissa_Y, Partial_Product_X, Partial_Product_Y );
  input [37:15] Mantissa_X;
  input [37:15] Mantissa_Y;
  output [38:16] Partial_Product_X;
  output [38:16] Partial_Product_Y;
  wire   n_0_net__21_, n_0_net__20_, n_0_net__19_, n_0_net__18_, n_0_net__17_,
         n_0_net__16_, n_0_net__15_, n_0_net__14_, n_0_net__13_, n_0_net__12_,
         n_0_net__11_, n_0_net__10_, n_0_net__9_, n_0_net__8_, n_0_net__7_,
         n_0_net__6_, n_0_net__5_, n_0_net__4_, n_0_net__3_, n_0_net__2_,
         n_0_net__1_, n_0_net__0_, n_1_net__21_, n_1_net__20_, n_1_net__19_,
         n_1_net__18_, n_1_net__17_, n_1_net__16_, n_1_net__15_, n_1_net__14_,
         n_1_net__13_, n_1_net__12_, n_1_net__11_, n_1_net__10_, n_1_net__9_,
         n_1_net__8_, n_1_net__7_, n_1_net__6_, n_1_net__5_, n_1_net__4_,
         n_1_net__3_, n_1_net__2_, n_1_net__1_, n_1_net__0_, n1;
  wire   SYNOPSYS_UNCONNECTED__0;

  XNR2D1 U2 ( .A1(Mantissa_Y[37]), .A2(Mantissa_X[37]), .ZN(n1) );
  XNR2D1 U3 ( .A1(Mantissa_X[24]), .A2(Mantissa_Y[37]), .ZN(n_1_net__9_) );
  XNR2D1 U4 ( .A1(Mantissa_X[23]), .A2(Mantissa_Y[37]), .ZN(n_1_net__8_) );
  XNR2D1 U5 ( .A1(Mantissa_X[22]), .A2(Mantissa_Y[37]), .ZN(n_1_net__7_) );
  XNR2D1 U6 ( .A1(Mantissa_X[21]), .A2(Mantissa_Y[37]), .ZN(n_1_net__6_) );
  XNR2D1 U7 ( .A1(Mantissa_X[20]), .A2(Mantissa_Y[37]), .ZN(n_1_net__5_) );
  XNR2D1 U8 ( .A1(Mantissa_X[19]), .A2(Mantissa_Y[37]), .ZN(n_1_net__4_) );
  XNR2D1 U9 ( .A1(Mantissa_X[18]), .A2(Mantissa_Y[37]), .ZN(n_1_net__3_) );
  XNR2D1 U10 ( .A1(Mantissa_X[17]), .A2(Mantissa_Y[37]), .ZN(n_1_net__2_) );
  XNR2D1 U11 ( .A1(Mantissa_X[36]), .A2(Mantissa_Y[37]), .ZN(n_1_net__21_) );
  XNR2D1 U12 ( .A1(Mantissa_X[35]), .A2(Mantissa_Y[37]), .ZN(n_1_net__20_) );
  XNR2D1 U13 ( .A1(Mantissa_X[16]), .A2(Mantissa_Y[37]), .ZN(n_1_net__1_) );
  XNR2D1 U14 ( .A1(Mantissa_X[34]), .A2(Mantissa_Y[37]), .ZN(n_1_net__19_) );
  XNR2D1 U15 ( .A1(Mantissa_X[33]), .A2(Mantissa_Y[37]), .ZN(n_1_net__18_) );
  XNR2D1 U16 ( .A1(Mantissa_X[32]), .A2(Mantissa_Y[37]), .ZN(n_1_net__17_) );
  XNR2D1 U17 ( .A1(Mantissa_X[31]), .A2(Mantissa_Y[37]), .ZN(n_1_net__16_) );
  XNR2D1 U18 ( .A1(Mantissa_X[30]), .A2(Mantissa_Y[37]), .ZN(n_1_net__15_) );
  XNR2D1 U19 ( .A1(Mantissa_X[29]), .A2(Mantissa_Y[37]), .ZN(n_1_net__14_) );
  XNR2D1 U20 ( .A1(Mantissa_X[28]), .A2(Mantissa_Y[37]), .ZN(n_1_net__13_) );
  XNR2D1 U21 ( .A1(Mantissa_X[27]), .A2(Mantissa_Y[37]), .ZN(n_1_net__12_) );
  XNR2D1 U22 ( .A1(Mantissa_X[26]), .A2(Mantissa_Y[37]), .ZN(n_1_net__11_) );
  XNR2D1 U23 ( .A1(Mantissa_X[25]), .A2(Mantissa_Y[37]), .ZN(n_1_net__10_) );
  XNR2D1 U24 ( .A1(Mantissa_X[15]), .A2(Mantissa_Y[37]), .ZN(n_1_net__0_) );
  XNR2D1 U25 ( .A1(Mantissa_Y[24]), .A2(Mantissa_X[37]), .ZN(n_0_net__9_) );
  XNR2D1 U26 ( .A1(Mantissa_Y[23]), .A2(Mantissa_X[37]), .ZN(n_0_net__8_) );
  XNR2D1 U27 ( .A1(Mantissa_Y[22]), .A2(Mantissa_X[37]), .ZN(n_0_net__7_) );
  XNR2D1 U28 ( .A1(Mantissa_Y[21]), .A2(Mantissa_X[37]), .ZN(n_0_net__6_) );
  XNR2D1 U29 ( .A1(Mantissa_Y[20]), .A2(Mantissa_X[37]), .ZN(n_0_net__5_) );
  XNR2D1 U30 ( .A1(Mantissa_Y[19]), .A2(Mantissa_X[37]), .ZN(n_0_net__4_) );
  XNR2D1 U31 ( .A1(Mantissa_Y[18]), .A2(Mantissa_X[37]), .ZN(n_0_net__3_) );
  XNR2D1 U32 ( .A1(Mantissa_Y[17]), .A2(Mantissa_X[37]), .ZN(n_0_net__2_) );
  XNR2D1 U33 ( .A1(Mantissa_Y[36]), .A2(Mantissa_X[37]), .ZN(n_0_net__21_) );
  XNR2D1 U34 ( .A1(Mantissa_Y[35]), .A2(Mantissa_X[37]), .ZN(n_0_net__20_) );
  XNR2D1 U35 ( .A1(Mantissa_Y[16]), .A2(Mantissa_X[37]), .ZN(n_0_net__1_) );
  XNR2D1 U36 ( .A1(Mantissa_Y[34]), .A2(Mantissa_X[37]), .ZN(n_0_net__19_) );
  XNR2D1 U37 ( .A1(Mantissa_Y[33]), .A2(Mantissa_X[37]), .ZN(n_0_net__18_) );
  XNR2D1 U38 ( .A1(Mantissa_Y[32]), .A2(Mantissa_X[37]), .ZN(n_0_net__17_) );
  XNR2D1 U39 ( .A1(Mantissa_Y[31]), .A2(Mantissa_X[37]), .ZN(n_0_net__16_) );
  XNR2D1 U40 ( .A1(Mantissa_Y[30]), .A2(Mantissa_X[37]), .ZN(n_0_net__15_) );
  XNR2D1 U41 ( .A1(Mantissa_Y[29]), .A2(Mantissa_X[37]), .ZN(n_0_net__14_) );
  XNR2D1 U42 ( .A1(Mantissa_Y[28]), .A2(Mantissa_X[37]), .ZN(n_0_net__13_) );
  XNR2D1 U43 ( .A1(Mantissa_Y[27]), .A2(Mantissa_X[37]), .ZN(n_0_net__12_) );
  XNR2D1 U44 ( .A1(Mantissa_Y[26]), .A2(Mantissa_X[37]), .ZN(n_0_net__11_) );
  XNR2D1 U45 ( .A1(Mantissa_Y[25]), .A2(Mantissa_X[37]), .ZN(n_0_net__10_) );
  XNR2D1 U46 ( .A1(Mantissa_Y[15]), .A2(Mantissa_X[37]), .ZN(n_0_net__0_) );
  connector_WIDTH23_0 PP_GEN_1__ConnectPPX ( .In0({n1, n_0_net__21_, 
        n_0_net__20_, n_0_net__19_, n_0_net__18_, n_0_net__17_, n_0_net__16_, 
        n_0_net__15_, n_0_net__14_, n_0_net__13_, n_0_net__12_, n_0_net__11_, 
        n_0_net__10_, n_0_net__9_, n_0_net__8_, n_0_net__7_, n_0_net__6_, 
        n_0_net__5_, n_0_net__4_, n_0_net__3_, n_0_net__2_, n_0_net__1_, 
        n_0_net__0_}), .Out0(Partial_Product_X) );
  connector_WIDTH23_1 PP_GEN_1__ConnectPPY ( .In0({1'b0, n_1_net__21_, 
        n_1_net__20_, n_1_net__19_, n_1_net__18_, n_1_net__17_, n_1_net__16_, 
        n_1_net__15_, n_1_net__14_, n_1_net__13_, n_1_net__12_, n_1_net__11_, 
        n_1_net__10_, n_1_net__9_, n_1_net__8_, n_1_net__7_, n_1_net__6_, 
        n_1_net__5_, n_1_net__4_, n_1_net__3_, n_1_net__2_, n_1_net__1_, 
        n_1_net__0_}), .Out0({SYNOPSYS_UNCONNECTED__0, 
        Partial_Product_Y[37:16]}) );
endmodule


module CSA3_2_Array_WIDTH24_0 ( In_1, In_2, In_3, S, C );
  input [23:0] In_1;
  input [23:0] In_2;
  input [23:0] In_3;
  output [23:0] S;
  output [23:0] C;
  wire   In_3_0_, n1, n2, n3, n4, n5, n6, n7, n8, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n9;
  assign S[0] = In_3_0_;
  assign In_3_0_ = In_3[0];

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n1), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n2), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n3), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n4), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n5), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n6), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n7), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n8), .Z(S[2]) );
  CKXOR2D1 U10 ( .A1(In_3[22]), .A2(n10), .Z(S[22]) );
  CKXOR2D1 U11 ( .A1(In_3[21]), .A2(n11), .Z(S[21]) );
  CKXOR2D1 U12 ( .A1(In_3[20]), .A2(n12), .Z(S[20]) );
  CKXOR2D1 U13 ( .A1(In_3[1]), .A2(n13), .Z(S[1]) );
  CKXOR2D1 U14 ( .A1(In_3[19]), .A2(n14), .Z(S[19]) );
  CKXOR2D1 U15 ( .A1(In_3[18]), .A2(n15), .Z(S[18]) );
  CKXOR2D1 U16 ( .A1(In_3[17]), .A2(n16), .Z(S[17]) );
  CKXOR2D1 U17 ( .A1(In_3[16]), .A2(n17), .Z(S[16]) );
  CKXOR2D1 U18 ( .A1(In_3[15]), .A2(n18), .Z(S[15]) );
  CKXOR2D1 U19 ( .A1(In_3[14]), .A2(n19), .Z(S[14]) );
  CKXOR2D1 U20 ( .A1(In_3[13]), .A2(n20), .Z(S[13]) );
  CKXOR2D1 U21 ( .A1(In_3[12]), .A2(n21), .Z(S[12]) );
  CKXOR2D1 U22 ( .A1(In_3[11]), .A2(n22), .Z(S[11]) );
  CKXOR2D1 U23 ( .A1(In_3[10]), .A2(n23), .Z(S[10]) );
  CKXOR2D1 U26 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n1) );
  CKXOR2D1 U28 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n2) );
  CKXOR2D1 U30 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n3) );
  CKXOR2D1 U32 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n4) );
  CKXOR2D1 U34 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n5) );
  CKXOR2D1 U36 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n6) );
  CKXOR2D1 U38 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n7) );
  CKXOR2D1 U40 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n8) );
  CKXOR2D1 U42 ( .A1(In_2[23]), .A2(In_1[23]), .Z(S[23]) );
  CKXOR2D1 U44 ( .A1(In_2[22]), .A2(In_1[22]), .Z(n10) );
  CKXOR2D1 U46 ( .A1(In_2[21]), .A2(In_1[21]), .Z(n11) );
  CKXOR2D1 U48 ( .A1(In_2[20]), .A2(In_1[20]), .Z(n12) );
  CKXOR2D1 U50 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n13) );
  CKXOR2D1 U52 ( .A1(In_2[19]), .A2(In_1[19]), .Z(n14) );
  CKXOR2D1 U54 ( .A1(In_2[18]), .A2(In_1[18]), .Z(n15) );
  CKXOR2D1 U56 ( .A1(In_2[17]), .A2(In_1[17]), .Z(n16) );
  CKXOR2D1 U58 ( .A1(In_2[16]), .A2(In_1[16]), .Z(n17) );
  CKXOR2D1 U60 ( .A1(In_2[15]), .A2(In_1[15]), .Z(n18) );
  CKXOR2D1 U62 ( .A1(In_2[14]), .A2(In_1[14]), .Z(n19) );
  CKXOR2D1 U64 ( .A1(In_2[13]), .A2(In_1[13]), .Z(n20) );
  CKXOR2D1 U66 ( .A1(In_2[12]), .A2(In_1[12]), .Z(n21) );
  CKXOR2D1 U68 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n22) );
  CKXOR2D1 U70 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n23) );
  AO22D0 U25 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n13), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U27 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n8), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U29 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n7), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U31 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n6), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U33 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n5), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U35 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n4), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U37 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n3), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U39 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n2), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U41 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n1), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U43 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n23), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U45 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n22), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U47 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n21), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U49 ( .A1(In_2[13]), .A2(In_1[13]), .B1(n20), .B2(In_3[13]), .Z(C[13]) );
  AO22D0 U51 ( .A1(In_2[14]), .A2(In_1[14]), .B1(n19), .B2(In_3[14]), .Z(C[14]) );
  AO22D0 U53 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n18), .B2(In_3[15]), .Z(C[15]) );
  AO22D0 U55 ( .A1(In_2[16]), .A2(In_1[16]), .B1(n17), .B2(In_3[16]), .Z(C[16]) );
  AO22D0 U57 ( .A1(In_2[20]), .A2(In_1[20]), .B1(n12), .B2(In_3[20]), .Z(C[20]) );
  AO22D0 U59 ( .A1(In_2[17]), .A2(In_1[17]), .B1(n16), .B2(In_3[17]), .Z(C[17]) );
  AO22D0 U61 ( .A1(In_2[19]), .A2(In_1[19]), .B1(n14), .B2(In_3[19]), .Z(C[19]) );
  AO22D0 U63 ( .A1(In_2[18]), .A2(In_1[18]), .B1(n15), .B2(In_3[18]), .Z(C[18]) );
  AO22D0 U65 ( .A1(In_2[21]), .A2(In_1[21]), .B1(n11), .B2(In_3[21]), .Z(C[21]) );
  AO22D0 U67 ( .A1(In_2[22]), .A2(In_1[22]), .B1(n10), .B2(In_3[22]), .Z(C[22]) );
  CKND1 U9 ( .I(n9), .ZN(C[23]) );
  CKND2D0 U24 ( .A1(In_1[23]), .A2(In_2[23]), .ZN(n9) );
endmodule


module CSA3_2_Array_WIDTH24_1 ( In_1, In_2, In_3, S, C );
  input [23:0] In_1;
  input [23:0] In_2;
  input [23:0] In_3;
  output [23:0] S;
  output [23:0] C;
  wire   In_1_23_, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50;
  assign S[23] = In_1_23_;
  assign In_1_23_ = In_1[23];

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n48), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n47), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n46), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n45), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n44), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n43), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n42), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n41), .Z(S[2]) );
  CKXOR2D1 U11 ( .A1(In_3[21]), .A2(n38), .Z(S[21]) );
  CKXOR2D1 U12 ( .A1(In_3[20]), .A2(n37), .Z(S[20]) );
  CKXOR2D1 U13 ( .A1(In_3[1]), .A2(n36), .Z(S[1]) );
  CKXOR2D1 U14 ( .A1(In_3[19]), .A2(n35), .Z(S[19]) );
  CKXOR2D1 U15 ( .A1(In_3[18]), .A2(n34), .Z(S[18]) );
  CKXOR2D1 U16 ( .A1(In_3[17]), .A2(n33), .Z(S[17]) );
  CKXOR2D1 U17 ( .A1(In_3[16]), .A2(n32), .Z(S[16]) );
  CKXOR2D1 U18 ( .A1(In_3[15]), .A2(n31), .Z(S[15]) );
  CKXOR2D1 U19 ( .A1(In_3[14]), .A2(n30), .Z(S[14]) );
  CKXOR2D1 U20 ( .A1(In_3[13]), .A2(n29), .Z(S[13]) );
  CKXOR2D1 U21 ( .A1(In_3[12]), .A2(n28), .Z(S[12]) );
  CKXOR2D1 U22 ( .A1(In_3[11]), .A2(n27), .Z(S[11]) );
  CKXOR2D1 U23 ( .A1(In_3[10]), .A2(n26), .Z(S[10]) );
  CKXOR2D1 U24 ( .A1(In_3[0]), .A2(In_2[0]), .Z(S[0]) );
  CKXOR2D1 U26 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n48) );
  CKXOR2D1 U28 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n47) );
  CKXOR2D1 U30 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n46) );
  CKXOR2D1 U32 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n45) );
  CKXOR2D1 U34 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n44) );
  CKXOR2D1 U36 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n43) );
  CKXOR2D1 U38 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n42) );
  CKXOR2D1 U40 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n41) );
  CKXOR2D1 U44 ( .A1(In_2[22]), .A2(In_1[22]), .Z(S[22]) );
  CKXOR2D1 U46 ( .A1(In_2[21]), .A2(In_1[21]), .Z(n38) );
  CKXOR2D1 U48 ( .A1(In_2[20]), .A2(In_1[20]), .Z(n37) );
  CKXOR2D1 U50 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n36) );
  CKXOR2D1 U52 ( .A1(In_2[19]), .A2(In_1[19]), .Z(n35) );
  CKXOR2D1 U54 ( .A1(In_2[18]), .A2(In_1[18]), .Z(n34) );
  CKXOR2D1 U56 ( .A1(In_2[17]), .A2(In_1[17]), .Z(n33) );
  CKXOR2D1 U58 ( .A1(In_2[16]), .A2(In_1[16]), .Z(n32) );
  CKXOR2D1 U60 ( .A1(In_2[15]), .A2(In_1[15]), .Z(n31) );
  CKXOR2D1 U62 ( .A1(In_2[14]), .A2(In_1[14]), .Z(n30) );
  CKXOR2D1 U64 ( .A1(In_2[13]), .A2(In_1[13]), .Z(n29) );
  CKXOR2D1 U66 ( .A1(In_2[12]), .A2(In_1[12]), .Z(n28) );
  CKXOR2D1 U68 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n27) );
  CKXOR2D1 U70 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n26) );
  AO22D0 U25 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n41), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U27 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n36), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U29 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n42), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U31 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n43), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U35 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n44), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U37 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n45), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U39 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n46), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U41 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n47), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U43 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n48), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U45 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n26), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U47 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n27), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U49 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n28), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U51 ( .A1(In_2[13]), .A2(In_1[13]), .B1(n29), .B2(In_3[13]), .Z(C[13]) );
  AO22D0 U53 ( .A1(In_2[14]), .A2(In_1[14]), .B1(n30), .B2(In_3[14]), .Z(C[14]) );
  AO22D0 U55 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n31), .B2(In_3[15]), .Z(C[15]) );
  AO22D0 U57 ( .A1(In_2[16]), .A2(In_1[16]), .B1(n32), .B2(In_3[16]), .Z(C[16]) );
  AO22D0 U59 ( .A1(In_2[17]), .A2(In_1[17]), .B1(n33), .B2(In_3[17]), .Z(C[17]) );
  AO22D0 U61 ( .A1(In_2[21]), .A2(In_1[21]), .B1(n38), .B2(In_3[21]), .Z(C[21]) );
  AO22D0 U63 ( .A1(In_2[18]), .A2(In_1[18]), .B1(n34), .B2(In_3[18]), .Z(C[18]) );
  AO22D0 U65 ( .A1(In_2[20]), .A2(In_1[20]), .B1(n37), .B2(In_3[20]), .Z(C[20]) );
  AO22D0 U67 ( .A1(In_2[19]), .A2(In_1[19]), .B1(n35), .B2(In_3[19]), .Z(C[19]) );
  CKND1 U9 ( .I(n49), .ZN(C[22]) );
  CKND2D0 U10 ( .A1(In_1[22]), .A2(In_2[22]), .ZN(n49) );
  CKND1 U33 ( .I(n50), .ZN(C[0]) );
  CKND2D0 U42 ( .A1(In_3[0]), .A2(In_2[0]), .ZN(n50) );
endmodule


module CSA3_2_Array_WIDTH25 ( In_1, In_2, In_3, S, C );
  input [24:0] In_1;
  input [24:0] In_2;
  input [24:0] In_3;
  output [24:0] S;
  output [24:0] C;
  wire   In_1_24_, In_3_0_, n1, n2, n3, n4, n5, n6, n7, n8, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;
  assign S[24] = In_1_24_;
  assign In_1_24_ = In_1[24];
  assign S[0] = In_3_0_;
  assign In_3_0_ = In_3[0];

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n1), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n2), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n3), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n4), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n5), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n6), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n7), .Z(S[3]) );
  CKXOR2D1 U8 ( .A1(In_3[2]), .A2(n8), .Z(S[2]) );
  CKXOR2D1 U10 ( .A1(In_3[23]), .A2(n10), .Z(S[23]) );
  CKXOR2D1 U11 ( .A1(In_3[22]), .A2(n11), .Z(S[22]) );
  CKXOR2D1 U12 ( .A1(In_3[21]), .A2(n12), .Z(S[21]) );
  CKXOR2D1 U13 ( .A1(In_3[20]), .A2(n13), .Z(S[20]) );
  CKXOR2D1 U14 ( .A1(In_3[1]), .A2(n14), .Z(S[1]) );
  CKXOR2D1 U15 ( .A1(In_3[19]), .A2(n15), .Z(S[19]) );
  CKXOR2D1 U16 ( .A1(In_3[18]), .A2(n16), .Z(S[18]) );
  CKXOR2D1 U17 ( .A1(In_3[17]), .A2(n17), .Z(S[17]) );
  CKXOR2D1 U18 ( .A1(In_3[16]), .A2(n18), .Z(S[16]) );
  CKXOR2D1 U19 ( .A1(In_3[15]), .A2(n19), .Z(S[15]) );
  CKXOR2D1 U20 ( .A1(In_3[14]), .A2(n20), .Z(S[14]) );
  CKXOR2D1 U21 ( .A1(In_3[13]), .A2(n21), .Z(S[13]) );
  CKXOR2D1 U22 ( .A1(In_3[12]), .A2(n22), .Z(S[12]) );
  CKXOR2D1 U23 ( .A1(In_3[11]), .A2(n23), .Z(S[11]) );
  CKXOR2D1 U24 ( .A1(In_3[10]), .A2(n24), .Z(S[10]) );
  CKXOR2D1 U27 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n1) );
  CKXOR2D1 U29 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n2) );
  CKXOR2D1 U31 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n3) );
  CKXOR2D1 U33 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n4) );
  CKXOR2D1 U35 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n5) );
  CKXOR2D1 U37 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n6) );
  CKXOR2D1 U39 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n7) );
  CKXOR2D1 U41 ( .A1(In_2[2]), .A2(In_1[2]), .Z(n8) );
  CKXOR2D1 U45 ( .A1(In_2[23]), .A2(In_1[23]), .Z(n10) );
  CKXOR2D1 U47 ( .A1(In_2[22]), .A2(In_1[22]), .Z(n11) );
  CKXOR2D1 U49 ( .A1(In_2[21]), .A2(In_1[21]), .Z(n12) );
  CKXOR2D1 U51 ( .A1(In_2[20]), .A2(In_1[20]), .Z(n13) );
  CKXOR2D1 U53 ( .A1(In_2[1]), .A2(In_1[1]), .Z(n14) );
  CKXOR2D1 U55 ( .A1(In_2[19]), .A2(In_1[19]), .Z(n15) );
  CKXOR2D1 U57 ( .A1(In_2[18]), .A2(In_1[18]), .Z(n16) );
  CKXOR2D1 U59 ( .A1(In_2[17]), .A2(In_1[17]), .Z(n17) );
  CKXOR2D1 U61 ( .A1(In_2[16]), .A2(In_1[16]), .Z(n18) );
  CKXOR2D1 U63 ( .A1(In_2[15]), .A2(In_1[15]), .Z(n19) );
  CKXOR2D1 U65 ( .A1(In_2[14]), .A2(In_1[14]), .Z(n20) );
  CKXOR2D1 U67 ( .A1(In_2[13]), .A2(In_1[13]), .Z(n21) );
  CKXOR2D1 U69 ( .A1(In_2[12]), .A2(In_1[12]), .Z(n22) );
  CKXOR2D1 U71 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n23) );
  CKXOR2D1 U73 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n24) );
  AO22D0 U26 ( .A1(In_2[2]), .A2(In_1[2]), .B1(n8), .B2(In_3[2]), .Z(C[2]) );
  AO22D0 U28 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n7), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U30 ( .A1(In_2[1]), .A2(In_1[1]), .B1(n14), .B2(In_3[1]), .Z(C[1]) );
  AO22D0 U32 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n6), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U34 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n5), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U36 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n4), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U38 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n3), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U40 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n2), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U42 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n1), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U44 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n24), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U46 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n23), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U48 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n22), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U50 ( .A1(In_2[13]), .A2(In_1[13]), .B1(n21), .B2(In_3[13]), .Z(C[13]) );
  AO22D0 U52 ( .A1(In_2[14]), .A2(In_1[14]), .B1(n20), .B2(In_3[14]), .Z(C[14]) );
  AO22D0 U54 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n19), .B2(In_3[15]), .Z(C[15]) );
  AO22D0 U56 ( .A1(In_2[16]), .A2(In_1[16]), .B1(n18), .B2(In_3[16]), .Z(C[16]) );
  AO22D0 U58 ( .A1(In_2[17]), .A2(In_1[17]), .B1(n17), .B2(In_3[17]), .Z(C[17]) );
  AO22D0 U60 ( .A1(In_2[21]), .A2(In_1[21]), .B1(n12), .B2(In_3[21]), .Z(C[21]) );
  AO22D0 U62 ( .A1(In_2[20]), .A2(In_1[20]), .B1(n13), .B2(In_3[20]), .Z(C[20]) );
  AO22D0 U64 ( .A1(In_2[18]), .A2(In_1[18]), .B1(n16), .B2(In_3[18]), .Z(C[18]) );
  AO22D0 U66 ( .A1(In_2[19]), .A2(In_1[19]), .B1(n15), .B2(In_3[19]), .Z(C[19]) );
  AO22D0 U68 ( .A1(In_2[22]), .A2(In_1[22]), .B1(n11), .B2(In_3[22]), .Z(C[22]) );
  AO22D0 U70 ( .A1(In_2[23]), .A2(In_1[23]), .B1(n10), .B2(In_3[23]), .Z(C[23]) );
endmodule


module CSA3_2_Array_WIDTH26 ( In_1, In_2, In_3, S, C );
  input [25:0] In_1;
  input [25:0] In_2;
  input [25:0] In_3;
  output [25:0] S;
  output [25:0] C;
  wire   In_3_25_, In_1_1_, In_1_0_, n1, n2, n3, n4, n5, n6, n7, n10, n11, n12,
         n13, n14, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n8;
  assign S[25] = In_3_25_;
  assign In_3_25_ = In_3[25];
  assign S[1] = In_1_1_;
  assign In_1_1_ = In_1[1];
  assign S[0] = In_1_0_;
  assign In_1_0_ = In_1[0];

  CKXOR2D1 U1 ( .A1(In_3[9]), .A2(n1), .Z(S[9]) );
  CKXOR2D1 U2 ( .A1(In_3[8]), .A2(n2), .Z(S[8]) );
  CKXOR2D1 U3 ( .A1(In_3[7]), .A2(n3), .Z(S[7]) );
  CKXOR2D1 U4 ( .A1(In_3[6]), .A2(n4), .Z(S[6]) );
  CKXOR2D1 U5 ( .A1(In_3[5]), .A2(n5), .Z(S[5]) );
  CKXOR2D1 U6 ( .A1(In_3[4]), .A2(n6), .Z(S[4]) );
  CKXOR2D1 U7 ( .A1(In_3[3]), .A2(n7), .Z(S[3]) );
  CKXOR2D1 U10 ( .A1(In_3[24]), .A2(n10), .Z(S[24]) );
  CKXOR2D1 U11 ( .A1(In_3[23]), .A2(n11), .Z(S[23]) );
  CKXOR2D1 U12 ( .A1(In_3[22]), .A2(n12), .Z(S[22]) );
  CKXOR2D1 U13 ( .A1(In_3[21]), .A2(n13), .Z(S[21]) );
  CKXOR2D1 U14 ( .A1(In_3[20]), .A2(n14), .Z(S[20]) );
  CKXOR2D1 U16 ( .A1(In_3[19]), .A2(n16), .Z(S[19]) );
  CKXOR2D1 U17 ( .A1(In_3[18]), .A2(n17), .Z(S[18]) );
  CKXOR2D1 U18 ( .A1(In_3[17]), .A2(n18), .Z(S[17]) );
  CKXOR2D1 U19 ( .A1(In_3[16]), .A2(n19), .Z(S[16]) );
  CKXOR2D1 U20 ( .A1(In_3[15]), .A2(n20), .Z(S[15]) );
  CKXOR2D1 U21 ( .A1(In_3[14]), .A2(n21), .Z(S[14]) );
  CKXOR2D1 U22 ( .A1(In_3[13]), .A2(n22), .Z(S[13]) );
  CKXOR2D1 U23 ( .A1(In_3[12]), .A2(n23), .Z(S[12]) );
  CKXOR2D1 U24 ( .A1(In_3[11]), .A2(n24), .Z(S[11]) );
  CKXOR2D1 U25 ( .A1(In_3[10]), .A2(n25), .Z(S[10]) );
  CKXOR2D1 U28 ( .A1(In_2[9]), .A2(In_1[9]), .Z(n1) );
  CKXOR2D1 U30 ( .A1(In_2[8]), .A2(In_1[8]), .Z(n2) );
  CKXOR2D1 U32 ( .A1(In_2[7]), .A2(In_1[7]), .Z(n3) );
  CKXOR2D1 U34 ( .A1(In_2[6]), .A2(In_1[6]), .Z(n4) );
  CKXOR2D1 U36 ( .A1(In_2[5]), .A2(In_1[5]), .Z(n5) );
  CKXOR2D1 U38 ( .A1(In_2[4]), .A2(In_1[4]), .Z(n6) );
  CKXOR2D1 U40 ( .A1(In_2[3]), .A2(In_1[3]), .Z(n7) );
  CKXOR2D1 U42 ( .A1(In_2[2]), .A2(In_1[2]), .Z(S[2]) );
  CKXOR2D1 U46 ( .A1(In_2[24]), .A2(In_1[24]), .Z(n10) );
  CKXOR2D1 U48 ( .A1(In_2[23]), .A2(In_1[23]), .Z(n11) );
  CKXOR2D1 U50 ( .A1(In_2[22]), .A2(In_1[22]), .Z(n12) );
  CKXOR2D1 U52 ( .A1(In_2[21]), .A2(In_1[21]), .Z(n13) );
  CKXOR2D1 U54 ( .A1(In_2[20]), .A2(In_1[20]), .Z(n14) );
  CKXOR2D1 U58 ( .A1(In_2[19]), .A2(In_1[19]), .Z(n16) );
  CKXOR2D1 U60 ( .A1(In_2[18]), .A2(In_1[18]), .Z(n17) );
  CKXOR2D1 U62 ( .A1(In_2[17]), .A2(In_1[17]), .Z(n18) );
  CKXOR2D1 U64 ( .A1(In_2[16]), .A2(In_1[16]), .Z(n19) );
  CKXOR2D1 U66 ( .A1(In_2[15]), .A2(In_1[15]), .Z(n20) );
  CKXOR2D1 U68 ( .A1(In_2[14]), .A2(In_1[14]), .Z(n21) );
  CKXOR2D1 U70 ( .A1(In_2[13]), .A2(In_1[13]), .Z(n22) );
  CKXOR2D1 U72 ( .A1(In_2[12]), .A2(In_1[12]), .Z(n23) );
  CKXOR2D1 U74 ( .A1(In_2[11]), .A2(In_1[11]), .Z(n24) );
  CKXOR2D1 U76 ( .A1(In_2[10]), .A2(In_1[10]), .Z(n25) );
  AO22D0 U27 ( .A1(In_2[19]), .A2(In_1[19]), .B1(n16), .B2(In_3[19]), .Z(C[19]) );
  AO22D0 U31 ( .A1(In_2[3]), .A2(In_1[3]), .B1(n7), .B2(In_3[3]), .Z(C[3]) );
  AO22D0 U33 ( .A1(In_2[4]), .A2(In_1[4]), .B1(n6), .B2(In_3[4]), .Z(C[4]) );
  AO22D0 U35 ( .A1(In_2[5]), .A2(In_1[5]), .B1(n5), .B2(In_3[5]), .Z(C[5]) );
  AO22D0 U37 ( .A1(In_2[6]), .A2(In_1[6]), .B1(n4), .B2(In_3[6]), .Z(C[6]) );
  AO22D0 U39 ( .A1(In_2[7]), .A2(In_1[7]), .B1(n3), .B2(In_3[7]), .Z(C[7]) );
  AO22D0 U41 ( .A1(In_2[8]), .A2(In_1[8]), .B1(n2), .B2(In_3[8]), .Z(C[8]) );
  AO22D0 U43 ( .A1(In_2[9]), .A2(In_1[9]), .B1(n1), .B2(In_3[9]), .Z(C[9]) );
  AO22D0 U45 ( .A1(In_2[10]), .A2(In_1[10]), .B1(n25), .B2(In_3[10]), .Z(C[10]) );
  AO22D0 U47 ( .A1(In_2[11]), .A2(In_1[11]), .B1(n24), .B2(In_3[11]), .Z(C[11]) );
  AO22D0 U49 ( .A1(In_2[12]), .A2(In_1[12]), .B1(n23), .B2(In_3[12]), .Z(C[12]) );
  AO22D0 U51 ( .A1(In_2[13]), .A2(In_1[13]), .B1(n22), .B2(In_3[13]), .Z(C[13]) );
  AO22D0 U53 ( .A1(In_2[14]), .A2(In_1[14]), .B1(n21), .B2(In_3[14]), .Z(C[14]) );
  AO22D0 U55 ( .A1(In_2[15]), .A2(In_1[15]), .B1(n20), .B2(In_3[15]), .Z(C[15]) );
  AO22D0 U57 ( .A1(In_2[16]), .A2(In_1[16]), .B1(n19), .B2(In_3[16]), .Z(C[16]) );
  AO22D0 U59 ( .A1(In_2[17]), .A2(In_1[17]), .B1(n18), .B2(In_3[17]), .Z(C[17]) );
  AO22D0 U61 ( .A1(In_2[18]), .A2(In_1[18]), .B1(n17), .B2(In_3[18]), .Z(C[18]) );
  AO22D0 U63 ( .A1(In_2[20]), .A2(In_1[20]), .B1(n14), .B2(In_3[20]), .Z(C[20]) );
  AO22D0 U65 ( .A1(In_2[21]), .A2(In_1[21]), .B1(n13), .B2(In_3[21]), .Z(C[21]) );
  AO22D0 U67 ( .A1(In_2[22]), .A2(In_1[22]), .B1(n12), .B2(In_3[22]), .Z(C[22]) );
  AO22D0 U69 ( .A1(In_2[23]), .A2(In_1[23]), .B1(n11), .B2(In_3[23]), .Z(C[23]) );
  AO22D0 U71 ( .A1(In_2[24]), .A2(In_1[24]), .B1(n10), .B2(In_3[24]), .Z(C[24]) );
  CKND0 U8 ( .I(n8), .ZN(C[2]) );
  CKND2D0 U9 ( .A1(In_1[2]), .A2(In_2[2]), .ZN(n8) );
endmodule


module CSA3_2_Array_WIDTH6 ( In_1, In_2, In_3, S, C );
  input [5:0] In_1;
  input [5:0] In_2;
  input [5:0] In_3;
  output [5:0] S;
  output [5:0] C;
  wire   n3, n6, n1, n2, n4, n5, n7, n8, n9;

  CKXOR2D1 U10 ( .A1(In_2[4]), .A2(In_1[4]), .Z(S[4]) );
  CKXOR2D1 U14 ( .A1(In_2[2]), .A2(In_1[2]), .Z(S[2]) );
  CKXOR2D1 U16 ( .A1(In_2[1]), .A2(In_1[1]), .Z(S[1]) );
  CKND0 U1 ( .I(n9), .ZN(C[4]) );
  CKND2D0 U2 ( .A1(n5), .A2(n4), .ZN(C[3]) );
  CKND2D0 U3 ( .A1(In_1[4]), .A2(In_2[4]), .ZN(n9) );
  CKND0 U4 ( .I(n4), .ZN(n3) );
  XNR2D0 U5 ( .A1(In_2[3]), .A2(In_1[3]), .ZN(n4) );
  CKND0 U6 ( .I(n3), .ZN(S[3]) );
  CKND0 U7 ( .I(n8), .ZN(C[2]) );
  CKND2D0 U8 ( .A1(In_1[3]), .A2(In_2[3]), .ZN(n5) );
  CKND0 U9 ( .I(n7), .ZN(C[1]) );
  CKND2D0 U11 ( .A1(In_1[2]), .A2(In_2[2]), .ZN(n8) );
  CKND2D0 U12 ( .A1(n2), .A2(n1), .ZN(C[0]) );
  CKND2D0 U13 ( .A1(In_1[1]), .A2(In_2[1]), .ZN(n7) );
  CKND0 U15 ( .I(n1), .ZN(n6) );
  XNR2D0 U17 ( .A1(In_2[0]), .A2(In_1[0]), .ZN(n1) );
  CKND1 U18 ( .I(n6), .ZN(S[0]) );
  CKND2D0 U19 ( .A1(In_1[0]), .A2(In_2[0]), .ZN(n2) );
endmodule


module Mantissa_OAUM_MANTISSA_WIDTH23_ACC_31_DW01_add_0 ( A, B, CI, SUM, CO );
  input [26:0] A;
  input [26:0] B;
  output [26:0] SUM;
  input CI;
  output CO;
  wire   A_1_, n1;
  wire   [26:4] carry;
  assign SUM[1] = A_1_;
  assign A_1_ = A[1];

  FA1D0 U1_2 ( .A(A[2]), .B(1'b0), .CI(1'b0), .S(SUM[2]) );
  FA1D0 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FA1D0 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FA1D0 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FA1D0 U1_22 ( .A(A[22]), .B(B[22]), .CI(n1), .CO(carry[23]), .S(SUM[22]) );
  XOR3D1 U1_26 ( .A1(1'b0), .A2(B[26]), .A3(carry[26]), .Z(SUM[26]) );
  FA1D0 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D0 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA1D0 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D0 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA1D0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA1D0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1D0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(1'b0), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AN2XD1 U1 ( .A1(carry[21]), .A2(A[21]), .Z(n1) );
  CKXOR2D1 U3 ( .A1(carry[21]), .A2(A[21]), .Z(SUM[21]) );
endmodule


module Mantissa_OAUM_MANTISSA_WIDTH23_ACC_31 ( Mantissa_X, Mantissa_Y, 
        Mantissa_Out, Shift );
  input [37:15] Mantissa_X;
  input [37:15] Mantissa_Y;
  output [37:15] Mantissa_Out;
  output [1:0] Shift;
  wire   n5, final_add_1_16_, final_add_1_15_, final_add_1_14_,
         final_add_1_13_, final_add_1_12_, final_sum_14_, final_sum_13_,
         final_sum_12_, final_sum_11_, final_sum_10_, final_sum_9_,
         final_sum_8_, final_sum_7_, final_sum_6_, final_sum_5_, final_sum_4_,
         final_sum_3_, final_sum_2_, final_sum_1_, final_sum_0_, final_sum__1_,
         final_sum__2_, final_sum__3_, final_sum__4_, final_sum__5_,
         final_sum__6_, final_sum__7_, final_sum__8_, final_sum__9_, n32, n33,
         n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n34;
  wire   [38:16] Partial_Product_X;
  wire   [36:15] Partial_Product_Y;
  wire   [38:15] s_1_0;
  wire   [38:16] s_1_1;
  wire   [37:14] s_1_2;
  wire   [36:14] s_1_3;
  wire   [39:15] s_2_0;
  wire   [37:15] s_2_1;
  wire   [41:16] s_3_0;
  wire   [38:16] s_3_1;
  wire   [15:11] s_4_0;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10;

  Partial_Product_Generator_BASELINE15_MANTISSA_WIDTH23_MAX_LEVEL1 PGEN ( 
        .Mantissa_X({n6, Mantissa_X[36:15]}), .Mantissa_Y({n4, 
        Mantissa_Y[36:15]}), .Partial_Product_X(Partial_Product_X), 
        .Partial_Product_Y({SYNOPSYS_UNCONNECTED__0, Partial_Product_Y}) );
  CSA3_2_Array_WIDTH24_0 Stage_0_0 ( .In_1({n6, Mantissa_X[36:15], 1'b0}), 
        .In_2({n4, Mantissa_Y[36:15], 1'b0}), .In_3({1'b0, n6, 
        Mantissa_X[36:15]}), .S(s_1_0), .C({s_1_1, SYNOPSYS_UNCONNECTED__1})
         );
  CSA3_2_Array_WIDTH24_1 Stage_0_1 ( .In_1({n4, Mantissa_Y[36:15], 1'b0}), 
        .In_2({1'b0, Partial_Product_X}), .In_3({1'b0, 1'b0, Partial_Product_Y}), .S(s_1_2), .C({SYNOPSYS_UNCONNECTED__2, s_1_3}) );
  CSA3_2_Array_WIDTH25 Stage_1_0 ( .In_1({s_1_0, 1'b0}), .In_2({1'b0, s_1_3, 
        1'b0}), .In_3({1'b0, s_1_2}), .S(s_2_0), .C({SYNOPSYS_UNCONNECTED__3, 
        s_2_1, SYNOPSYS_UNCONNECTED__4}) );
  CSA3_2_Array_WIDTH26 Stage_2_0 ( .In_1({1'b0, s_2_0}), .In_2({1'b0, s_2_1, 
        1'b0, 1'b0}), .In_3({s_1_1, 1'b0, 1'b0, 1'b0}), .S(s_3_0), .C({
        SYNOPSYS_UNCONNECTED__5, s_3_1, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7}) );
  CSA3_2_Array_WIDTH6 Stage_3_0 ( .In_1({1'b0, s_3_0[41:37]}), .In_2({1'b0, 
        s_3_1[38:34]}), .In_3({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .S({
        SYNOPSYS_UNCONNECTED__8, s_4_0}), .C({SYNOPSYS_UNCONNECTED__9, 
        final_add_1_16_, final_add_1_15_, final_add_1_14_, final_add_1_13_, 
        final_add_1_12_}) );
  Mantissa_OAUM_MANTISSA_WIDTH23_ACC_31_DW01_add_0 add_169 ( .A({1'b0, s_4_0, 
        s_3_0[36:16]}), .B({final_add_1_16_, final_add_1_15_, final_add_1_14_, 
        final_add_1_13_, final_add_1_12_, n5, s_3_1[33:16], 1'b0, 1'b0, n5}), 
        .CI(n5), .SUM({Shift, final_sum_14_, final_sum_13_, final_sum_12_, 
        final_sum_11_, final_sum_10_, final_sum_9_, final_sum_8_, final_sum_7_, 
        final_sum_6_, final_sum_5_, final_sum_4_, final_sum_3_, final_sum_2_, 
        final_sum_1_, final_sum_0_, final_sum__1_, final_sum__2_, 
        final_sum__3_, final_sum__4_, final_sum__5_, final_sum__6_, 
        final_sum__7_, final_sum__8_, final_sum__9_, SYNOPSYS_UNCONNECTED__10}) );
  OAI222D0 U3 ( .A1(n32), .A2(n30), .B1(n3), .B2(n31), .C1(n7), .C2(n29), .ZN(
        Mantissa_Out[16]) );
  OAI222D0 U4 ( .A1(n32), .A2(n21), .B1(n2), .B2(n22), .C1(n7), .C2(n20), .ZN(
        Mantissa_Out[25]) );
  OAI222D0 U5 ( .A1(n32), .A2(n20), .B1(n3), .B2(n21), .C1(n7), .C2(n19), .ZN(
        Mantissa_Out[26]) );
  OAI222D0 U6 ( .A1(n32), .A2(n19), .B1(n33), .B2(n20), .C1(n7), .C2(n18), 
        .ZN(Mantissa_Out[27]) );
  OAI222D0 U7 ( .A1(n32), .A2(n18), .B1(n2), .B2(n19), .C1(n7), .C2(n17), .ZN(
        Mantissa_Out[28]) );
  OAI222D0 U8 ( .A1(n32), .A2(n17), .B1(n3), .B2(n18), .C1(n7), .C2(n16), .ZN(
        Mantissa_Out[29]) );
  OAI222D0 U9 ( .A1(n32), .A2(n16), .B1(n33), .B2(n17), .C1(n15), .C2(n7), 
        .ZN(Mantissa_Out[30]) );
  OAI222D0 U10 ( .A1(n15), .A2(n32), .B1(n2), .B2(n16), .C1(n14), .C2(n7), 
        .ZN(Mantissa_Out[31]) );
  OAI222D0 U11 ( .A1(n32), .A2(n14), .B1(n3), .B2(n15), .C1(n7), .C2(n13), 
        .ZN(Mantissa_Out[32]) );
  OAI222D0 U12 ( .A1(n32), .A2(n13), .B1(n2), .B2(n14), .C1(n7), .C2(n12), 
        .ZN(Mantissa_Out[33]) );
  OAI222D0 U13 ( .A1(n32), .A2(n12), .B1(n3), .B2(n13), .C1(n7), .C2(n11), 
        .ZN(Mantissa_Out[34]) );
  OAI222D0 U14 ( .A1(n32), .A2(n9), .B1(n3), .B2(n10), .C1(n8), .C2(n7), .ZN(
        Mantissa_Out[37]) );
  OAI222D0 U15 ( .A1(n32), .A2(n29), .B1(n2), .B2(n30), .C1(n7), .C2(n28), 
        .ZN(Mantissa_Out[17]) );
  OAI222D0 U16 ( .A1(n32), .A2(n28), .B1(n33), .B2(n29), .C1(n7), .C2(n27), 
        .ZN(Mantissa_Out[18]) );
  OAI222D0 U17 ( .A1(n32), .A2(n27), .B1(n3), .B2(n28), .C1(n7), .C2(n26), 
        .ZN(Mantissa_Out[19]) );
  OAI222D0 U18 ( .A1(n32), .A2(n26), .B1(n2), .B2(n27), .C1(n7), .C2(n25), 
        .ZN(Mantissa_Out[20]) );
  OAI222D0 U19 ( .A1(n32), .A2(n25), .B1(n33), .B2(n26), .C1(n7), .C2(n24), 
        .ZN(Mantissa_Out[21]) );
  OAI222D0 U20 ( .A1(n32), .A2(n24), .B1(n3), .B2(n25), .C1(n7), .C2(n23), 
        .ZN(Mantissa_Out[22]) );
  OAI222D0 U21 ( .A1(n32), .A2(n23), .B1(n33), .B2(n24), .C1(n7), .C2(n22), 
        .ZN(Mantissa_Out[23]) );
  OAI222D0 U22 ( .A1(n32), .A2(n22), .B1(n33), .B2(n23), .C1(n7), .C2(n21), 
        .ZN(Mantissa_Out[24]) );
  OAI222D0 U23 ( .A1(n32), .A2(n11), .B1(n33), .B2(n12), .C1(n7), .C2(n10), 
        .ZN(Mantissa_Out[35]) );
  OAI222D0 U24 ( .A1(n32), .A2(n10), .B1(n2), .B2(n11), .C1(n7), .C2(n9), .ZN(
        Mantissa_Out[36]) );
  ND2D1 U25 ( .A1(n8), .A2(n7), .ZN(n3) );
  ND2D1 U26 ( .A1(n8), .A2(n7), .ZN(n2) );
  ND2D1 U27 ( .A1(n8), .A2(n7), .ZN(n33) );
  INVD1 U28 ( .I(final_sum_10_), .ZN(n13) );
  INVD1 U29 ( .I(final_sum_9_), .ZN(n14) );
  INVD1 U30 ( .I(final_sum_8_), .ZN(n15) );
  INVD1 U31 ( .I(final_sum_7_), .ZN(n16) );
  INVD1 U32 ( .I(final_sum_6_), .ZN(n17) );
  INVD1 U33 ( .I(final_sum_5_), .ZN(n18) );
  INVD1 U34 ( .I(final_sum_4_), .ZN(n19) );
  INVD1 U35 ( .I(final_sum_3_), .ZN(n20) );
  INVD1 U36 ( .I(final_sum_2_), .ZN(n21) );
  INVD1 U37 ( .I(final_sum_1_), .ZN(n22) );
  INVD1 U38 ( .I(final_sum_0_), .ZN(n23) );
  INVD1 U39 ( .I(final_sum__1_), .ZN(n24) );
  INVD1 U40 ( .I(final_sum__2_), .ZN(n25) );
  INVD1 U41 ( .I(final_sum__3_), .ZN(n26) );
  INVD1 U42 ( .I(final_sum__4_), .ZN(n27) );
  INVD1 U43 ( .I(final_sum__5_), .ZN(n28) );
  INVD1 U44 ( .I(final_sum__6_), .ZN(n29) );
  INVD1 U45 ( .I(final_sum__7_), .ZN(n30) );
  OAI222D0 U46 ( .A1(n31), .A2(n32), .B1(n34), .B2(n2), .C1(n30), .C2(n7), 
        .ZN(Mantissa_Out[15]) );
  INVD1 U47 ( .I(final_sum__9_), .ZN(n34) );
  INVD1 U48 ( .I(Shift[1]), .ZN(n7) );
  ND2D1 U49 ( .A1(Shift[0]), .A2(n7), .ZN(n32) );
  INVD1 U50 ( .I(Shift[0]), .ZN(n8) );
  INVD1 U51 ( .I(final_sum_14_), .ZN(n9) );
  INVD1 U52 ( .I(final_sum_13_), .ZN(n10) );
  INVD1 U53 ( .I(final_sum_12_), .ZN(n11) );
  INVD1 U54 ( .I(final_sum_11_), .ZN(n12) );
  INVD1 U55 ( .I(final_sum__8_), .ZN(n31) );
  CKBD1 U56 ( .I(Mantissa_X[37]), .Z(n6) );
  CKBD1 U57 ( .I(Mantissa_Y[37]), .Z(n4) );
  TIEL U58 ( .ZN(n5) );
endmodule


module top_DW01_add_1_DW01_add_2 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:2] carry;

  FA1D0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1D0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1D0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1D0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1D0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1D0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  AN2XD1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module top ( mantissa_x, mantissa_y, sign_x, sign_y, exp_x, exp_y, 
        mantissa_out, sign_out, exp_out );
  input [22:0] mantissa_x;
  input [22:0] mantissa_y;
  input [7:0] exp_x;
  input [7:0] exp_y;
  output [22:0] mantissa_out;
  output [7:0] exp_out;
  input sign_x, sign_y;
  output sign_out;
  wire   N10, n18, n19, n20, add_0_root_add_0_root_add_44_2_A_0_,
         add_0_root_add_0_root_add_44_2_A_1_,
         add_0_root_add_0_root_add_44_2_A_2_,
         add_0_root_add_0_root_add_44_2_A_3_,
         add_0_root_add_0_root_add_44_2_A_4_,
         add_0_root_add_0_root_add_44_2_A_5_,
         add_0_root_add_0_root_add_44_2_A_6_,
         add_0_root_add_0_root_add_44_2_A_7_,
         add_0_root_add_0_root_add_44_2_A_8_, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n126, n127, n130, n131, n132;
  wire   [1:0] shift;
  wire   [8:1] exp_overflow;
  wire   [22:0] mantissa_out_temp;
  wire   [9:2] add_0_root_add_0_root_add_44_2_carry;
  wire   SYNOPSYS_UNCONNECTED__0;

  CKXOR2D1 U3 ( .A1(sign_y), .A2(sign_x), .Z(sign_out) );
  AO21D1 U4 ( .A1(mantissa_out_temp[9]), .A2(n127), .B(n126), .Z(
        mantissa_out[9]) );
  AO21D1 U5 ( .A1(mantissa_out_temp[8]), .A2(n127), .B(n126), .Z(
        mantissa_out[8]) );
  AO21D1 U6 ( .A1(mantissa_out_temp[7]), .A2(n127), .B(n126), .Z(
        mantissa_out[7]) );
  AO21D1 U7 ( .A1(mantissa_out_temp[6]), .A2(n127), .B(n126), .Z(
        mantissa_out[6]) );
  AO21D1 U8 ( .A1(mantissa_out_temp[5]), .A2(n127), .B(n126), .Z(
        mantissa_out[5]) );
  AO21D1 U9 ( .A1(mantissa_out_temp[4]), .A2(n127), .B(n126), .Z(
        mantissa_out[4]) );
  AO21D1 U10 ( .A1(mantissa_out_temp[3]), .A2(n127), .B(n126), .Z(
        mantissa_out[3]) );
  AO21D1 U11 ( .A1(mantissa_out_temp[2]), .A2(n127), .B(n126), .Z(
        mantissa_out[2]) );
  AO21D1 U12 ( .A1(mantissa_out_temp[22]), .A2(n127), .B(n126), .Z(
        mantissa_out[22]) );
  AO21D1 U13 ( .A1(mantissa_out_temp[21]), .A2(n127), .B(n126), .Z(
        mantissa_out[21]) );
  AO21D1 U14 ( .A1(mantissa_out_temp[20]), .A2(n127), .B(n126), .Z(
        mantissa_out[20]) );
  AO21D1 U15 ( .A1(mantissa_out_temp[1]), .A2(n127), .B(n126), .Z(
        mantissa_out[1]) );
  AO21D1 U16 ( .A1(mantissa_out_temp[19]), .A2(n127), .B(n126), .Z(
        mantissa_out[19]) );
  AO21D1 U17 ( .A1(mantissa_out_temp[18]), .A2(n127), .B(n126), .Z(
        mantissa_out[18]) );
  AO21D1 U18 ( .A1(mantissa_out_temp[17]), .A2(n127), .B(n126), .Z(
        mantissa_out[17]) );
  AO21D1 U19 ( .A1(mantissa_out_temp[16]), .A2(n127), .B(n126), .Z(
        mantissa_out[16]) );
  AO21D1 U20 ( .A1(mantissa_out_temp[15]), .A2(n127), .B(n126), .Z(
        mantissa_out[15]) );
  AO21D1 U21 ( .A1(mantissa_out_temp[14]), .A2(n127), .B(n126), .Z(
        mantissa_out[14]) );
  AO21D1 U22 ( .A1(mantissa_out_temp[13]), .A2(n127), .B(n126), .Z(
        mantissa_out[13]) );
  AO21D1 U23 ( .A1(mantissa_out_temp[12]), .A2(n127), .B(n126), .Z(
        mantissa_out[12]) );
  AO21D1 U24 ( .A1(mantissa_out_temp[11]), .A2(n127), .B(n126), .Z(
        mantissa_out[11]) );
  AO21D1 U25 ( .A1(mantissa_out_temp[10]), .A2(n127), .B(n126), .Z(
        mantissa_out[10]) );
  AO21D1 U26 ( .A1(mantissa_out_temp[0]), .A2(n127), .B(n126), .Z(
        mantissa_out[0]) );
  Mantissa_OAUM_MANTISSA_WIDTH23_ACC_31 OAUM ( .Mantissa_X({mantissa_x[22], 
        n65, n63, n61, n59, n57, n55, n53, n51, n49, n47, n45, n43, n41, n39, 
        n37, n35, n33, n31, n29, n27, n25, n23}), .Mantissa_Y({mantissa_y[22], 
        n109, n107, n105, n103, n101, n99, n97, n95, n93, n91, n89, n87, n85, 
        n83, n81, n79, n77, n75, n73, n71, n69, n67}), .Mantissa_Out(
        mantissa_out_temp), .Shift(shift) );
  top_DW01_add_1_DW01_add_2 add_1_root_add_0_root_add_44_2 ( .A({n132, n132, 
        exp_y}), .B({n132, n132, exp_x}), .CI(n132), .SUM({
        SYNOPSYS_UNCONNECTED__0, add_0_root_add_0_root_add_44_2_A_8_, 
        add_0_root_add_0_root_add_44_2_A_7_, 
        add_0_root_add_0_root_add_44_2_A_6_, 
        add_0_root_add_0_root_add_44_2_A_5_, 
        add_0_root_add_0_root_add_44_2_A_4_, 
        add_0_root_add_0_root_add_44_2_A_3_, 
        add_0_root_add_0_root_add_44_2_A_2_, 
        add_0_root_add_0_root_add_44_2_A_1_, 
        add_0_root_add_0_root_add_44_2_A_0_}) );
  ND2D1 U53 ( .A1(n19), .A2(n20), .ZN(n18) );
  AN2XD1 U55 ( .A1(add_0_root_add_0_root_add_44_2_A_0_), .A2(N10), .Z(n21) );
  CKND0 U56 ( .I(mantissa_x[0]), .ZN(n22) );
  CKND0 U57 ( .I(n22), .ZN(n23) );
  CKND0 U58 ( .I(mantissa_x[1]), .ZN(n24) );
  CKND0 U59 ( .I(n24), .ZN(n25) );
  CKND0 U60 ( .I(mantissa_x[2]), .ZN(n26) );
  CKND0 U61 ( .I(n26), .ZN(n27) );
  CKND0 U62 ( .I(mantissa_x[3]), .ZN(n28) );
  CKND0 U63 ( .I(n28), .ZN(n29) );
  CKND0 U64 ( .I(mantissa_x[4]), .ZN(n30) );
  CKND0 U65 ( .I(n30), .ZN(n31) );
  CKND0 U66 ( .I(mantissa_x[5]), .ZN(n32) );
  CKND0 U67 ( .I(n32), .ZN(n33) );
  CKND0 U68 ( .I(mantissa_x[6]), .ZN(n34) );
  CKND0 U69 ( .I(n34), .ZN(n35) );
  CKND0 U70 ( .I(mantissa_x[7]), .ZN(n36) );
  CKND0 U71 ( .I(n36), .ZN(n37) );
  CKND0 U72 ( .I(mantissa_x[8]), .ZN(n38) );
  CKND0 U73 ( .I(n38), .ZN(n39) );
  CKND0 U74 ( .I(mantissa_x[9]), .ZN(n40) );
  CKND0 U75 ( .I(n40), .ZN(n41) );
  CKND0 U76 ( .I(mantissa_x[10]), .ZN(n42) );
  CKND0 U77 ( .I(n42), .ZN(n43) );
  CKND0 U78 ( .I(mantissa_x[11]), .ZN(n44) );
  CKND0 U79 ( .I(n44), .ZN(n45) );
  CKND0 U80 ( .I(mantissa_x[12]), .ZN(n46) );
  CKND0 U81 ( .I(n46), .ZN(n47) );
  CKND0 U82 ( .I(mantissa_x[13]), .ZN(n48) );
  CKND0 U83 ( .I(n48), .ZN(n49) );
  CKND0 U84 ( .I(mantissa_x[14]), .ZN(n50) );
  CKND0 U85 ( .I(n50), .ZN(n51) );
  CKND0 U86 ( .I(mantissa_x[15]), .ZN(n52) );
  CKND0 U87 ( .I(n52), .ZN(n53) );
  CKND0 U88 ( .I(mantissa_x[16]), .ZN(n54) );
  CKND0 U89 ( .I(n54), .ZN(n55) );
  CKND0 U90 ( .I(mantissa_x[17]), .ZN(n56) );
  CKND0 U91 ( .I(n56), .ZN(n57) );
  CKND0 U92 ( .I(mantissa_x[18]), .ZN(n58) );
  CKND0 U93 ( .I(n58), .ZN(n59) );
  CKND0 U94 ( .I(mantissa_x[19]), .ZN(n60) );
  CKND0 U95 ( .I(n60), .ZN(n61) );
  CKND0 U96 ( .I(mantissa_x[20]), .ZN(n62) );
  CKND0 U97 ( .I(n62), .ZN(n63) );
  CKND0 U98 ( .I(mantissa_x[21]), .ZN(n64) );
  CKND0 U99 ( .I(n64), .ZN(n65) );
  CKND0 U100 ( .I(mantissa_y[0]), .ZN(n66) );
  CKND0 U101 ( .I(n66), .ZN(n67) );
  CKND0 U102 ( .I(mantissa_y[1]), .ZN(n68) );
  CKND0 U103 ( .I(n68), .ZN(n69) );
  CKND0 U104 ( .I(mantissa_y[2]), .ZN(n70) );
  CKND0 U105 ( .I(n70), .ZN(n71) );
  CKND0 U106 ( .I(mantissa_y[3]), .ZN(n72) );
  CKND0 U107 ( .I(n72), .ZN(n73) );
  CKND0 U108 ( .I(mantissa_y[4]), .ZN(n74) );
  CKND0 U109 ( .I(n74), .ZN(n75) );
  CKND0 U110 ( .I(mantissa_y[5]), .ZN(n76) );
  CKND0 U111 ( .I(n76), .ZN(n77) );
  CKND0 U112 ( .I(mantissa_y[6]), .ZN(n78) );
  CKND0 U113 ( .I(n78), .ZN(n79) );
  CKND0 U114 ( .I(mantissa_y[7]), .ZN(n80) );
  CKND0 U115 ( .I(n80), .ZN(n81) );
  CKND0 U116 ( .I(mantissa_y[8]), .ZN(n82) );
  CKND0 U117 ( .I(n82), .ZN(n83) );
  CKND0 U118 ( .I(mantissa_y[9]), .ZN(n84) );
  CKND0 U119 ( .I(n84), .ZN(n85) );
  CKND0 U120 ( .I(mantissa_y[10]), .ZN(n86) );
  CKND0 U121 ( .I(n86), .ZN(n87) );
  CKND0 U122 ( .I(mantissa_y[11]), .ZN(n88) );
  CKND0 U123 ( .I(n88), .ZN(n89) );
  CKND0 U124 ( .I(mantissa_y[12]), .ZN(n90) );
  CKND0 U125 ( .I(n90), .ZN(n91) );
  CKND0 U126 ( .I(mantissa_y[13]), .ZN(n92) );
  CKND0 U127 ( .I(n92), .ZN(n93) );
  CKND0 U128 ( .I(mantissa_y[14]), .ZN(n94) );
  CKND0 U129 ( .I(n94), .ZN(n95) );
  CKND0 U130 ( .I(mantissa_y[15]), .ZN(n96) );
  CKND0 U131 ( .I(n96), .ZN(n97) );
  CKND0 U132 ( .I(mantissa_y[16]), .ZN(n98) );
  CKND0 U133 ( .I(n98), .ZN(n99) );
  CKND0 U134 ( .I(mantissa_y[17]), .ZN(n100) );
  CKND0 U135 ( .I(n100), .ZN(n101) );
  CKND0 U136 ( .I(mantissa_y[18]), .ZN(n102) );
  CKND0 U137 ( .I(n102), .ZN(n103) );
  CKND0 U138 ( .I(mantissa_y[19]), .ZN(n104) );
  CKND0 U139 ( .I(n104), .ZN(n105) );
  CKND0 U140 ( .I(mantissa_y[20]), .ZN(n106) );
  CKND0 U141 ( .I(n106), .ZN(n107) );
  CKND0 U142 ( .I(mantissa_y[21]), .ZN(n108) );
  CKND0 U143 ( .I(n108), .ZN(n109) );
  INVD1 U144 ( .I(n110), .ZN(n126) );
  INVD1 U145 ( .I(n111), .ZN(n127) );
  OAI21D1 U146 ( .A1(n131), .A2(n111), .B(n110), .ZN(exp_out[1]) );
  NR4D0 U147 ( .A1(n120), .A2(n119), .A3(n118), .A4(n116), .ZN(n19) );
  IOA21D1 U148 ( .A1(n130), .A2(n18), .B(
        add_0_root_add_0_root_add_44_2_carry[9]), .ZN(n110) );
  OR2D1 U149 ( .A1(n126), .A2(exp_overflow[8]), .Z(n111) );
  OAI22D1 U150 ( .A1(n123), .A2(n111), .B1(n126), .B2(n130), .ZN(exp_out[0])
         );
  OAI21D1 U151 ( .A1(n122), .A2(n111), .B(n110), .ZN(exp_out[2]) );
  OAI21D1 U152 ( .A1(n121), .A2(n111), .B(n110), .ZN(exp_out[3]) );
  OAI21D1 U153 ( .A1(n120), .A2(n111), .B(n110), .ZN(exp_out[4]) );
  OAI21D1 U154 ( .A1(n119), .A2(n111), .B(n110), .ZN(exp_out[5]) );
  OAI21D1 U155 ( .A1(n118), .A2(n111), .B(n110), .ZN(exp_out[6]) );
  OAI21D1 U156 ( .A1(n116), .A2(n111), .B(n110), .ZN(exp_out[7]) );
  INVD1 U157 ( .I(exp_overflow[8]), .ZN(n130) );
  NR4D0 U158 ( .A1(n123), .A2(n131), .A3(n122), .A4(n121), .ZN(n20) );
  INVD1 U159 ( .I(exp_overflow[1]), .ZN(n131) );
  FA1D0 U160 ( .A(add_0_root_add_0_root_add_44_2_A_1_), .B(shift[1]), .CI(n21), 
        .CO(add_0_root_add_0_root_add_44_2_carry[2]), .S(exp_overflow[1]) );
  AN2XD1 U161 ( .A1(add_0_root_add_0_root_add_44_2_A_3_), .A2(n115), .Z(n112)
         );
  AN2XD1 U162 ( .A1(add_0_root_add_0_root_add_44_2_A_4_), .A2(n112), .Z(n113)
         );
  AN2XD1 U163 ( .A1(add_0_root_add_0_root_add_44_2_A_5_), .A2(n113), .Z(n114)
         );
  AN2XD1 U164 ( .A1(add_0_root_add_0_root_add_44_2_A_2_), .A2(
        add_0_root_add_0_root_add_44_2_carry[2]), .Z(n115) );
  CKXOR2D1 U165 ( .A1(n117), .A2(add_0_root_add_0_root_add_44_2_A_7_), .Z(n116) );
  INR2D1 U167 ( .A1(shift[0]), .B1(shift[1]), .ZN(N10) );
  XNR2D1 U169 ( .A1(n114), .A2(add_0_root_add_0_root_add_44_2_A_6_), .ZN(n118)
         );
  XNR2D1 U171 ( .A1(n113), .A2(add_0_root_add_0_root_add_44_2_A_5_), .ZN(n119)
         );
  XNR2D1 U172 ( .A1(n112), .A2(add_0_root_add_0_root_add_44_2_A_4_), .ZN(n120)
         );
  XNR2D1 U173 ( .A1(n115), .A2(add_0_root_add_0_root_add_44_2_A_3_), .ZN(n121)
         );
  XNR2D1 U174 ( .A1(add_0_root_add_0_root_add_44_2_carry[2]), .A2(
        add_0_root_add_0_root_add_44_2_A_2_), .ZN(n122) );
  XNR2D1 U175 ( .A1(N10), .A2(add_0_root_add_0_root_add_44_2_A_0_), .ZN(n123)
         );
  TIEL U178 ( .ZN(n132) );
  XNR2D1 U179 ( .A1(add_0_root_add_0_root_add_44_2_carry[8]), .A2(
        add_0_root_add_0_root_add_44_2_A_8_), .ZN(exp_overflow[8]) );
  OR2D0 U52 ( .A1(add_0_root_add_0_root_add_44_2_A_8_), .A2(
        add_0_root_add_0_root_add_44_2_carry[8]), .Z(
        add_0_root_add_0_root_add_44_2_carry[9]) );
  OR2D0 U54 ( .A1(n117), .A2(add_0_root_add_0_root_add_44_2_A_7_), .Z(
        add_0_root_add_0_root_add_44_2_carry[8]) );
  AN2D0 U166 ( .A1(n114), .A2(add_0_root_add_0_root_add_44_2_A_6_), .Z(n117)
         );
endmodule

