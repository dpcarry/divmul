`timescale 1ns/1ps

module tb_common_wrapper_equiv;
    reg [31:0] x;
    reg [31:0] y;
    wire [22:0] author_fraction;
    wire author_sign;
    wire [7:0] author_exponent;
    wire [31:0] author_result = {
        author_sign, author_exponent, author_fraction
    };
    wire [31:0] common_result;
    integer i;
    integer mismatches;

    top author_top (
        .mantissa_x(x[22:0]), .mantissa_y(y[22:0]),
        .sign_x(x[31]), .sign_y(y[31]),
        .exp_x(x[30:23]), .exp_y(y[30:23]),
        .mantissa_out(author_fraction), .sign_out(author_sign),
        .exp_out(author_exponent)
    );

    amlib_oam_fp32_common #(.LEVEL(`LEVEL_NUM)) common_top (
        .x(x), .y(y), .result(common_result)
    );

    initial begin
        mismatches = 0;
        x = 32'h3f800000;
        y = 32'h3f800000;
        for (i = 0; i < 20000; i = i + 1) begin
            x[31] = $random;
            x[30:23] = 8'h7f;
            x[22:0] = $random;
            y[31] = $random;
            y[30:23] = 8'h7f;
            y[22:0] = $random;
            #1;
            if (author_result !== common_result)
                mismatches = mismatches + 1;
        end
        if (mismatches == 0)
            $display("AMLIB_COMMON_WRAPPER_EQUIV PASS: level=%0d vectors=%0d",
                     `LEVEL_NUM, 20000);
        else
            $display("AMLIB_COMMON_WRAPPER_EQUIV FAIL: level=%0d mismatches=%0d",
                     `LEVEL_NUM, mismatches);
        $finish;
    end
endmodule
