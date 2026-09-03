// Combinational exact FP32 DesignWare baselines for the PACE-compatible flow.
// Denormals are flushed and the result is truncated, matching OADM semantics.
module exact_fp32_mul_nopipe (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    wire [7:0] status_unused;

    DW_fp_mult #(
        .sig_width(23),
        .exp_width(8),
        .ieee_compliance(0)
    ) u_exact_mul (
        .a(x),
        .b(y),
        .rnd(3'b001),
        .z(result),
        .status(status_unused)
    );
endmodule

module exact_fp32_div_nopipe (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    wire [7:0] status_unused;

    DW_fp_div #(
        .sig_width(23),
        .exp_width(8),
        .ieee_compliance(0),
        .faithful_round(0)
    ) u_exact_div (
        .a(x),
        .b(y),
        .rnd(3'b001),
        .z(result),
        .status(status_unused)
    );
endmodule

module exact_fp32_divmul_nopipe (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire        divide_mode,
    output wire [31:0] result
);
    wire [31:0] mul_result;
    wire [31:0] div_result;

    exact_fp32_mul_nopipe u_mul (
        .x(x),
        .y(y),
        .result(mul_result)
    );

    exact_fp32_div_nopipe u_div (
        .x(x),
        .y(y),
        .result(div_result)
    );

    assign result = divide_mode ? div_result : mul_result;
endmodule
