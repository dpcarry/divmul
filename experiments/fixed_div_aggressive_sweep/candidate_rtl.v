module oadm_fixed_l0_div_r19_w18 (
    input wire [31:0] x,
    input wire [31:0] y,
    output wire [31:0] result
);
    oadm_fixed_div_root_opt #(
        .LEVEL(0), .RESIDUAL_DROP(19), .SCALE_DROP(18),
        .COEFFICIENT_BITS(7), .C0(8'd59)
    ) implementation (.x(x), .y(y), .result(result));
endmodule


module oadm_fixed_l1_div_r16_w17 (
    input wire [31:0] x,
    input wire [31:0] y,
    output wire [31:0] result
);
    oadm_fixed_div_root_opt #(
        .LEVEL(1), .RESIDUAL_DROP(16), .SCALE_DROP(17),
        .COEFFICIENT_BITS(7), .C0(8'd83), .C1(8'd42)
    ) implementation (.x(x), .y(y), .result(result));
endmodule
