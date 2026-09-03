/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Sep  2 17:11:14 2026
/////////////////////////////////////////////////////////////


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
  wire   intadd_0_A_21_, intadd_0_A_20_, intadd_0_A_19_, intadd_0_A_18_,
         intadd_0_A_17_, intadd_0_A_16_, intadd_0_A_15_, intadd_0_A_14_,
         intadd_0_A_13_, intadd_0_A_12_, intadd_0_A_11_, intadd_0_A_10_,
         intadd_0_A_9_, intadd_0_A_8_, intadd_0_A_7_, intadd_0_A_6_,
         intadd_0_A_5_, intadd_0_A_4_, intadd_0_A_3_, intadd_0_A_2_,
         intadd_0_A_1_, intadd_0_A_0_, intadd_0_B_21_, intadd_0_B_20_,
         intadd_0_B_19_, intadd_0_B_18_, intadd_0_B_17_, intadd_0_B_16_,
         intadd_0_B_15_, intadd_0_B_14_, intadd_0_B_13_, intadd_0_B_12_,
         intadd_0_B_11_, intadd_0_B_10_, intadd_0_B_9_, intadd_0_B_8_,
         intadd_0_B_7_, intadd_0_B_5_, intadd_0_B_4_, intadd_0_B_3_,
         intadd_0_B_2_, intadd_0_B_1_, intadd_0_B_0_, intadd_0_CI,
         intadd_0_SUM_21_, intadd_0_SUM_20_, intadd_0_SUM_19_,
         intadd_0_SUM_18_, intadd_0_SUM_17_, intadd_0_SUM_16_,
         intadd_0_SUM_15_, intadd_0_SUM_14_, intadd_0_SUM_13_,
         intadd_0_SUM_12_, intadd_0_SUM_11_, intadd_0_SUM_10_, intadd_0_SUM_9_,
         intadd_0_SUM_8_, intadd_0_SUM_7_, intadd_0_SUM_6_, intadd_0_SUM_5_,
         intadd_0_SUM_4_, intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_,
         intadd_0_SUM_0_, intadd_0_n22, intadd_0_n21, intadd_0_n20,
         intadd_0_n19, intadd_0_n18, intadd_0_n17, intadd_0_n16, intadd_0_n15,
         intadd_0_n14, intadd_0_n13, intadd_0_n12, intadd_0_n11, intadd_0_n10,
         intadd_0_n9, intadd_0_n8, intadd_0_n7, intadd_0_n6, intadd_0_n5,
         intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1, intadd_1_A_7_,
         intadd_1_A_6_, intadd_1_A_5_, intadd_1_A_4_, intadd_1_A_3_,
         intadd_1_A_2_, intadd_1_A_1_, intadd_1_B_7_, intadd_1_B_6_,
         intadd_1_B_5_, intadd_1_B_4_, intadd_1_B_3_, intadd_1_B_2_,
         intadd_1_B_1_, intadd_1_CI, intadd_1_SUM_7_, intadd_1_SUM_6_,
         intadd_1_SUM_5_, intadd_1_SUM_4_, intadd_1_SUM_3_, intadd_1_SUM_2_,
         intadd_1_SUM_1_, intadd_1_SUM_0_, intadd_1_n8, intadd_1_n7,
         intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2,
         intadd_1_n1, intadd_2_A_3_, intadd_2_A_2_, intadd_2_A_1_,
         intadd_2_B_3_, intadd_2_B_2_, intadd_2_B_1_, intadd_2_SUM_2_,
         intadd_2_SUM_1_, intadd_2_SUM_0_, intadd_2_n4, intadd_2_n3,
         intadd_2_n2, intadd_2_n1, intadd_3_A_2_, intadd_3_A_1_, intadd_3_B_2_,
         intadd_3_B_1_, intadd_3_SUM_2_, intadd_3_SUM_1_, intadd_3_SUM_0_,
         intadd_3_n3, intadd_3_n2, intadd_3_n1, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665,
         n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676,
         n677, n678, n679, n680, n681, n682, n683, n684, n685, n686, n687,
         n688, n689, n690, n691, n692, n693, n694, n695, n696, n697, n698,
         n699, n700, n701, n702, n703, n704, n705, n706, n707, n708, n709,
         n710, n711, n712, n713, n714, n715, n716, n717, n718, n719, n720,
         n721, n722, n723, n724, n725, n726, n727, n728, n729, n730, n731,
         n732, n733, n734, n735, n736, n737, n738, n739, n741, n742, n743,
         n744, n745, n746, n747, n748, n749, n750, n751, n752, n753, n754,
         n755, n756, n757, n758, n759, n760, n761, n762, n763, n764, n765,
         n766, n767, n768, n769, n770, n771, n772, n773, n774, n775, n776,
         n777, n778, n779, n780, n781, n782, n783, n784, n785, n786, n787,
         n788, n789, n790, n791, n792, n793, n794, n795, n796, n797, n798,
         n799, n800, n801, n802, n803, n804, n805, n806, n807, n808, n809,
         n810, n811, n812, n813, n814, n815, n816, n817, n818, n819, n820,
         n821, n822, n823, n824, n825, n826, n827, n828, n829, n830, n831,
         n832, n833, n834, n835, n836, n837, n838, n839, n840, n841, n842,
         n843, n844, n845, n846, n847, n848, n849, n850, n851, n852, n853,
         n854, n855, n856, n857, n858, n859, n860, n861, n862, n863, n864,
         n865, n866, n867, n868, n869, n870, n871, n872, n873, n874, n875,
         n876, n877, n878, n879, n880, n881, n882, n883, n884, n885, n886,
         n887, n888, n889, n890, n891, n892, n893, n894, n895, n896, n897,
         n898, n899, n900, n901, n902, n903, n904, n905, n906, n907, n908,
         n909, n910, n911, n912, n913, n914, n915, n916, n917, n918, n919,
         n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, n930,
         n931, n932, n933, n934, n935, n936, n937, n938, n939, n940, n941,
         n942, n943, n944, n945, n946, n947, n948, n949, n950, n951, n952,
         n953, n954, n955, n956, n957, n958, n959, n960, n961, n962, n963,
         n964, n965, n966, n967, n968, n969, n970, n971, n972, n973, n974,
         n975, n976, n977, n978, n979, n980, n981, n982, n983, n984, n985,
         n986, n987, n988, n989, n990, n991, n992, n993, n994, n995, n996,
         n997, n998, n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006,
         n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016,
         n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026,
         n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036,
         n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046,
         n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056,
         n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066,
         n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076,
         n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086,
         n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096,
         n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106,
         n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116,
         n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126,
         n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136,
         n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146,
         n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156,
         n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166,
         n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176,
         n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186,
         n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196,
         n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206,
         n1207, n1208, n1209, n1210, n1211, n1213, n1214, n1215, n1216, n1217,
         n1218, n1219, n1220, n1221, n1222, n1223, n1225, n1226, n1227, n1228,
         n1229, n1230, n1231, n1232, n1233, n1234, n1235, n1236, n1237, n1238,
         n1239, n1240, n1241, n1242, n1243, n1244, n1245, n1246, n1247, n1248,
         n1249, n1250, n1251, n1252, n1253, n1254, n1255, n1256, n1257, n1258,
         n1259, n1260, n1261, n1262, n1263, n1264, n1265;

  FA1D0 intadd_0_U23 ( .A(intadd_0_A_0_), .B(intadd_0_B_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n22), .S(intadd_0_SUM_0_) );
  FA1D0 intadd_0_U22 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n22), 
        .CO(intadd_0_n21), .S(intadd_0_SUM_1_) );
  FA1D0 intadd_0_U21 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n21), 
        .CO(intadd_0_n20), .S(intadd_0_SUM_2_) );
  FA1D0 intadd_0_U20 ( .A(intadd_0_A_3_), .B(intadd_0_B_3_), .CI(intadd_0_n20), 
        .CO(intadd_0_n19), .S(intadd_0_SUM_3_) );
  FA1D0 intadd_0_U19 ( .A(intadd_0_A_4_), .B(intadd_0_B_4_), .CI(intadd_0_n19), 
        .CO(intadd_0_n18), .S(intadd_0_SUM_4_) );
  FA1D0 intadd_0_U18 ( .A(intadd_0_A_5_), .B(intadd_0_B_5_), .CI(intadd_0_n18), 
        .CO(intadd_0_n17), .S(intadd_0_SUM_5_) );
  FA1D0 intadd_0_U17 ( .A(intadd_0_A_6_), .B(intadd_2_n1), .CI(intadd_0_n17), 
        .CO(intadd_0_n16), .S(intadd_0_SUM_6_) );
  FA1D0 intadd_0_U16 ( .A(intadd_0_A_7_), .B(intadd_0_B_7_), .CI(intadd_0_n16), 
        .CO(intadd_0_n15), .S(intadd_0_SUM_7_) );
  FA1D0 intadd_0_U15 ( .A(intadd_0_A_8_), .B(intadd_0_B_8_), .CI(intadd_0_n15), 
        .CO(intadd_0_n14), .S(intadd_0_SUM_8_) );
  FA1D0 intadd_0_U14 ( .A(intadd_0_A_9_), .B(intadd_0_B_9_), .CI(intadd_0_n14), 
        .CO(intadd_0_n13), .S(intadd_0_SUM_9_) );
  FA1D0 intadd_0_U13 ( .A(intadd_0_A_10_), .B(intadd_0_B_10_), .CI(
        intadd_0_n13), .CO(intadd_0_n12), .S(intadd_0_SUM_10_) );
  FA1D0 intadd_0_U12 ( .A(intadd_0_A_11_), .B(intadd_0_B_11_), .CI(
        intadd_0_n12), .CO(intadd_0_n11), .S(intadd_0_SUM_11_) );
  FA1D0 intadd_0_U11 ( .A(intadd_0_A_12_), .B(intadd_0_B_12_), .CI(
        intadd_0_n11), .CO(intadd_0_n10), .S(intadd_0_SUM_12_) );
  FA1D0 intadd_0_U10 ( .A(intadd_0_A_13_), .B(intadd_0_B_13_), .CI(
        intadd_0_n10), .CO(intadd_0_n9), .S(intadd_0_SUM_13_) );
  FA1D0 intadd_0_U9 ( .A(intadd_0_A_14_), .B(intadd_0_B_14_), .CI(intadd_0_n9), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_14_) );
  FA1D0 intadd_0_U8 ( .A(intadd_0_A_15_), .B(intadd_0_B_15_), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_15_) );
  FA1D0 intadd_0_U7 ( .A(intadd_0_A_16_), .B(intadd_0_B_16_), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_16_) );
  FA1D0 intadd_0_U6 ( .A(intadd_0_A_17_), .B(intadd_0_B_17_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_17_) );
  FA1D0 intadd_0_U5 ( .A(intadd_0_A_18_), .B(intadd_0_B_18_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_18_) );
  FA1D0 intadd_0_U4 ( .A(intadd_0_A_19_), .B(intadd_0_B_19_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_19_) );
  FA1D0 intadd_0_U3 ( .A(intadd_0_A_20_), .B(intadd_0_B_20_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_20_) );
  FA1D0 intadd_0_U2 ( .A(intadd_0_A_21_), .B(intadd_0_B_21_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_21_) );
  FA1D0 intadd_1_U9 ( .A(exp_x[0]), .B(exp_y[0]), .CI(intadd_1_CI), .CO(
        intadd_1_n8), .S(intadd_1_SUM_0_) );
  FA1D0 intadd_1_U8 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n8), 
        .CO(intadd_1_n7), .S(intadd_1_SUM_1_) );
  FA1D0 intadd_1_U7 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(intadd_1_SUM_2_) );
  FA1D0 intadd_1_U6 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_3_) );
  FA1D0 intadd_1_U5 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_4_) );
  FA1D0 intadd_1_U4 ( .A(intadd_1_A_5_), .B(intadd_1_B_5_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_5_) );
  FA1D0 intadd_1_U3 ( .A(intadd_1_A_6_), .B(intadd_1_B_6_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_6_) );
  FA1D0 intadd_2_U5 ( .A(n692), .B(n680), .CI(n660), .CO(intadd_2_n4), .S(
        intadd_2_SUM_0_) );
  FA1D0 intadd_2_U4 ( .A(intadd_2_A_1_), .B(intadd_2_B_1_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_2_SUM_1_) );
  FA1D0 intadd_2_U3 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_2_) );
  FA1D0 intadd_2_U2 ( .A(intadd_2_A_3_), .B(intadd_2_B_3_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_0_A_5_) );
  FA1D0 intadd_3_U4 ( .A(n664), .B(n670), .CI(n698), .CO(intadd_3_n3), .S(
        intadd_3_SUM_0_) );
  FA1D0 intadd_3_U3 ( .A(intadd_3_A_1_), .B(intadd_3_B_1_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_3_SUM_1_) );
  FA1D0 intadd_3_U2 ( .A(intadd_3_A_2_), .B(intadd_3_B_2_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(intadd_3_SUM_2_) );
  FA1D0 intadd_1_U2 ( .A(intadd_1_A_7_), .B(intadd_1_B_7_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_1_SUM_7_) );
  INVD0 U679 ( .I(mantissa_y[5]), .ZN(n639) );
  INVD0 U680 ( .I(n639), .ZN(n640) );
  INVD0 U681 ( .I(mantissa_y[3]), .ZN(n641) );
  INVD0 U682 ( .I(n641), .ZN(n642) );
  AOI22D0 U683 ( .A1(n1217), .A2(mantissa_x[0]), .B1(n793), .B2(n1216), .ZN(
        n791) );
  INVD0 U684 ( .I(mantissa_x[0]), .ZN(n793) );
  INVD0 U685 ( .I(mantissa_y[0]), .ZN(n643) );
  INVD0 U686 ( .I(n643), .ZN(n644) );
  INVD0 U687 ( .I(mantissa_y[20]), .ZN(n645) );
  INVD0 U688 ( .I(n645), .ZN(n646) );
  INVD0 U689 ( .I(mantissa_y[19]), .ZN(n647) );
  INVD0 U690 ( .I(n647), .ZN(n648) );
  INVD0 U691 ( .I(mantissa_y[13]), .ZN(n649) );
  INVD0 U692 ( .I(n649), .ZN(n650) );
  INVD0 U693 ( .I(mantissa_y[12]), .ZN(n651) );
  INVD0 U694 ( .I(n651), .ZN(n652) );
  INVD0 U695 ( .I(mantissa_x[5]), .ZN(n653) );
  INVD0 U696 ( .I(n653), .ZN(n654) );
  INVD0 U697 ( .I(mantissa_y[14]), .ZN(n655) );
  INVD0 U698 ( .I(n655), .ZN(n656) );
  INVD0 U699 ( .I(mantissa_y[16]), .ZN(n657) );
  INVD0 U700 ( .I(n657), .ZN(n658) );
  INVD0 U701 ( .I(mantissa_x[3]), .ZN(n659) );
  INVD0 U702 ( .I(n659), .ZN(n660) );
  INVD0 U703 ( .I(mantissa_y[4]), .ZN(n661) );
  INVD0 U704 ( .I(n661), .ZN(n662) );
  OA21D0 U705 ( .A1(n640), .A2(n1004), .B(n1089), .Z(n1033) );
  CKND2D0 U706 ( .A1(n640), .A2(n1004), .ZN(n1089) );
  AOI22D0 U707 ( .A1(n1174), .A2(n640), .B1(n639), .B2(n1162), .ZN(n1003) );
  OAI22D0 U708 ( .A1(n639), .A2(n653), .B1(n654), .B2(n640), .ZN(n1013) );
  AOI22D0 U709 ( .A1(n1201), .A2(n640), .B1(n639), .B2(n1117), .ZN(n823) );
  INVD0 U710 ( .I(mantissa_x[19]), .ZN(n663) );
  INVD0 U711 ( .I(n663), .ZN(n664) );
  INVD0 U712 ( .I(mantissa_x[4]), .ZN(n665) );
  INVD0 U713 ( .I(n665), .ZN(n666) );
  INVD0 U714 ( .I(mantissa_y[1]), .ZN(n667) );
  INVD0 U715 ( .I(n667), .ZN(n668) );
  INVD0 U716 ( .I(mantissa_y[18]), .ZN(n669) );
  INVD0 U717 ( .I(n669), .ZN(n670) );
  INVD0 U718 ( .I(mantissa_y[11]), .ZN(n671) );
  INVD0 U719 ( .I(n671), .ZN(n672) );
  INVD0 U720 ( .I(mantissa_y[9]), .ZN(n673) );
  INVD0 U721 ( .I(n673), .ZN(n674) );
  INVD0 U722 ( .I(mantissa_x[20]), .ZN(n675) );
  INVD0 U723 ( .I(n675), .ZN(n676) );
  INVD0 U724 ( .I(mantissa_y[15]), .ZN(n677) );
  INVD0 U725 ( .I(n677), .ZN(n678) );
  INVD0 U726 ( .I(mantissa_y[2]), .ZN(n679) );
  INVD0 U727 ( .I(n679), .ZN(n680) );
  INVD0 U728 ( .I(mantissa_x[1]), .ZN(n681) );
  INVD0 U729 ( .I(n681), .ZN(n682) );
  INVD0 U730 ( .I(mantissa_x[15]), .ZN(n683) );
  INVD0 U731 ( .I(n683), .ZN(n684) );
  INVD0 U732 ( .I(mantissa_y[6]), .ZN(n685) );
  INVD0 U733 ( .I(n685), .ZN(n686) );
  INVD0 U734 ( .I(mantissa_y[7]), .ZN(n687) );
  INVD0 U735 ( .I(n687), .ZN(n688) );
  INVD0 U736 ( .I(mantissa_y[10]), .ZN(n689) );
  INVD0 U737 ( .I(n689), .ZN(n690) );
  INVD0 U738 ( .I(mantissa_x[2]), .ZN(n691) );
  INVD0 U739 ( .I(n691), .ZN(n692) );
  INVD0 U740 ( .I(mantissa_x[14]), .ZN(n693) );
  INVD0 U741 ( .I(n693), .ZN(n694) );
  INVD0 U742 ( .I(mantissa_x[16]), .ZN(n695) );
  INVD0 U743 ( .I(n695), .ZN(n696) );
  INVD0 U744 ( .I(mantissa_x[18]), .ZN(n697) );
  INVD0 U745 ( .I(n697), .ZN(n698) );
  INVD0 U746 ( .I(mantissa_x[13]), .ZN(n699) );
  INVD0 U747 ( .I(n699), .ZN(n700) );
  INVD0 U748 ( .I(mantissa_x[11]), .ZN(n701) );
  INVD0 U749 ( .I(n701), .ZN(n702) );
  INVD0 U750 ( .I(mantissa_x[6]), .ZN(n703) );
  INVD0 U751 ( .I(n703), .ZN(n704) );
  INVD0 U752 ( .I(mantissa_x[10]), .ZN(n705) );
  INVD0 U753 ( .I(n705), .ZN(n706) );
  INVD0 U754 ( .I(mantissa_x[9]), .ZN(n707) );
  INVD0 U755 ( .I(n707), .ZN(n708) );
  INVD0 U756 ( .I(mantissa_y[17]), .ZN(n709) );
  INVD0 U757 ( .I(n709), .ZN(n710) );
  INVD0 U758 ( .I(mantissa_y[8]), .ZN(n711) );
  INVD0 U759 ( .I(n711), .ZN(n712) );
  INVD0 U760 ( .I(mantissa_x[12]), .ZN(n713) );
  INVD0 U761 ( .I(n713), .ZN(n714) );
  INVD0 U762 ( .I(mantissa_x[8]), .ZN(n715) );
  INVD0 U763 ( .I(n715), .ZN(n716) );
  INVD0 U764 ( .I(mantissa_x[17]), .ZN(n717) );
  INVD0 U765 ( .I(n717), .ZN(n718) );
  INVD0 U766 ( .I(mantissa_x[7]), .ZN(n719) );
  INVD0 U767 ( .I(n719), .ZN(n720) );
  BUFFD0 U768 ( .I(mantissa_y[22]), .Z(n1217) );
  INVD0 U769 ( .I(n1217), .ZN(n1216) );
  BUFFD0 U770 ( .I(mantissa_x[22]), .Z(n1174) );
  INVD0 U771 ( .I(n1174), .ZN(n1162) );
  CKND2D0 U772 ( .A1(n1216), .A2(n1162), .ZN(n727) );
  INVD0 U773 ( .I(n727), .ZN(n736) );
  BUFFD0 U774 ( .I(mantissa_x[21]), .Z(n1201) );
  INVD0 U775 ( .I(n1201), .ZN(n1117) );
  AOI22D0 U776 ( .A1(n1217), .A2(n1117), .B1(mantissa_x[21]), .B2(n1216), .ZN(
        n1024) );
  BUFFD0 U777 ( .I(mantissa_y[21]), .Z(n1218) );
  AOI22D0 U778 ( .A1(n1201), .A2(n1218), .B1(n1219), .B2(n1117), .ZN(n1022) );
  MUX3ND0 U779 ( .I0(n1174), .I1(n1162), .I2(n1216), .S0(n1024), .S1(n1022), 
        .ZN(n732) );
  MAOI222D0 U780 ( .A(n676), .B(n1201), .C(n646), .ZN(n725) );
  AOI22D0 U781 ( .A1(n1174), .A2(n1218), .B1(n1219), .B2(n1162), .ZN(n1017) );
  MUX2ND0 U782 ( .I0(n1201), .I1(n1117), .S(n1017), .ZN(n721) );
  MAOI222D0 U783 ( .A(n725), .B(n721), .C(n1216), .ZN(n722) );
  IND2D0 U784 ( .A1(n732), .B1(n722), .ZN(n735) );
  NR2D0 U785 ( .A1(n1216), .A2(n1162), .ZN(n723) );
  INVD0 U786 ( .I(n723), .ZN(n734) );
  INVD0 U787 ( .I(n722), .ZN(n733) );
  AOI21D0 U788 ( .A1(n727), .A2(n733), .B(n732), .ZN(n724) );
  OAI22D0 U789 ( .A1(n724), .A2(n723), .B1(n733), .B2(n727), .ZN(n738) );
  INVD0 U790 ( .I(mantissa_y[21]), .ZN(n1219) );
  IAO22D1 U791 ( .B1(n1024), .B2(n1219), .A1(n1219), .A2(n1024), .ZN(n1253) );
  INVD0 U792 ( .I(n1253), .ZN(n1254) );
  MUX2ND0 U793 ( .I0(n1254), .I1(n1253), .S(n725), .ZN(n726) );
  MUX2ND0 U794 ( .I0(n1174), .I1(n1162), .S(n726), .ZN(n730) );
  AOI21D0 U795 ( .A1(n734), .A2(n727), .B(n1219), .ZN(n729) );
  AOI22D0 U796 ( .A1(n1201), .A2(n645), .B1(n646), .B2(n1117), .ZN(n1222) );
  MUX2ND0 U797 ( .I0(n676), .I1(n675), .S(n1222), .ZN(n1021) );
  AOI31D0 U798 ( .A1(n734), .A2(n1219), .A3(n727), .B(n729), .ZN(n1020) );
  MAOI222D0 U799 ( .A(n675), .B(n647), .C(n663), .ZN(n1019) );
  CKAN2D0 U800 ( .A1(intadd_3_n1), .A2(n1016), .Z(n1015) );
  NR2D0 U801 ( .A1(n1015), .A2(intadd_0_n1), .ZN(n744) );
  FA1D0 U802 ( .A(n730), .B(n729), .CI(n728), .CO(n731), .S(n1016) );
  INVD0 U803 ( .I(n731), .ZN(n747) );
  XNR2D0 U804 ( .A1(n733), .A2(n732), .ZN(n745) );
  MAOI222D0 U805 ( .A(n744), .B(n747), .C(n745), .ZN(n739) );
  CKND2D0 U806 ( .A1(n738), .A2(n739), .ZN(n737) );
  OAI211D0 U807 ( .A1(n736), .A2(n735), .B(n734), .C(n737), .ZN(intadd_1_A_1_)
         );
  OAI21D0 U808 ( .A1(n739), .A2(n738), .B(n737), .ZN(n753) );
  NR2D0 U809 ( .A1(n753), .A2(intadd_1_A_1_), .ZN(intadd_1_CI) );
  ND4D0 U810 ( .A1(intadd_1_SUM_3_), .A2(intadd_1_SUM_6_), .A3(intadd_1_SUM_2_), .A4(intadd_1_SUM_4_), .ZN(n743) );
  ND4D0 U814 ( .A1(intadd_1_SUM_7_), .A2(intadd_1_SUM_0_), .A3(intadd_1_SUM_5_), .A4(intadd_1_SUM_1_), .ZN(n742) );
  NR2D0 U815 ( .A1(n1018), .A2(intadd_1_n1), .ZN(n741) );
  AOI221D0 U816 ( .A1(n743), .A2(n992), .B1(n742), .B2(n992), .C(n741), .ZN(
        n989) );
  IND3D0 U817 ( .A1(intadd_1_A_1_), .B1(n753), .B2(n992), .ZN(n809) );
  INVD0 U818 ( .I(n809), .ZN(n806) );
  NR2D0 U819 ( .A1(n989), .A2(n806), .ZN(n752) );
  CKND2D0 U820 ( .A1(intadd_1_CI), .A2(n992), .ZN(n808) );
  INVD0 U821 ( .I(n808), .ZN(n815) );
  CKND2D0 U822 ( .A1(n992), .A2(intadd_1_A_1_), .ZN(n818) );
  INVD0 U823 ( .I(n818), .ZN(n805) );
  AOI21D0 U824 ( .A1(intadd_0_n1), .A2(n1015), .B(n744), .ZN(n746) );
  XOR3D0 U825 ( .A1(n747), .A2(n746), .A3(n745), .Z(n751) );
  AOI22D0 U826 ( .A1(n815), .A2(intadd_0_SUM_21_), .B1(n805), .B2(n751), .ZN(
        n748) );
  CKND2D0 U827 ( .A1(n752), .A2(n748), .ZN(mantissa_out[21]) );
  AOI22D0 U828 ( .A1(n815), .A2(intadd_0_SUM_20_), .B1(n805), .B2(
        intadd_0_SUM_21_), .ZN(n749) );
  CKND2D0 U829 ( .A1(n752), .A2(n749), .ZN(mantissa_out[20]) );
  AOI22D0 U830 ( .A1(n815), .A2(intadd_0_SUM_19_), .B1(n805), .B2(
        intadd_0_SUM_20_), .ZN(n750) );
  CKND2D0 U831 ( .A1(n752), .A2(n750), .ZN(mantissa_out[19]) );
  OAI21D0 U832 ( .A1(n751), .A2(intadd_1_A_1_), .B(n992), .ZN(n754) );
  OAI21D0 U833 ( .A1(n754), .A2(n753), .B(n752), .ZN(mantissa_out[22]) );
  INVD0 U834 ( .I(intadd_0_SUM_17_), .ZN(n756) );
  AOI22D0 U835 ( .A1(n815), .A2(intadd_0_SUM_18_), .B1(n805), .B2(
        intadd_0_SUM_19_), .ZN(n755) );
  INVD0 U836 ( .I(n989), .ZN(n991) );
  OAI211D0 U837 ( .A1(n809), .A2(n756), .B(n755), .C(n991), .ZN(
        mantissa_out[18]) );
  INVD0 U838 ( .I(intadd_0_SUM_15_), .ZN(n758) );
  AOI22D0 U839 ( .A1(n815), .A2(intadd_0_SUM_16_), .B1(n805), .B2(
        intadd_0_SUM_17_), .ZN(n757) );
  OAI211D0 U840 ( .A1(n809), .A2(n758), .B(n757), .C(n991), .ZN(
        mantissa_out[16]) );
  INVD0 U841 ( .I(intadd_0_SUM_14_), .ZN(n760) );
  AOI22D0 U842 ( .A1(n815), .A2(intadd_0_SUM_15_), .B1(n805), .B2(
        intadd_0_SUM_16_), .ZN(n759) );
  OAI211D0 U843 ( .A1(n809), .A2(n760), .B(n759), .C(n991), .ZN(
        mantissa_out[15]) );
  INVD0 U844 ( .I(intadd_0_SUM_16_), .ZN(n762) );
  AOI22D0 U845 ( .A1(n815), .A2(intadd_0_SUM_17_), .B1(n805), .B2(
        intadd_0_SUM_18_), .ZN(n761) );
  OAI211D0 U846 ( .A1(n809), .A2(n762), .B(n761), .C(n991), .ZN(
        mantissa_out[17]) );
  INVD0 U847 ( .I(intadd_0_SUM_12_), .ZN(n764) );
  AOI22D0 U848 ( .A1(n815), .A2(intadd_0_SUM_13_), .B1(n805), .B2(
        intadd_0_SUM_14_), .ZN(n763) );
  OAI211D0 U849 ( .A1(n809), .A2(n764), .B(n763), .C(n991), .ZN(
        mantissa_out[13]) );
  INVD0 U850 ( .I(intadd_0_SUM_11_), .ZN(n766) );
  AOI22D0 U851 ( .A1(n815), .A2(intadd_0_SUM_12_), .B1(n805), .B2(
        intadd_0_SUM_13_), .ZN(n765) );
  OAI211D0 U852 ( .A1(n809), .A2(n766), .B(n765), .C(n991), .ZN(
        mantissa_out[12]) );
  INVD0 U853 ( .I(intadd_0_SUM_10_), .ZN(n768) );
  AOI22D0 U854 ( .A1(n815), .A2(intadd_0_SUM_11_), .B1(n805), .B2(
        intadd_0_SUM_12_), .ZN(n767) );
  OAI211D0 U855 ( .A1(n809), .A2(n768), .B(n767), .C(n991), .ZN(
        mantissa_out[11]) );
  INVD0 U856 ( .I(intadd_0_SUM_13_), .ZN(n770) );
  AOI22D0 U857 ( .A1(n815), .A2(intadd_0_SUM_14_), .B1(n805), .B2(
        intadd_0_SUM_15_), .ZN(n769) );
  OAI211D0 U858 ( .A1(n809), .A2(n770), .B(n769), .C(n991), .ZN(
        mantissa_out[14]) );
  INVD0 U859 ( .I(intadd_0_SUM_9_), .ZN(n772) );
  AOI22D0 U860 ( .A1(n815), .A2(intadd_0_SUM_10_), .B1(n805), .B2(
        intadd_0_SUM_11_), .ZN(n771) );
  OAI211D0 U861 ( .A1(n809), .A2(n772), .B(n771), .C(n991), .ZN(
        mantissa_out[10]) );
  INVD0 U862 ( .I(intadd_0_SUM_8_), .ZN(n774) );
  AOI22D0 U863 ( .A1(n815), .A2(intadd_0_SUM_9_), .B1(n805), .B2(
        intadd_0_SUM_10_), .ZN(n773) );
  OAI211D0 U864 ( .A1(n809), .A2(n774), .B(n773), .C(n991), .ZN(
        mantissa_out[9]) );
  INVD0 U865 ( .I(intadd_0_SUM_7_), .ZN(n776) );
  AOI22D0 U866 ( .A1(n815), .A2(intadd_0_SUM_8_), .B1(n805), .B2(
        intadd_0_SUM_9_), .ZN(n775) );
  OAI211D0 U867 ( .A1(n809), .A2(n776), .B(n775), .C(n991), .ZN(
        mantissa_out[8]) );
  INVD0 U868 ( .I(intadd_0_SUM_6_), .ZN(n778) );
  AOI22D0 U869 ( .A1(n815), .A2(intadd_0_SUM_7_), .B1(n805), .B2(
        intadd_0_SUM_8_), .ZN(n777) );
  OAI211D0 U870 ( .A1(n809), .A2(n778), .B(n777), .C(n991), .ZN(
        mantissa_out[7]) );
  INVD0 U871 ( .I(intadd_0_SUM_5_), .ZN(n780) );
  AOI22D0 U872 ( .A1(n815), .A2(intadd_0_SUM_6_), .B1(n805), .B2(
        intadd_0_SUM_7_), .ZN(n779) );
  OAI211D0 U873 ( .A1(n809), .A2(n780), .B(n779), .C(n991), .ZN(
        mantissa_out[6]) );
  INVD0 U874 ( .I(intadd_0_SUM_4_), .ZN(n782) );
  AOI22D0 U875 ( .A1(n815), .A2(intadd_0_SUM_5_), .B1(n805), .B2(
        intadd_0_SUM_6_), .ZN(n781) );
  OAI211D0 U876 ( .A1(n809), .A2(n782), .B(n781), .C(n991), .ZN(
        mantissa_out[5]) );
  INVD0 U877 ( .I(intadd_0_SUM_3_), .ZN(n784) );
  AOI22D0 U878 ( .A1(n815), .A2(intadd_0_SUM_4_), .B1(n805), .B2(
        intadd_0_SUM_5_), .ZN(n783) );
  OAI211D0 U879 ( .A1(n809), .A2(n784), .B(n783), .C(n991), .ZN(
        mantissa_out[4]) );
  INVD0 U880 ( .I(intadd_0_SUM_2_), .ZN(n786) );
  AOI22D0 U881 ( .A1(n815), .A2(intadd_0_SUM_3_), .B1(n805), .B2(
        intadd_0_SUM_4_), .ZN(n785) );
  OAI211D0 U882 ( .A1(n809), .A2(n786), .B(n785), .C(n991), .ZN(
        mantissa_out[3]) );
  AOI22D0 U883 ( .A1(n1174), .A2(n668), .B1(n667), .B2(n1162), .ZN(n787) );
  NR2D0 U884 ( .A1(n643), .A2(n787), .ZN(n1048) );
  AOI211D0 U885 ( .A1(n787), .A2(n643), .B(n1048), .C(n793), .ZN(intadd_0_A_0_) );
  AO21D0 U886 ( .A1(n787), .A2(n643), .B(n1048), .Z(n788) );
  AOI21D0 U887 ( .A1(n793), .A2(n788), .B(intadd_0_A_0_), .ZN(n800) );
  AOI22D0 U888 ( .A1(n1201), .A2(n668), .B1(n667), .B2(n1117), .ZN(n790) );
  AOI22D0 U889 ( .A1(n1218), .A2(n682), .B1(n681), .B2(n1219), .ZN(n789) );
  MAOI222D0 U890 ( .A(n791), .B(n790), .C(n789), .ZN(n799) );
  AOI22D0 U891 ( .A1(n1253), .A2(n692), .B1(n691), .B2(n1254), .ZN(n1044) );
  MUX2ND0 U892 ( .I0(n680), .I1(n679), .S(n1044), .ZN(n1049) );
  MUX2ND0 U893 ( .I0(n681), .I1(n682), .S(n1049), .ZN(n798) );
  OAI22D0 U894 ( .A1(n1117), .A2(n644), .B1(n793), .B2(n1218), .ZN(n792) );
  AOI221D0 U895 ( .A1(n1117), .A2(n644), .B1(n1218), .B2(n793), .C(n792), .ZN(
        n797) );
  OAI22D0 U896 ( .A1(n667), .A2(n681), .B1(n682), .B2(n668), .ZN(n1002) );
  MUX2ND0 U897 ( .I0(mantissa_x[0]), .I1(n793), .S(n1002), .ZN(n794) );
  MUX2ND0 U898 ( .I0(n1253), .I1(n1254), .S(n794), .ZN(n796) );
  AOI22D0 U899 ( .A1(n1174), .A2(n643), .B1(n644), .B2(n1162), .ZN(n795) );
  MAOI222D0 U900 ( .A(n797), .B(n796), .C(n795), .ZN(n811) );
  FA1D0 U901 ( .A(n800), .B(n799), .CI(n798), .CO(n804), .S(n801) );
  INVD0 U902 ( .I(n801), .ZN(n812) );
  NR2D0 U903 ( .A1(n811), .A2(n812), .ZN(n810) );
  CKND2D0 U904 ( .A1(n802), .A2(intadd_0_SUM_1_), .ZN(n819) );
  OAI21D0 U905 ( .A1(n802), .A2(intadd_0_SUM_1_), .B(n819), .ZN(n817) );
  AOI22D0 U906 ( .A1(n815), .A2(intadd_0_SUM_2_), .B1(n805), .B2(
        intadd_0_SUM_3_), .ZN(n803) );
  OAI211D0 U907 ( .A1(n809), .A2(n817), .B(n803), .C(n991), .ZN(
        mantissa_out[2]) );
  FA1D0 U908 ( .A(n804), .B(intadd_0_SUM_0_), .CI(n810), .CO(n802), .S(n814)
         );
  AOI22D0 U909 ( .A1(n806), .A2(n814), .B1(n805), .B2(intadd_0_SUM_2_), .ZN(
        n807) );
  OAI211D0 U910 ( .A1(n808), .A2(n817), .B(n807), .C(n991), .ZN(
        mantissa_out[1]) );
  AOI211D0 U911 ( .A1(n812), .A2(n811), .B(n810), .C(n809), .ZN(n813) );
  AOI211D0 U912 ( .A1(n815), .A2(n814), .B(n989), .C(n813), .ZN(n816) );
  OAI21D0 U913 ( .A1(n818), .A2(n817), .B(n816), .ZN(mantissa_out[0]) );
  INVD0 U914 ( .I(n819), .ZN(intadd_0_B_2_) );
  AOI22D0 U915 ( .A1(n1174), .A2(n680), .B1(n679), .B2(n1162), .ZN(n993) );
  MUX2ND0 U916 ( .I0(n668), .I1(n667), .S(n993), .ZN(n820) );
  CKND2D0 U917 ( .A1(n821), .A2(n820), .ZN(n1057) );
  OA21D0 U918 ( .A1(n821), .A2(n820), .B(n1057), .Z(intadd_0_B_0_) );
  AOI22D0 U919 ( .A1(n1174), .A2(n662), .B1(n661), .B2(n1162), .ZN(n828) );
  NR2D0 U920 ( .A1(n641), .A2(n828), .ZN(n1070) );
  AOI22D0 U921 ( .A1(n1217), .A2(n666), .B1(n665), .B2(n1216), .ZN(n824) );
  AOI22D0 U922 ( .A1(n1218), .A2(n654), .B1(n653), .B2(n1219), .ZN(n822) );
  MAOI222D0 U923 ( .A(n824), .B(n823), .C(n822), .ZN(n1069) );
  AOI22D0 U924 ( .A1(n1253), .A2(n704), .B1(n703), .B2(n1254), .ZN(n1014) );
  MUX2ND0 U925 ( .I0(n653), .I1(n654), .S(n1014), .ZN(n825) );
  MUX2ND0 U926 ( .I0(n686), .I1(n685), .S(n825), .ZN(n1068) );
  MAOI222D0 U927 ( .A(n668), .B(n682), .C(n692), .ZN(n827) );
  AOI21D0 U928 ( .A1(n828), .A2(n641), .B(n1070), .ZN(n826) );
  INR2D0 U929 ( .A1(n827), .B1(n826), .ZN(n844) );
  INVD0 U930 ( .I(intadd_2_SUM_0_), .ZN(n846) );
  AOI211D0 U931 ( .A1(n828), .A2(n641), .B(n1070), .C(n827), .ZN(n845) );
  INVD0 U932 ( .I(n845), .ZN(n829) );
  OAI21D0 U933 ( .A1(n844), .A2(n846), .B(n829), .ZN(n1071) );
  INVD0 U934 ( .I(n830), .ZN(n852) );
  AOI22D0 U935 ( .A1(n1217), .A2(n659), .B1(n660), .B2(n1216), .ZN(n833) );
  AOI22D0 U936 ( .A1(mantissa_x[21]), .A2(n661), .B1(n662), .B2(n1117), .ZN(
        n832) );
  AOI22D0 U937 ( .A1(n1218), .A2(n665), .B1(n666), .B2(n1219), .ZN(n831) );
  MAOI222D0 U938 ( .A(n833), .B(n832), .C(n831), .ZN(n834) );
  OAI22D0 U939 ( .A1(n1162), .A2(n641), .B1(n642), .B2(n1174), .ZN(n838) );
  CKND2D0 U940 ( .A1(n680), .A2(n838), .ZN(n835) );
  NR2D0 U941 ( .A1(n834), .A2(n835), .ZN(n841) );
  INVD0 U942 ( .I(n1013), .ZN(n1012) );
  OAI22D0 U943 ( .A1(n1254), .A2(n666), .B1(n665), .B2(n1253), .ZN(n843) );
  INVD0 U944 ( .I(n843), .ZN(n836) );
  CKAN2D0 U945 ( .A1(n835), .A2(n834), .Z(n840) );
  AOI221D0 U946 ( .A1(n1012), .A2(n836), .B1(n1013), .B2(n843), .C(n840), .ZN(
        n837) );
  NR2D0 U947 ( .A1(n841), .A2(n837), .ZN(n851) );
  MUX2ND0 U948 ( .I0(n680), .I1(n679), .S(n838), .ZN(n997) );
  FA1D0 U949 ( .A(n644), .B(mantissa_x[0]), .CI(n682), .CO(n999), .S(n821) );
  INVD0 U950 ( .I(n999), .ZN(n998) );
  INVD0 U951 ( .I(n1002), .ZN(n1001) );
  AOI22D0 U952 ( .A1(n1001), .A2(n691), .B1(n692), .B2(n1002), .ZN(n839) );
  MAOI222D0 U953 ( .A(n997), .B(n998), .C(n839), .ZN(n1052) );
  NR2D0 U954 ( .A1(n841), .A2(n840), .ZN(n842) );
  MUX2ND0 U955 ( .I0(n1013), .I1(n1012), .S(n842), .ZN(n1054) );
  XNR2D0 U956 ( .A1(n1054), .A2(n843), .ZN(n848) );
  NR2D0 U957 ( .A1(n845), .A2(n844), .ZN(n1051) );
  MUX2ND0 U958 ( .I0(n846), .I1(intadd_2_SUM_0_), .S(n1051), .ZN(n847) );
  MAOI222D0 U959 ( .A(n1052), .B(n848), .C(n847), .ZN(n850) );
  INVD0 U960 ( .I(n849), .ZN(intadd_0_A_3_) );
  FA1D0 U961 ( .A(n852), .B(n851), .CI(n850), .CO(n853), .S(n849) );
  INVD0 U962 ( .I(n853), .ZN(intadd_0_B_4_) );
  MAOI222D0 U963 ( .A(n703), .B(n639), .C(n653), .ZN(n871) );
  OAI22D0 U964 ( .A1(n1162), .A2(n711), .B1(n712), .B2(n1174), .ZN(n855) );
  MUX2ND0 U965 ( .I0(n687), .I1(n688), .S(n855), .ZN(n870) );
  OAI22D0 U966 ( .A1(n719), .A2(n703), .B1(n704), .B2(n720), .ZN(n873) );
  MUX2ND0 U967 ( .I0(n686), .I1(n685), .S(n873), .ZN(n854) );
  MAOI222D0 U968 ( .A(n871), .B(n870), .C(n854), .ZN(n1110) );
  CKND2D0 U969 ( .A1(n688), .A2(n855), .ZN(n1103) );
  AOI22D0 U970 ( .A1(n1217), .A2(n715), .B1(n716), .B2(n1216), .ZN(n858) );
  AOI22D0 U971 ( .A1(n1201), .A2(n673), .B1(n674), .B2(n1117), .ZN(n857) );
  AOI22D0 U972 ( .A1(n1218), .A2(n707), .B1(n708), .B2(n1219), .ZN(n856) );
  MAOI222D0 U973 ( .A(n858), .B(n857), .C(n856), .ZN(n1104) );
  NR2D0 U974 ( .A1(n1103), .A2(n1104), .ZN(n859) );
  CKAN2D0 U975 ( .A1(n1104), .A2(n1103), .Z(n1102) );
  NR2D0 U976 ( .A1(n859), .A2(n1102), .ZN(n860) );
  MUX2ND0 U977 ( .I0(n689), .I1(n690), .S(n860), .ZN(n1106) );
  AOI22D0 U978 ( .A1(n720), .A2(n688), .B1(n687), .B2(n719), .ZN(n891) );
  MAOI222D0 U979 ( .A(n720), .B(n704), .C(n686), .ZN(n894) );
  AOI22D0 U980 ( .A1(n1174), .A2(n674), .B1(n673), .B2(n1162), .ZN(n886) );
  MUX2ND0 U981 ( .I0(n711), .I1(n712), .S(n886), .ZN(n893) );
  XOR3D0 U982 ( .A1(n891), .A2(n894), .A3(n893), .Z(n1107) );
  OAI22D0 U983 ( .A1(n715), .A2(n707), .B1(n708), .B2(n716), .ZN(n901) );
  INVD0 U984 ( .I(n901), .ZN(n900) );
  OAI22D0 U985 ( .A1(n1254), .A2(n705), .B1(n706), .B2(n1253), .ZN(n1099) );
  INVD0 U986 ( .I(n1099), .ZN(n1100) );
  AOI22D0 U987 ( .A1(n900), .A2(n1100), .B1(n1099), .B2(n901), .ZN(n1096) );
  XNR4D0 U988 ( .A1(n1110), .A2(n1106), .A3(n1107), .A4(n1096), .ZN(n879) );
  AOI22D0 U989 ( .A1(n1174), .A2(n688), .B1(n687), .B2(n1162), .ZN(n865) );
  NR2D0 U990 ( .A1(n685), .A2(n865), .ZN(n869) );
  AOI22D0 U991 ( .A1(n1217), .A2(n720), .B1(n719), .B2(n1216), .ZN(n863) );
  AOI22D0 U992 ( .A1(n1201), .A2(n712), .B1(n711), .B2(n1117), .ZN(n862) );
  AOI22D0 U993 ( .A1(n1218), .A2(n716), .B1(n715), .B2(n1219), .ZN(n861) );
  MAOI222D0 U994 ( .A(n863), .B(n862), .C(n861), .ZN(n868) );
  AOI22D0 U995 ( .A1(n674), .A2(n901), .B1(n900), .B2(n673), .ZN(n867) );
  MUX2ND0 U996 ( .I0(n1254), .I1(n1253), .S(n867), .ZN(n864) );
  MAOI222D0 U997 ( .A(n869), .B(n868), .C(n864), .ZN(n878) );
  MUX2ND0 U998 ( .I0(n685), .I1(n686), .S(n865), .ZN(n1008) );
  INVD0 U999 ( .I(n1010), .ZN(n1009) );
  MUX2ND0 U1000 ( .I0(n703), .I1(n704), .S(n1013), .ZN(n866) );
  MAOI222D0 U1001 ( .A(n1008), .B(n1009), .C(n866), .ZN(n1075) );
  XNR3D0 U1002 ( .A1(n869), .A2(n868), .A3(n867), .ZN(n1078) );
  MUX2ND0 U1003 ( .I0(n1253), .I1(n1254), .S(n1078), .ZN(n875) );
  INVD0 U1004 ( .I(n873), .ZN(n872) );
  XOR3D0 U1005 ( .A1(n871), .A2(n870), .A3(n686), .Z(n1077) );
  MUX2ND0 U1006 ( .I0(n873), .I1(n872), .S(n1077), .ZN(n874) );
  MAOI222D0 U1007 ( .A(n1075), .B(n875), .C(n874), .ZN(n877) );
  INVD0 U1008 ( .I(n876), .ZN(intadd_0_A_7_) );
  FA1D0 U1009 ( .A(n879), .B(n878), .CI(n877), .CO(n880), .S(n876) );
  INVD0 U1010 ( .I(n880), .ZN(intadd_0_B_8_) );
  AOI22D0 U1011 ( .A1(n1174), .A2(n690), .B1(n689), .B2(n1162), .ZN(n884) );
  NR2D0 U1012 ( .A1(n673), .A2(n884), .ZN(n921) );
  AOI22D0 U1013 ( .A1(n1217), .A2(n706), .B1(n705), .B2(n1216), .ZN(n883) );
  AOI22D0 U1014 ( .A1(n1201), .A2(n672), .B1(n671), .B2(n1117), .ZN(n882) );
  AOI22D0 U1015 ( .A1(n1218), .A2(n702), .B1(n701), .B2(n1219), .ZN(n881) );
  MAOI222D0 U1016 ( .A(n883), .B(n882), .C(n881), .ZN(n920) );
  AOI22D0 U1017 ( .A1(n702), .A2(n714), .B1(n713), .B2(n701), .ZN(n932) );
  MUX2ND0 U1018 ( .I0(n652), .I1(n651), .S(n932), .ZN(n918) );
  XNR3D0 U1019 ( .A1(n921), .A2(n920), .A3(n918), .ZN(n922) );
  AOI22D0 U1020 ( .A1(n708), .A2(n674), .B1(n673), .B2(n707), .ZN(n914) );
  MAOI222D0 U1021 ( .A(n712), .B(n716), .C(n708), .ZN(n917) );
  OAI22D0 U1022 ( .A1(n1162), .A2(n671), .B1(n672), .B2(n1174), .ZN(n912) );
  MUX2ND0 U1023 ( .I0(n690), .I1(n689), .S(n912), .ZN(n916) );
  XOR3D0 U1024 ( .A1(n914), .A2(n917), .A3(n916), .Z(n923) );
  MAOI222D0 U1025 ( .A(n716), .B(n720), .C(n688), .ZN(n899) );
  MUX2ND0 U1026 ( .I0(n673), .I1(n674), .S(n884), .ZN(n898) );
  MUX2ND0 U1027 ( .I0(n711), .I1(n712), .S(n901), .ZN(n885) );
  MAOI222D0 U1028 ( .A(n899), .B(n898), .C(n885), .ZN(n926) );
  XNR4D0 U1029 ( .A1(n922), .A2(n923), .A3(n926), .A4(n1099), .ZN(n907) );
  NR2D0 U1030 ( .A1(n711), .A2(n886), .ZN(n897) );
  AOI22D0 U1031 ( .A1(n1217), .A2(n708), .B1(n707), .B2(n1216), .ZN(n889) );
  AOI22D0 U1032 ( .A1(n1201), .A2(n690), .B1(n689), .B2(n1117), .ZN(n888) );
  AOI22D0 U1033 ( .A1(n1218), .A2(n706), .B1(n705), .B2(n1219), .ZN(n887) );
  MAOI222D0 U1034 ( .A(n889), .B(n888), .C(n887), .ZN(n896) );
  AOI22D0 U1035 ( .A1(n672), .A2(n701), .B1(n702), .B2(n671), .ZN(n895) );
  MUX2ND0 U1036 ( .I0(n1099), .I1(n1100), .S(n895), .ZN(n890) );
  MAOI222D0 U1037 ( .A(n897), .B(n896), .C(n890), .ZN(n906) );
  MUX2ND0 U1038 ( .I0(n716), .I1(n715), .S(n891), .ZN(n892) );
  MAOI222D0 U1039 ( .A(n894), .B(n893), .C(n892), .ZN(n1095) );
  XNR3D0 U1040 ( .A1(n897), .A2(n896), .A3(n895), .ZN(n1098) );
  MUX2ND0 U1041 ( .I0(n1100), .I1(n1099), .S(n1098), .ZN(n903) );
  XOR3D0 U1042 ( .A1(n712), .A2(n899), .A3(n898), .Z(n1097) );
  MUX2ND0 U1043 ( .I0(n901), .I1(n900), .S(n1097), .ZN(n902) );
  MAOI222D0 U1044 ( .A(n1095), .B(n903), .C(n902), .ZN(n905) );
  INVD0 U1045 ( .I(n904), .ZN(intadd_0_A_9_) );
  FA1D0 U1046 ( .A(n907), .B(n906), .CI(n905), .CO(n908), .S(n904) );
  INVD0 U1047 ( .I(n908), .ZN(intadd_0_B_10_) );
  AOI22D0 U1048 ( .A1(n1217), .A2(n702), .B1(n701), .B2(n1216), .ZN(n911) );
  AOI22D0 U1049 ( .A1(n1201), .A2(n652), .B1(n651), .B2(n1117), .ZN(n910) );
  AOI22D0 U1050 ( .A1(n1218), .A2(n714), .B1(n713), .B2(n1219), .ZN(n909) );
  MAOI222D0 U1051 ( .A(n911), .B(n910), .C(n909), .ZN(n945) );
  AOI22D0 U1052 ( .A1(n1253), .A2(n700), .B1(n699), .B2(n1254), .ZN(n1124) );
  MUX2ND0 U1053 ( .I0(n650), .I1(n649), .S(n1124), .ZN(n1140) );
  CKND2D0 U1054 ( .A1(n690), .A2(n912), .ZN(n943) );
  XOR3D0 U1055 ( .A1(n945), .A2(n1140), .A3(n943), .Z(n947) );
  AOI22D0 U1056 ( .A1(n690), .A2(n706), .B1(n705), .B2(n689), .ZN(n934) );
  MAOI222D0 U1057 ( .A(n708), .B(n706), .C(n674), .ZN(n937) );
  AOI22D0 U1058 ( .A1(n1174), .A2(n652), .B1(n651), .B2(n1162), .ZN(n913) );
  NR2D0 U1059 ( .A1(n671), .A2(n913), .ZN(n1127) );
  AO21D0 U1060 ( .A1(n913), .A2(n671), .B(n1127), .Z(n935) );
  XOR3D0 U1061 ( .A1(n934), .A2(n937), .A3(n935), .Z(n948) );
  MUX2ND0 U1062 ( .I0(n706), .I1(n705), .S(n914), .ZN(n915) );
  MAOI222D0 U1063 ( .A(n917), .B(n916), .C(n915), .ZN(n951) );
  XOR4D0 U1064 ( .A1(n947), .A2(n948), .A3(n932), .A4(n951), .Z(n930) );
  MUX2ND0 U1065 ( .I0(n1254), .I1(n1253), .S(n918), .ZN(n919) );
  MAOI222D0 U1066 ( .A(n921), .B(n920), .C(n919), .ZN(n929) );
  MUX2ND0 U1067 ( .I0(n1253), .I1(n1254), .S(n922), .ZN(n925) );
  MUX2ND0 U1068 ( .I0(n705), .I1(n706), .S(n923), .ZN(n924) );
  MAOI222D0 U1069 ( .A(n926), .B(n925), .C(n924), .ZN(n928) );
  INVD0 U1070 ( .I(n927), .ZN(intadd_0_A_10_) );
  FA1D0 U1071 ( .A(n930), .B(n929), .CI(n928), .CO(n931), .S(n927) );
  INVD0 U1072 ( .I(n931), .ZN(intadd_0_B_11_) );
  MUX2ND0 U1073 ( .I0(n671), .I1(n672), .S(n932), .ZN(n1116) );
  AOI22D0 U1074 ( .A1(n1174), .A2(n650), .B1(n649), .B2(n1162), .ZN(n933) );
  NR2D0 U1075 ( .A1(n651), .A2(n933), .ZN(n1151) );
  AOI21D0 U1076 ( .A1(n933), .A2(n651), .B(n1151), .ZN(n1115) );
  MAOI222D0 U1077 ( .A(n701), .B(n689), .C(n705), .ZN(n1114) );
  MUX2ND0 U1078 ( .I0(n702), .I1(n701), .S(n934), .ZN(n936) );
  MAOI222D0 U1079 ( .A(n937), .B(n936), .C(n935), .ZN(n1129) );
  AOI22D0 U1080 ( .A1(n1217), .A2(n714), .B1(n713), .B2(n1216), .ZN(n940) );
  AOI22D0 U1081 ( .A1(n1201), .A2(n650), .B1(n649), .B2(n1117), .ZN(n939) );
  AOI22D0 U1082 ( .A1(n1218), .A2(n700), .B1(n699), .B2(n1219), .ZN(n938) );
  MAOI222D0 U1083 ( .A(n940), .B(n939), .C(n938), .ZN(n1126) );
  MUX2ND0 U1084 ( .I0(n655), .I1(n656), .S(n1124), .ZN(n941) );
  MUX2ND0 U1085 ( .I0(n694), .I1(n693), .S(n941), .ZN(n1125) );
  INVD0 U1086 ( .I(n942), .ZN(n955) );
  INVD0 U1087 ( .I(n943), .ZN(n946) );
  INVD0 U1088 ( .I(n1140), .ZN(n1139) );
  AOI22D0 U1089 ( .A1(n714), .A2(n1140), .B1(n1139), .B2(n713), .ZN(n944) );
  MAOI222D0 U1090 ( .A(n946), .B(n945), .C(n944), .ZN(n954) );
  MUX2ND0 U1091 ( .I0(n714), .I1(n713), .S(n947), .ZN(n950) );
  MUX2ND0 U1092 ( .I0(n701), .I1(n702), .S(n948), .ZN(n949) );
  MAOI222D0 U1093 ( .A(n951), .B(n950), .C(n949), .ZN(n953) );
  INVD0 U1094 ( .I(n952), .ZN(intadd_0_A_11_) );
  FA1D0 U1095 ( .A(n955), .B(n954), .CI(n953), .CO(n956), .S(n952) );
  INVD0 U1096 ( .I(n956), .ZN(intadd_0_B_12_) );
  AOI22D0 U1097 ( .A1(n1174), .A2(n657), .B1(n658), .B2(n1162), .ZN(n957) );
  CKND2D0 U1098 ( .A1(n678), .A2(n957), .ZN(n1191) );
  OA21D0 U1099 ( .A1(n678), .A2(n957), .B(n1191), .Z(n1156) );
  AOI22D0 U1100 ( .A1(n684), .A2(n694), .B1(n693), .B2(n683), .ZN(n1135) );
  MUX2ND0 U1101 ( .I0(n655), .I1(n656), .S(n1135), .ZN(n1155) );
  AOI22D0 U1102 ( .A1(n1174), .A2(n678), .B1(n677), .B2(n1162), .ZN(n964) );
  NR2D0 U1103 ( .A1(n655), .A2(n964), .ZN(n1166) );
  AOI22D0 U1104 ( .A1(n1217), .A2(n684), .B1(n683), .B2(n1216), .ZN(n960) );
  AOI22D0 U1105 ( .A1(n1201), .A2(n658), .B1(n657), .B2(n1117), .ZN(n959) );
  AOI22D0 U1106 ( .A1(n1218), .A2(n696), .B1(n695), .B2(n1219), .ZN(n958) );
  MAOI222D0 U1107 ( .A(n960), .B(n959), .C(n958), .ZN(n1165) );
  AOI22D0 U1108 ( .A1(n718), .A2(n696), .B1(n695), .B2(n717), .ZN(n1173) );
  MUX2ND0 U1109 ( .I0(n709), .I1(n710), .S(n1173), .ZN(n961) );
  MUX2ND0 U1110 ( .I0(n1253), .I1(n1254), .S(n961), .ZN(n1164) );
  MAOI222D0 U1111 ( .A(n714), .B(n700), .C(n652), .ZN(n963) );
  AOI21D0 U1112 ( .A1(n964), .A2(n655), .B(n1166), .ZN(n962) );
  INR2D0 U1113 ( .A1(n963), .B1(n962), .ZN(n978) );
  FA1D0 U1114 ( .A(n700), .B(n694), .CI(n650), .CO(n1157), .S(n980) );
  INVD0 U1115 ( .I(n980), .ZN(n981) );
  AOI211D0 U1116 ( .A1(n964), .A2(n655), .B(n1166), .C(n963), .ZN(n979) );
  INVD0 U1117 ( .I(n979), .ZN(n965) );
  OAI21D0 U1118 ( .A1(n978), .A2(n981), .B(n965), .ZN(n1167) );
  INVD0 U1119 ( .I(n966), .ZN(n987) );
  OAI22D0 U1120 ( .A1(n1162), .A2(n655), .B1(n656), .B2(n1174), .ZN(n972) );
  INR2D0 U1121 ( .A1(n972), .B1(n649), .ZN(n974) );
  AOI22D0 U1122 ( .A1(n1217), .A2(n694), .B1(n693), .B2(n1216), .ZN(n969) );
  AOI22D0 U1123 ( .A1(n1201), .A2(n678), .B1(n677), .B2(n1117), .ZN(n968) );
  AOI22D0 U1124 ( .A1(n1218), .A2(n684), .B1(n683), .B2(n1219), .ZN(n967) );
  MAOI222D0 U1125 ( .A(n969), .B(n968), .C(n967), .ZN(n976) );
  OAI22D0 U1126 ( .A1(n1254), .A2(n684), .B1(n683), .B2(n1253), .ZN(n977) );
  INVD0 U1127 ( .I(n977), .ZN(n970) );
  AOI22D0 U1128 ( .A1(n696), .A2(n658), .B1(n657), .B2(n695), .ZN(n975) );
  MUX2ND0 U1129 ( .I0(n977), .I1(n970), .S(n975), .ZN(n971) );
  MAOI222D0 U1130 ( .A(n974), .B(n976), .C(n971), .ZN(n986) );
  MAOI222D0 U1131 ( .A(n672), .B(n702), .C(n714), .ZN(n1122) );
  MUX2ND0 U1132 ( .I0(n650), .I1(n649), .S(n972), .ZN(n1121) );
  AOI22D0 U1133 ( .A1(n714), .A2(n652), .B1(n651), .B2(n713), .ZN(n1123) );
  MUX2ND0 U1134 ( .I0(n700), .I1(n699), .S(n1123), .ZN(n973) );
  MAOI222D0 U1135 ( .A(n1122), .B(n1121), .C(n973), .ZN(n1134) );
  XOR3D0 U1136 ( .A1(n976), .A2(n975), .A3(n974), .Z(n1137) );
  XNR2D0 U1137 ( .A1(n1137), .A2(n977), .ZN(n983) );
  NR2D0 U1138 ( .A1(n979), .A2(n978), .ZN(n1136) );
  MUX2ND0 U1139 ( .I0(n981), .I1(n980), .S(n1136), .ZN(n982) );
  MAOI222D0 U1140 ( .A(n1134), .B(n983), .C(n982), .ZN(n985) );
  INVD0 U1141 ( .I(n984), .ZN(intadd_0_A_14_) );
  FA1D0 U1142 ( .A(n987), .B(n986), .CI(n985), .CO(n988), .S(n984) );
  INVD0 U1143 ( .I(n988), .ZN(intadd_0_B_15_) );
  NR2D0 U1144 ( .A1(n645), .A2(n1017), .ZN(intadd_3_B_2_) );
  CKAN2D0 U1145 ( .A1(exp_x[1]), .A2(exp_y[1]), .Z(intadd_1_B_2_) );
  CKAN2D0 U1146 ( .A1(exp_x[2]), .A2(exp_y[2]), .Z(intadd_1_B_3_) );
  CKAN2D0 U1147 ( .A1(exp_x[3]), .A2(exp_y[3]), .Z(intadd_1_B_4_) );
  CKAN2D0 U1148 ( .A1(exp_x[4]), .A2(exp_y[4]), .Z(intadd_1_B_5_) );
  CKAN2D0 U1149 ( .A1(exp_x[5]), .A2(exp_y[5]), .Z(intadd_1_B_6_) );
  CKAN2D0 U1150 ( .A1(exp_x[6]), .A2(exp_y[6]), .Z(intadd_1_B_7_) );
  INVD0 U1151 ( .I(intadd_1_SUM_0_), .ZN(n990) );
  AOI21D0 U1152 ( .A1(n990), .A2(n992), .B(n989), .ZN(exp_out[0]) );
  IOA21D0 U1153 ( .A1(intadd_1_SUM_1_), .A2(n992), .B(n991), .ZN(exp_out[1])
         );
  IOA21D0 U1154 ( .A1(intadd_1_SUM_3_), .A2(n992), .B(n991), .ZN(exp_out[3])
         );
  IOA21D0 U1155 ( .A1(intadd_1_SUM_4_), .A2(n992), .B(n991), .ZN(exp_out[4])
         );
  IOA21D0 U1156 ( .A1(intadd_1_SUM_2_), .A2(n992), .B(n991), .ZN(exp_out[2])
         );
  IOA21D0 U1157 ( .A1(intadd_1_SUM_6_), .A2(n992), .B(n991), .ZN(exp_out[6])
         );
  IOA21D0 U1158 ( .A1(intadd_1_SUM_7_), .A2(n992), .B(n991), .ZN(exp_out[7])
         );
  IOA21D0 U1159 ( .A1(intadd_1_SUM_5_), .A2(n992), .B(n991), .ZN(exp_out[5])
         );
  IAO21D0 U1160 ( .A1(exp_x[1]), .A2(exp_y[1]), .B(intadd_1_B_2_), .ZN(
        intadd_1_B_1_) );
  NR2D0 U1161 ( .A1(n667), .A2(n993), .ZN(n1064) );
  AOI22D0 U1162 ( .A1(n1217), .A2(n692), .B1(n691), .B2(n1216), .ZN(n996) );
  AOI22D0 U1163 ( .A1(mantissa_x[21]), .A2(n642), .B1(n641), .B2(n1117), .ZN(
        n995) );
  AOI22D0 U1164 ( .A1(n1218), .A2(n660), .B1(n659), .B2(n1219), .ZN(n994) );
  MAOI222D0 U1165 ( .A(n996), .B(n995), .C(n994), .ZN(n1063) );
  AOI22D0 U1166 ( .A1(n660), .A2(n666), .B1(n665), .B2(n659), .ZN(n1050) );
  MUX2ND0 U1167 ( .I0(n661), .I1(n662), .S(n1050), .ZN(n1061) );
  XOR3D0 U1168 ( .A1(n1064), .A2(n1063), .A3(n1061), .Z(n1055) );
  MUX2ND0 U1169 ( .I0(n999), .I1(n998), .S(n997), .ZN(n1000) );
  MUX2ND0 U1170 ( .I0(n1002), .I1(n1001), .S(n1000), .ZN(n1056) );
  XOR4D0 U1171 ( .A1(n1055), .A2(n1056), .A3(n1044), .A4(n1057), .Z(
        intadd_0_B_1_) );
  NR2D0 U1172 ( .A1(n661), .A2(n1003), .ZN(n1040) );
  AOI21D0 U1173 ( .A1(n1003), .A2(n661), .B(n1040), .ZN(intadd_2_A_1_) );
  FA1D0 U1174 ( .A(n666), .B(n662), .CI(n654), .CO(n1010), .S(n1034) );
  AOI22D0 U1175 ( .A1(n1174), .A2(n685), .B1(n686), .B2(n1162), .ZN(n1004) );
  MAOI222D0 U1176 ( .A(n641), .B(n659), .C(n665), .ZN(n1032) );
  OAI22D0 U1177 ( .A1(n711), .A2(n715), .B1(n716), .B2(n712), .ZN(n1087) );
  AOI22D0 U1178 ( .A1(n1217), .A2(n704), .B1(n703), .B2(n1216), .ZN(n1007) );
  AOI22D0 U1179 ( .A1(n1201), .A2(n688), .B1(n687), .B2(n1117), .ZN(n1006) );
  AOI22D0 U1180 ( .A1(n1218), .A2(n720), .B1(n719), .B2(n1219), .ZN(n1005) );
  MAOI222D0 U1181 ( .A(n1007), .B(n1006), .C(n1005), .ZN(n1088) );
  XOR3D0 U1182 ( .A1(n1087), .A2(n1088), .A3(n1089), .Z(n1079) );
  MUX2ND0 U1183 ( .I0(n1010), .I1(n1009), .S(n1008), .ZN(n1011) );
  MUX2ND0 U1184 ( .I0(n1013), .I1(n1012), .S(n1011), .ZN(n1080) );
  MUX2ND0 U1185 ( .I0(n719), .I1(n720), .S(n1014), .ZN(n1076) );
  XNR4D0 U1186 ( .A1(n1081), .A2(n1079), .A3(n1080), .A4(n1076), .ZN(
        intadd_2_A_3_) );
  IAO21D0 U1187 ( .A1(intadd_3_n1), .A2(n1016), .B(n1015), .ZN(intadd_0_A_21_)
         );
  AOI21D0 U1188 ( .A1(n1017), .A2(n645), .B(intadd_3_B_2_), .ZN(intadd_3_A_1_)
         );
  IAO21D0 U1189 ( .A1(exp_x[2]), .A2(exp_y[2]), .B(intadd_1_B_3_), .ZN(
        intadd_1_A_2_) );
  IAO21D0 U1190 ( .A1(exp_x[3]), .A2(exp_y[3]), .B(intadd_1_B_4_), .ZN(
        intadd_1_A_3_) );
  IAO21D0 U1191 ( .A1(exp_x[4]), .A2(exp_y[4]), .B(intadd_1_B_5_), .ZN(
        intadd_1_A_4_) );
  IAO21D0 U1192 ( .A1(exp_x[5]), .A2(exp_y[5]), .B(intadd_1_B_6_), .ZN(
        intadd_1_A_5_) );
  IAO21D0 U1193 ( .A1(exp_x[6]), .A2(exp_y[6]), .B(intadd_1_B_7_), .ZN(
        intadd_1_A_6_) );
  IOA21D0 U1194 ( .A1(exp_y[7]), .A2(exp_x[7]), .B(n1018), .ZN(intadd_1_A_7_)
         );
  XOR2D0 U1195 ( .A1(sign_y), .A2(sign_x), .Z(sign_out) );
  AOI22D0 U1196 ( .A1(n676), .A2(n664), .B1(n663), .B2(n675), .ZN(n1233) );
  MUX2ND0 U1197 ( .I0(n647), .I1(n648), .S(n1233), .ZN(intadd_3_B_1_) );
  FA1D0 U1198 ( .A(n1021), .B(n1020), .CI(n1019), .CO(n728), .S(intadd_3_A_2_)
         );
  AOI221D0 U1199 ( .A1(n676), .A2(n1216), .B1(n675), .B2(n1217), .C(n1022), 
        .ZN(n1023) );
  AOI22D0 U1200 ( .A1(mantissa_x[22]), .A2(n646), .B1(n645), .B2(n1162), .ZN(
        n1028) );
  NR2D0 U1201 ( .A1(n647), .A2(n1028), .ZN(n1027) );
  FA1D0 U1202 ( .A(n1024), .B(n1023), .CI(n1027), .CO(n1031), .S(n1250) );
  MAOI222D0 U1203 ( .A(n710), .B(n698), .C(n718), .ZN(n1026) );
  AOI21D0 U1204 ( .A1(n1028), .A2(n647), .B(n1027), .ZN(n1025) );
  INR2D0 U1205 ( .A1(n1026), .B1(n1025), .ZN(n1226) );
  INVD0 U1206 ( .I(intadd_3_SUM_0_), .ZN(n1252) );
  AOI211D0 U1207 ( .A1(n1028), .A2(n647), .B(n1027), .C(n1026), .ZN(n1227) );
  INVD0 U1208 ( .I(n1227), .ZN(n1029) );
  OAI21D0 U1209 ( .A1(n1226), .A2(n1252), .B(n1029), .ZN(n1249) );
  FA1D0 U1210 ( .A(intadd_3_SUM_2_), .B(n1031), .CI(n1030), .CO(intadd_0_B_21_), .S(intadd_0_A_20_) );
  FA1D0 U1211 ( .A(n1034), .B(n1033), .CI(n1032), .CO(n1081), .S(intadd_2_A_2_) );
  MUX2ND0 U1212 ( .I0(n641), .I1(n642), .S(n1050), .ZN(intadd_2_B_1_) );
  MUX2ND0 U1213 ( .I0(n688), .I1(n687), .S(n1076), .ZN(n1039) );
  AOI22D0 U1214 ( .A1(n1217), .A2(n654), .B1(n653), .B2(n1216), .ZN(n1037) );
  AOI22D0 U1215 ( .A1(n1201), .A2(n686), .B1(n685), .B2(n1117), .ZN(n1036) );
  AOI22D0 U1216 ( .A1(n1218), .A2(n704), .B1(n703), .B2(n1219), .ZN(n1035) );
  MAOI222D0 U1217 ( .A(n1037), .B(n1036), .C(n1035), .ZN(n1038) );
  FA1D0 U1218 ( .A(n1040), .B(n1039), .CI(n1038), .CO(intadd_2_B_3_), .S(
        intadd_2_B_2_) );
  AOI22D0 U1219 ( .A1(n1217), .A2(n682), .B1(n681), .B2(n1216), .ZN(n1043) );
  AOI22D0 U1220 ( .A1(n1201), .A2(n680), .B1(n679), .B2(n1117), .ZN(n1042) );
  AOI22D0 U1221 ( .A1(n1218), .A2(n692), .B1(n691), .B2(n1219), .ZN(n1041) );
  MAOI222D0 U1222 ( .A(n1043), .B(n1042), .C(n1041), .ZN(n1047) );
  MUX2ND0 U1223 ( .I0(n659), .I1(n660), .S(n1044), .ZN(n1045) );
  MUX2ND0 U1224 ( .I0(n642), .I1(n641), .S(n1045), .ZN(n1046) );
  FA1D0 U1225 ( .A(n1048), .B(n1047), .CI(n1046), .CO(intadd_0_A_1_), .S(
        intadd_0_CI) );
  XNR3D0 U1226 ( .A1(n1051), .A2(n1050), .A3(n1049), .ZN(n1053) );
  XNR3D0 U1227 ( .A1(n1054), .A2(n1053), .A3(n1052), .ZN(n1067) );
  MUX2ND0 U1228 ( .I0(n1254), .I1(n1253), .S(n1055), .ZN(n1059) );
  MUX2ND0 U1229 ( .I0(n692), .I1(n691), .S(n1056), .ZN(n1058) );
  MAOI222D0 U1230 ( .A(n1059), .B(n1058), .C(n1057), .ZN(n1066) );
  INVD0 U1231 ( .I(n1061), .ZN(n1060) );
  AOI222D0 U1232 ( .A1(n1253), .A2(n1061), .B1(n1063), .B2(n1064), .C1(n1254), 
        .C2(n1060), .ZN(n1062) );
  IAO21D0 U1233 ( .A1(n1064), .A2(n1063), .B(n1062), .ZN(n1065) );
  FA1D0 U1234 ( .A(n1067), .B(n1066), .CI(n1065), .CO(intadd_0_B_3_), .S(
        intadd_0_A_2_) );
  FA1D0 U1235 ( .A(n1070), .B(n1069), .CI(n1068), .CO(n1074), .S(n1072) );
  FA1D0 U1236 ( .A(intadd_2_SUM_1_), .B(n1072), .CI(n1071), .CO(n1073), .S(
        n830) );
  FA1D0 U1237 ( .A(intadd_2_SUM_2_), .B(n1074), .CI(n1073), .CO(intadd_0_B_5_), 
        .S(intadd_0_A_4_) );
  XNR4D0 U1238 ( .A1(n1078), .A2(n1077), .A3(n1076), .A4(n1075), .ZN(n1094) );
  AOI22D0 U1239 ( .A1(n1253), .A2(n720), .B1(n719), .B2(n1254), .ZN(n1085) );
  XOR2D0 U1240 ( .A1(n1079), .A2(n1085), .Z(n1084) );
  MUX2ND0 U1241 ( .I0(n704), .I1(n703), .S(n1080), .ZN(n1083) );
  INVD0 U1242 ( .I(n1081), .ZN(n1082) );
  MAOI222D0 U1243 ( .A(n1084), .B(n1083), .C(n1082), .ZN(n1093) );
  INVD0 U1244 ( .I(n1087), .ZN(n1086) );
  MUX2ND0 U1245 ( .I0(n1087), .I1(n1086), .S(n1085), .ZN(n1091) );
  INVD0 U1246 ( .I(n1088), .ZN(n1090) );
  MAOI222D0 U1247 ( .A(n1091), .B(n1090), .C(n1089), .ZN(n1092) );
  FA1D0 U1248 ( .A(n1094), .B(n1093), .CI(n1092), .CO(intadd_0_B_7_), .S(
        intadd_0_A_6_) );
  XNR4D0 U1249 ( .A1(n1098), .A2(n1097), .A3(n1096), .A4(n1095), .ZN(n1113) );
  AOI22D0 U1250 ( .A1(n708), .A2(n1100), .B1(n1099), .B2(n707), .ZN(n1105) );
  MUX2ND0 U1251 ( .I0(n689), .I1(n690), .S(n1105), .ZN(n1101) );
  OAI22D0 U1252 ( .A1(n1104), .A2(n1103), .B1(n1102), .B2(n1101), .ZN(n1112)
         );
  XOR2D0 U1253 ( .A1(n1106), .A2(n1105), .Z(n1109) );
  MUX2ND0 U1254 ( .I0(n716), .I1(n715), .S(n1107), .ZN(n1108) );
  MAOI222D0 U1255 ( .A(n1110), .B(n1109), .C(n1108), .ZN(n1111) );
  FA1D0 U1256 ( .A(n1113), .B(n1112), .CI(n1111), .CO(intadd_0_B_9_), .S(
        intadd_0_A_8_) );
  FA1D0 U1257 ( .A(n1116), .B(n1115), .CI(n1114), .CO(n1143), .S(n1130) );
  AOI22D0 U1258 ( .A1(n1217), .A2(n700), .B1(n699), .B2(n1216), .ZN(n1120) );
  AOI22D0 U1259 ( .A1(n1201), .A2(n656), .B1(n655), .B2(n1117), .ZN(n1119) );
  AOI22D0 U1260 ( .A1(n1218), .A2(n694), .B1(n693), .B2(n1219), .ZN(n1118) );
  MAOI222D0 U1261 ( .A(n1120), .B(n1119), .C(n1118), .ZN(n1150) );
  MUX2ND0 U1262 ( .I0(n677), .I1(n678), .S(n1135), .ZN(n1148) );
  XOR3D0 U1263 ( .A1(n1151), .A2(n1150), .A3(n1148), .Z(n1141) );
  XOR3D0 U1264 ( .A1(n1123), .A2(n1122), .A3(n1121), .Z(n1142) );
  XNR4D0 U1265 ( .A1(n1143), .A2(n1141), .A3(n1142), .A4(n1124), .ZN(n1133) );
  FA1D0 U1266 ( .A(n1127), .B(n1126), .CI(n1125), .CO(n1132), .S(n1128) );
  FA1D0 U1267 ( .A(n1130), .B(n1129), .CI(n1128), .CO(n1131), .S(n942) );
  FA1D0 U1268 ( .A(n1133), .B(n1132), .CI(n1131), .CO(intadd_0_B_13_), .S(
        intadd_0_A_12_) );
  XNR4D0 U1269 ( .A1(n1137), .A2(n1136), .A3(n1135), .A4(n1134), .ZN(n1138) );
  MUX2ND0 U1270 ( .I0(n1140), .I1(n1139), .S(n1138), .ZN(n1154) );
  MUX2ND0 U1271 ( .I0(n1254), .I1(n1253), .S(n1141), .ZN(n1146) );
  MUX2ND0 U1272 ( .I0(n700), .I1(n699), .S(n1142), .ZN(n1145) );
  INVD0 U1273 ( .I(n1143), .ZN(n1144) );
  MAOI222D0 U1274 ( .A(n1146), .B(n1145), .C(n1144), .ZN(n1153) );
  INVD0 U1275 ( .I(n1148), .ZN(n1147) );
  AOI222D0 U1276 ( .A1(n1253), .A2(n1148), .B1(n1150), .B2(n1151), .C1(n1254), 
        .C2(n1147), .ZN(n1149) );
  IAO21D0 U1277 ( .A1(n1151), .A2(n1150), .B(n1149), .ZN(n1152) );
  FA1D0 U1278 ( .A(n1154), .B(n1153), .CI(n1152), .CO(intadd_0_B_14_), .S(
        intadd_0_A_13_) );
  FA1D0 U1279 ( .A(n1157), .B(n1156), .CI(n1155), .CO(n1187), .S(n1169) );
  AOI22D0 U1280 ( .A1(n1217), .A2(n696), .B1(n695), .B2(n1216), .ZN(n1160) );
  AOI22D0 U1281 ( .A1(n1201), .A2(n710), .B1(n709), .B2(n1117), .ZN(n1159) );
  AOI22D0 U1282 ( .A1(n1218), .A2(n718), .B1(n717), .B2(n1219), .ZN(n1158) );
  MAOI222D0 U1283 ( .A(n1160), .B(n1159), .C(n1158), .ZN(n1161) );
  INVD0 U1284 ( .I(n1161), .ZN(n1192) );
  OAI22D0 U1285 ( .A1(n1254), .A2(n697), .B1(n698), .B2(n1253), .ZN(n1206) );
  MUX2ND0 U1286 ( .I0(n670), .I1(n669), .S(n1206), .ZN(n1235) );
  XOR3D0 U1287 ( .A1(n1192), .A2(n1235), .A3(n1191), .Z(n1185) );
  AOI22D0 U1288 ( .A1(n678), .A2(n684), .B1(n683), .B2(n677), .ZN(n1176) );
  MAOI222D0 U1289 ( .A(n684), .B(n694), .C(n656), .ZN(n1179) );
  AOI22D0 U1290 ( .A1(n1174), .A2(n710), .B1(n709), .B2(n1162), .ZN(n1163) );
  NR2D0 U1291 ( .A1(n657), .A2(n1163), .ZN(n1209) );
  AO21D0 U1292 ( .A1(n1163), .A2(n657), .B(n1209), .Z(n1177) );
  XOR3D0 U1293 ( .A1(n1176), .A2(n1179), .A3(n1177), .Z(n1186) );
  XNR4D0 U1294 ( .A1(n1187), .A2(n1185), .A3(n1186), .A4(n1173), .ZN(n1172) );
  FA1D0 U1295 ( .A(n1166), .B(n1165), .CI(n1164), .CO(n1171), .S(n1168) );
  FA1D0 U1296 ( .A(n1169), .B(n1168), .CI(n1167), .CO(n1170), .S(n966) );
  FA1D0 U1297 ( .A(n1172), .B(n1171), .CI(n1170), .CO(intadd_0_B_16_), .S(
        intadd_0_A_15_) );
  MUX2ND0 U1298 ( .I0(n657), .I1(n658), .S(n1173), .ZN(n1199) );
  AOI22D0 U1299 ( .A1(n1174), .A2(n669), .B1(n670), .B2(n1162), .ZN(n1175) );
  CKND2D0 U1300 ( .A1(n710), .A2(n1175), .ZN(n1243) );
  OA21D0 U1301 ( .A1(n710), .A2(n1175), .B(n1243), .Z(n1198) );
  MAOI222D0 U1302 ( .A(n695), .B(n677), .C(n683), .ZN(n1197) );
  MUX2ND0 U1303 ( .I0(n696), .I1(n695), .S(n1176), .ZN(n1178) );
  MAOI222D0 U1304 ( .A(n1179), .B(n1178), .C(n1177), .ZN(n1211) );
  AOI22D0 U1305 ( .A1(n1217), .A2(n718), .B1(n717), .B2(n1216), .ZN(n1182) );
  AOI22D0 U1306 ( .A1(n1201), .A2(n670), .B1(n669), .B2(n1117), .ZN(n1181) );
  AOI22D0 U1307 ( .A1(n1218), .A2(n698), .B1(n697), .B2(n1219), .ZN(n1180) );
  MAOI222D0 U1308 ( .A(n1182), .B(n1181), .C(n1180), .ZN(n1208) );
  INVD0 U1309 ( .I(n1206), .ZN(n1184) );
  AOI22D0 U1310 ( .A1(n648), .A2(n664), .B1(n663), .B2(n647), .ZN(n1183) );
  MUX2ND0 U1311 ( .I0(n1184), .I1(n1206), .S(n1183), .ZN(n1207) );
  MUX2ND0 U1312 ( .I0(n717), .I1(n718), .S(n1185), .ZN(n1190) );
  MUX2ND0 U1313 ( .I0(n696), .I1(n695), .S(n1186), .ZN(n1189) );
  INVD0 U1314 ( .I(n1187), .ZN(n1188) );
  MAOI222D0 U1315 ( .A(n1190), .B(n1189), .C(n1188), .ZN(n1195) );
  INVD0 U1316 ( .I(n1235), .ZN(n1236) );
  AOI22D0 U1317 ( .A1(n718), .A2(n1235), .B1(n1236), .B2(n717), .ZN(n1193) );
  MAOI222D0 U1318 ( .A(n1193), .B(n1192), .C(n1191), .ZN(n1194) );
  FA1D0 U1319 ( .A(n1196), .B(n1195), .CI(n1194), .CO(intadd_0_B_17_), .S(
        intadd_0_A_16_) );
  INVD0 U1321 ( .I(n1200), .ZN(n1239) );
  AOI22D0 U1322 ( .A1(n1217), .A2(n698), .B1(n697), .B2(n1216), .ZN(n1204) );
  AOI22D0 U1323 ( .A1(n1201), .A2(n648), .B1(n647), .B2(n1117), .ZN(n1203) );
  AOI22D0 U1324 ( .A1(n1218), .A2(n664), .B1(n663), .B2(n1219), .ZN(n1202) );
  MAOI222D0 U1325 ( .A(n1204), .B(n1203), .C(n1202), .ZN(n1205) );
  INVD0 U1326 ( .I(n1205), .ZN(n1244) );
  MUX2ND0 U1327 ( .I0(n645), .I1(n646), .S(n1233), .ZN(n1242) );
  XOR3D0 U1328 ( .A1(n1244), .A2(n1242), .A3(n1243), .Z(n1237) );
  AOI22D0 U1329 ( .A1(mantissa_x[22]), .A2(n648), .B1(n647), .B2(n1162), .ZN(
        n1223) );
  MUX2ND0 U1330 ( .I0(n670), .I1(n669), .S(n1223), .ZN(n1231) );
  MAOI222D0 U1331 ( .A(n718), .B(n696), .C(n658), .ZN(n1232) );
  OAI22D0 U1332 ( .A1(n709), .A2(n718), .B1(n717), .B2(n710), .ZN(n1228) );
  XOR3D0 U1333 ( .A1(n1231), .A2(n1232), .A3(n1228), .Z(n1238) );
  XNR4D0 U1334 ( .A1(n1239), .A2(n1237), .A3(n1238), .A4(n1206), .ZN(n1215) );
  FA1D0 U1335 ( .A(n1209), .B(n1208), .CI(n1207), .CO(n1214), .S(n1210) );
  FA1D0 U1337 ( .A(n1215), .B(n1214), .CI(n1213), .CO(intadd_0_B_18_), .S(
        intadd_0_A_17_) );
  AOI22D0 U1338 ( .A1(n1217), .A2(n663), .B1(n664), .B2(n1216), .ZN(n1221) );
  AOI22D0 U1339 ( .A1(n676), .A2(n1219), .B1(n1218), .B2(n675), .ZN(n1220) );
  AOI21D0 U1341 ( .A1(n1223), .A2(n669), .B(n1225), .ZN(n1259) );
  NR2D0 U1344 ( .A1(n1259), .A2(n1260), .ZN(n1255) );
  NR2D0 U1345 ( .A1(n1227), .A2(n1226), .ZN(n1251) );
  INVD0 U1346 ( .I(n1228), .ZN(n1229) );
  OAI222D0 U1347 ( .A1(n698), .A2(n1229), .B1(n697), .B2(n1228), .C1(n1231), 
        .C2(n1232), .ZN(n1230) );
  IOA21D0 U1348 ( .A1(n1232), .A2(n1231), .B(n1230), .ZN(n1256) );
  XNR4D0 U1349 ( .A1(n1233), .A2(n1255), .A3(n1251), .A4(n1256), .ZN(n1234) );
  MUX2ND0 U1350 ( .I0(n1236), .I1(n1235), .S(n1234), .ZN(n1248) );
  MUX2ND0 U1351 ( .I0(n1254), .I1(n1253), .S(n1237), .ZN(n1241) );
  MUX2ND0 U1352 ( .I0(n698), .I1(n697), .S(n1238), .ZN(n1240) );
  MAOI222D0 U1353 ( .A(n1241), .B(n1240), .C(n1239), .ZN(n1247) );
  MUX2ND0 U1354 ( .I0(n1254), .I1(n1253), .S(n1242), .ZN(n1245) );
  MAOI222D0 U1355 ( .A(n1245), .B(n1244), .C(n1243), .ZN(n1246) );
  FA1D0 U1356 ( .A(n1248), .B(n1247), .CI(n1246), .CO(intadd_0_B_19_), .S(
        intadd_0_A_18_) );
  FA1D0 U1357 ( .A(intadd_3_SUM_1_), .B(n1250), .CI(n1249), .CO(n1030), .S(
        n1265) );
  MUX2ND0 U1358 ( .I0(intadd_3_SUM_0_), .I1(n1252), .S(n1251), .ZN(n1258) );
  AOI22D0 U1359 ( .A1(n676), .A2(n1254), .B1(n1253), .B2(n675), .ZN(n1261) );
  XOR2D0 U1360 ( .A1(n1255), .A2(n1261), .Z(n1257) );
  MAOI222D0 U1361 ( .A(n1258), .B(n1257), .C(n1256), .ZN(n1264) );
  INVD0 U1362 ( .I(n1259), .ZN(n1262) );
  AOI21D0 U1363 ( .A1(n1262), .A2(n1261), .B(n1260), .ZN(n1263) );
  FA1D0 U1364 ( .A(n1265), .B(n1264), .CI(n1263), .CO(intadd_0_B_20_), .S(
        intadd_0_A_19_) );
  CKXOR2D0 U811 ( .A1(intadd_1_n1), .A2(n1018), .Z(n992) );
  OR2D0 U812 ( .A1(exp_y[7]), .A2(exp_x[7]), .Z(n1018) );
  AN3D0 U813 ( .A1(n1223), .A2(n669), .A3(n1225), .Z(n1260) );
  MAOI222D0 U1320 ( .A(n1222), .B(n1221), .C(n1220), .ZN(n1225) );
  CMPE42D1 U1336 ( .A(n1199), .B(n1198), .C(n1197), .CIX(n1211), .D(n1210), 
        .CO(n1213), .COX(n1200), .S(n1196) );
endmodule

