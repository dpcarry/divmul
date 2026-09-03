module amlib_oadm_mul_miter (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] amlib_z,
    output wire [31:0] oadm_z
);
    wire [22:0] amlib_mantissa;
    wire        amlib_sign;
    wire [7:0]  amlib_exp;

    assign amlib_z = {amlib_sign, amlib_exp, amlib_mantissa};

    top amlib (
        .mantissa_x(x[22:0]),
        .mantissa_y(y[22:0]),
        .sign_x(x[31]),
        .sign_y(y[31]),
        .exp_x(x[30:23]),
        .exp_y(y[30:23]),
        .mantissa_out(amlib_mantissa),
        .sign_out(amlib_sign),
        .exp_out(amlib_exp)
    );

`ifdef USE_L0_CENTERED_INDEX
    oadm_l0_centered_index_mul_opt oadm (
        .x(x),
        .y(y),
        .result(oadm_z)
    );
`elsif LEVEL0
    oadm_fixed_l0_opt oadm (
        .x(x),
        .y(y),
        .divide_mode(1'b0),
        .result(oadm_z)
    );
`elsif LEVEL1
    oadm_fixed_l1_opt oadm (
        .x(x),
        .y(y),
        .divide_mode(1'b0),
        .result(oadm_z)
    );
`elsif LEVEL2
    oadm_fixed_l2_opt oadm (
        .x(x),
        .y(y),
        .divide_mode(1'b0),
        .result(oadm_z)
    );
`elsif LEVEL3
    oadm_fixed_l3_opt oadm (
        .x(x),
        .y(y),
        .divide_mode(1'b0),
        .result(oadm_z)
    );
`endif
endmodule
