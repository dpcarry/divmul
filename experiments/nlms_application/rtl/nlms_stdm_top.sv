module nlms_stdm_top (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire        divide_mode,
    output wire [31:0] l0_result,
    output wire [31:0] l1_result,
    output wire [31:0] l2_result,
    output wire [31:0] l3_result
);
    l0_s6_shared_unsigned l0 (
        .x(x), .y(y), .divide_mode(divide_mode), .result(l0_result)
    );
    l1_s4_shared_unsigned l1 (
        .x(x), .y(y), .divide_mode(divide_mode), .result(l1_result)
    );
    ur_fp32_l2_unsigned l2 (
        .x(x), .y(y), .divide_mode(divide_mode), .result(l2_result)
    );
    ur_fp32_l3_unsigned l3 (
        .x(x), .y(y), .divide_mode(divide_mode), .result(l3_result)
    );
endmodule
