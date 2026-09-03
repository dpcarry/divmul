module mul_root_opt_compare (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] amlib_z,
    output wire [31:0] current_z,
    output wire [31:0] accuracy_z,
    output wire [31:0] conservative_z,
    output wire [31:0] aggressive_z
);
    wire [22:0] amlib_mantissa;
    wire amlib_sign;
    wire [7:0] amlib_exp;
    assign amlib_z = {amlib_sign, amlib_exp, amlib_mantissa};

    top amlib (
        .mantissa_x(x[22:0]), .mantissa_y(y[22:0]),
        .sign_x(x[31]), .sign_y(y[31]),
        .exp_x(x[30:23]), .exp_y(y[30:23]),
        .mantissa_out(amlib_mantissa), .sign_out(amlib_sign),
        .exp_out(amlib_exp)
    );

`ifdef LEVEL0
    oadm_fixed_l0_opt current_impl(x, y, 1'b0, current_z);
    oadm_fixed_l0_mul_root_opt_accuracy accuracy_impl(x, y, accuracy_z);
    oadm_fixed_l0_mul_root_opt conservative_impl(x, y, conservative_z);
    oadm_fixed_l0_mul_root_opt_aggressive aggressive_impl(x, y, aggressive_z);
`elsif LEVEL1
    oadm_fixed_l1_opt current_impl(x, y, 1'b0, current_z);
    oadm_fixed_l1_mul_root_opt_accuracy accuracy_impl(x, y, accuracy_z);
    oadm_fixed_l1_mul_root_opt conservative_impl(x, y, conservative_z);
    oadm_fixed_l1_mul_root_opt_aggressive aggressive_impl(x, y, aggressive_z);
`elsif LEVEL2
    oadm_fixed_l2_opt current_impl(x, y, 1'b0, current_z);
    oadm_fixed_l2_mul_root_opt_accuracy accuracy_impl(x, y, accuracy_z);
    oadm_fixed_l2_mul_root_opt conservative_impl(x, y, conservative_z);
    oadm_fixed_l2_mul_root_opt_aggressive aggressive_impl(x, y, aggressive_z);
`else
    oadm_fixed_l3_opt current_impl(x, y, 1'b0, current_z);
    oadm_fixed_l3_mul_root_opt_accuracy accuracy_impl(x, y, accuracy_z);
    oadm_fixed_l3_mul_root_opt conservative_impl(x, y, conservative_z);
    oadm_fixed_l3_mul_root_opt_aggressive aggressive_impl(x, y, aggressive_z);
`endif
endmodule
