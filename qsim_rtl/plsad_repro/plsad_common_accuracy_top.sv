module plsad_common_accuracy_top (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] m4_out,
    output wire [31:0] m6_out,
    output wire [31:0] m8_out,
    output wire [31:0] oadm_l0_out,
    output wire [31:0] oadm_l1_out,
    output wire [31:0] oadm_l2_out,
    output wire [31:0] oadm_l3_out
);
    plsad_m4_fp32_paceio m4 (.x(x), .y(y), .out(m4_out));
    plsad_m6_fp32_paceio m6 (.x(x), .y(y), .out(m6_out));
    plsad_m8_fp32_paceio m8 (.x(x), .y(y), .out(m8_out));
    oadm_fixed_l0_div_root_opt oadm_l0 (.x(x), .y(y), .result(oadm_l0_out));
    oadm_fixed_l1_div_root_opt oadm_l1 (.x(x), .y(y), .result(oadm_l1_out));
    oadm_fixed_l2_div_root_opt oadm_l2 (.x(x), .y(y), .result(oadm_l2_out));
    oadm_fixed_l3_div_root_opt oadm_l3 (.x(x), .y(y), .result(oadm_l3_out));
endmodule
