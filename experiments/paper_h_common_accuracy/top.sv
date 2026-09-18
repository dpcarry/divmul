module paper_h_common_accuracy_top (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] stdm_l0,
    output wire [31:0] stdm_l1,
    output wire [31:0] stdm_l2,
    output wire [31:0] stdm_l3,
    output wire [31:0] plsad_m8,
    output wire [31:0] pace_l1,
    output wire [31:0] pace_l2,
    output wire [31:0] pace_l3,
    output wire [31:0] pace_l4,
    output wire [31:0] fpd2d_t17,
    output wire [31:0] fpd2d_t16,
    output wire [31:0] fpd2d_t15
);
    l0_s6_div_unsigned l0 (.x(x), .y(y), .result(stdm_l0));
    usd_l1_unsigned l1 (.x(x), .y(y), .result(stdm_l1));
    usd_l2_unsigned l2 (.x(x), .y(y), .result(stdm_l2));
    usd_l3_unsigned l3 (.x(x), .y(y), .result(stdm_l3));
    plsad_m8_fp32_paceio plsad (.x(x), .y(y), .out(plsad_m8));
    pace_fp32_l1 p1 (.x(x), .y(y), .out(pace_l1));
    pace_fp32_l2 p2 (.x(x), .y(y), .out(pace_l2));
    pace_fp32_l3 p3 (.x(x), .y(y), .out(pace_l3));
    pace_fp32_l4 p4 (.x(x), .y(y), .out(pace_l4));
    fpd2d_8x8_t17_milp f17 (.x(x), .y(y), .result(fpd2d_t17));
    fpd2d_8x8_t16_milp f16 (.x(x), .y(y), .result(fpd2d_t16));
    fpd2d_8x8_t15_milp f15 (.x(x), .y(y), .result(fpd2d_t15));
endmodule
