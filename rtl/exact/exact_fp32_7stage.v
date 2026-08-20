module exact_fp32_mul_7stage (
    input  wire        clk,
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    wire [31:0] x_holdfix;
    wire [31:0] y_holdfix;
    wire [7:0] status_unused;
    wire pipe_full_unused;
    wire pipe_ovf_unused;
    wire arrive_unused;
    wire arrive_id_unused;
    wire push_out_n_unused;
    wire [2:0] pipe_census_unused;
    genvar holdfix_bit;

    generate
        for (holdfix_bit = 0; holdfix_bit < 32;
             holdfix_bit = holdfix_bit + 1) begin : holdfix_inputs
            BUFFD0 u_x_buf (.I(x[holdfix_bit]), .Z(x_holdfix[holdfix_bit]));
            BUFFD0 u_y_buf (.I(y[holdfix_bit]), .Z(y_holdfix[holdfix_bit]));
        end
    endgenerate

    // Seven register levels, round toward zero, and flush denormals to zero.
    DW_lp_piped_fp_mult #(
        .sig_width(23),
        .exp_width(8),
        .ieee_compliance(0),
        .op_iso_mode(0),
        .id_width(1),
        .in_reg(1),
        .stages(6),
        .out_reg(1),
        .no_pm(1),
        .rst_mode(0)
    ) u_exact_mul (
        .clk(clk),
        .rst_n(1'b1),
        .a(x_holdfix),
        .b(y_holdfix),
        .rnd(3'b001),
        .z(result),
        .status(status_unused),
        .launch(1'b1),
        .launch_id(1'b0),
        .pipe_full(pipe_full_unused),
        .pipe_ovf(pipe_ovf_unused),
        .accept_n(1'b0),
        .arrive(arrive_unused),
        .arrive_id(arrive_id_unused),
        .push_out_n(push_out_n_unused),
        .pipe_census(pipe_census_unused)
    );
endmodule

module exact_fp32_div_7stage (
    input  wire        clk,
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    wire [31:0] x_holdfix;
    wire [31:0] y_holdfix;
    wire [7:0] status_unused;
    wire pipe_full_unused;
    wire pipe_ovf_unused;
    wire arrive_unused;
    wire arrive_id_unused;
    wire push_out_n_unused;
    wire [2:0] pipe_census_unused;
    genvar holdfix_bit;

    generate
        for (holdfix_bit = 0; holdfix_bit < 32;
             holdfix_bit = holdfix_bit + 1) begin : holdfix_inputs
            BUFFD0 u_x_buf (.I(x[holdfix_bit]), .Z(x_holdfix[holdfix_bit]));
            BUFFD0 u_y_buf (.I(y[holdfix_bit]), .Z(y_holdfix[holdfix_bit]));
        end
    endgenerate

    // Seven register levels, round toward zero, and flush denormals to zero.
    DW_lp_piped_fp_div #(
        .sig_width(23),
        .exp_width(8),
        .ieee_compliance(0),
        .faithful_round(0),
        .op_iso_mode(0),
        .id_width(1),
        .in_reg(1),
        .stages(6),
        .out_reg(1),
        .no_pm(1),
        .rst_mode(0)
    ) u_exact_div (
        .clk(clk),
        .rst_n(1'b1),
        .a(x_holdfix),
        .b(y_holdfix),
        .rnd(3'b001),
        .z(result),
        .status(status_unused),
        .launch(1'b1),
        .launch_id(1'b0),
        .pipe_full(pipe_full_unused),
        .pipe_ovf(pipe_ovf_unused),
        .accept_n(1'b0),
        .arrive(arrive_unused),
        .arrive_id(arrive_id_unused),
        .push_out_n(push_out_n_unused),
        .pipe_census(pipe_census_unused)
    );
endmodule

module exact_fp32_divmul_7stage (
    input  wire        clk,
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire        divide_mode,
    output wire [31:0] result
);
    wire [31:0] mul_result;
    wire [31:0] div_result;
    wire divide_mode_holdfix;
    reg mode_s1;
    reg mode_s2;
    reg mode_s3;
    reg mode_s4;
    reg mode_s5;
    reg mode_s6;
    reg mode_s7;

    BUFFD0 holdfix_mode_buf (
        .I(divide_mode),
        .Z(divide_mode_holdfix)
    );

    exact_fp32_mul_7stage u_mul (
        .clk(clk),
        .x(x),
        .y(y),
        .result(mul_result)
    );

    exact_fp32_div_7stage u_div (
        .clk(clk),
        .x(x),
        .y(y),
        .result(div_result)
    );

    always @(posedge clk) begin
        mode_s1 <= divide_mode_holdfix;
        mode_s2 <= mode_s1;
        mode_s3 <= mode_s2;
        mode_s4 <= mode_s3;
        mode_s5 <= mode_s4;
        mode_s6 <= mode_s5;
        mode_s7 <= mode_s6;
    end

    assign result = mode_s7 ? div_result : mul_result;
endmodule
