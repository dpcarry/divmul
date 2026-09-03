`timescale 1ns/1ps

module tb_amlib_oadm_mul_equiv;
    localparam integer NUM_RANDOM = 200000;

    reg  [31:0] x;
    reg  [31:0] y;
    wire [22:0] amlib_mantissa;
    wire        amlib_sign;
    wire [7:0]  amlib_exp;
    wire [31:0] amlib_z = {amlib_sign, amlib_exp, amlib_mantissa};
    wire [31:0] oadm_z;

    integer i;
    integer mismatches;
    reg [31:0] state;

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
`else
    initial begin
        $display("ERROR: define one of LEVEL0, LEVEL1, LEVEL2, LEVEL3.");
        $finish;
    end
`endif

    function automatic [31:0] lcg_next(input [31:0] s);
        begin
            lcg_next = (s * 32'd1664525) + 32'd1013904223;
        end
    endfunction

    task automatic check_one(input [22:0] mx, input [22:0] my,
                             input sx, input sy);
        begin
            x = {sx, 8'h7f, mx};
            y = {sy, 8'h7f, my};
            #1;
            if (amlib_z !== oadm_z) begin
                if (mismatches < 20) begin
                    $display("MISMATCH x=%08h y=%08h amlib=%08h oadm=%08h",
                             x, y, amlib_z, oadm_z);
                end
                mismatches = mismatches + 1;
            end
        end
    endtask

    initial begin
        mismatches = 0;
        state = 32'h1bad_c0de ^ `SEED;

        check_one(23'h000000, 23'h000000, 1'b0, 1'b0);
        check_one(23'h7fffff, 23'h000000, 1'b0, 1'b0);
        check_one(23'h000000, 23'h7fffff, 1'b0, 1'b0);
        check_one(23'h7fffff, 23'h7fffff, 1'b0, 1'b0);
        check_one(23'h400000, 23'h400000, 1'b1, 1'b0);
        check_one(23'h200000, 23'h600000, 1'b1, 1'b1);

        for (i = 0; i < NUM_RANDOM; i = i + 1) begin
            state = lcg_next(state);
            x[22:0] = state[22:0];
            x[30:23] = 8'h7f;
            x[31] = state[31];
            state = lcg_next(state);
            y[22:0] = state[22:0];
            y[30:23] = 8'h7f;
            y[31] = state[31];
            #1;
            if (amlib_z !== oadm_z) begin
                if (mismatches < 20) begin
                    $display("MISMATCH x=%08h y=%08h amlib=%08h oadm=%08h",
                             x, y, amlib_z, oadm_z);
                end
                mismatches = mismatches + 1;
            end
        end

        if (mismatches == 0) begin
            $display("PASS level=%0d vectors=%0d normalized finite MUL bit-exact vs AM-Lib OAM",
                     `LEVEL_NUM, NUM_RANDOM + 6);
        end else begin
            $display("NOT_BIT_EXACT level=%0d vectors=%0d mismatches=%0d",
                     `LEVEL_NUM, NUM_RANDOM + 6, mismatches);
        end
        $finish;
    end
endmodule
