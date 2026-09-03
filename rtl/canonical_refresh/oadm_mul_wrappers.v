module oadm_fixed_l0_mul_canonical (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_fixed_l0_opt impl (
        .x(x), .y(y), .divide_mode(1'b0), .result(result)
    );
endmodule

module oadm_fixed_l1_mul_canonical (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_fixed_l1_opt impl (
        .x(x), .y(y), .divide_mode(1'b0), .result(result)
    );
endmodule

module oadm_fixed_l2_mul_canonical (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_fixed_l2_opt impl (
        .x(x), .y(y), .divide_mode(1'b0), .result(result)
    );
endmodule

module oadm_fixed_l3_mul_canonical (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    oadm_fixed_l3_opt impl (
        .x(x), .y(y), .divide_mode(1'b0), .result(result)
    );
endmodule
