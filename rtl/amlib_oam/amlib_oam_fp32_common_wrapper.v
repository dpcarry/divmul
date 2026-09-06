// Common normal-finite FP32 boundary around the unmodified AM-Lib OAM core.
module amlib_oam_fp32_common #(
    parameter integer LEVEL = 0
) (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    wire [22:0] fraction_x;
    wire [22:0] fraction_y;
    wire [22:0] result_fraction;
    wire [1:0] shift;

    Mantissa_OAUM #(
        .MANTISSA_WIDTH(23),
        .ACC_3(LEVEL)
    ) oam_core (
        .Mantissa_X(fraction_x),
        .Mantissa_Y(fraction_y),
        .Mantissa_Out(result_fraction),
        .Shift(shift)
    );

    // This is the normal-finite exponent mapping used by the AM-Lib top.
    reg signed [2:0] exponent_adjust;
    always @* begin
        case (shift)
            2'b00: exponent_adjust = -3'sd1;
            2'b01: exponent_adjust =  3'sd0;
            default: exponent_adjust = 3'sd1;
        endcase
    end

    fp32_normal_finite_wrapper fp_wrapper (
        .x(x), .y(y), .divide_mode(1'b0),
        .fraction_x(fraction_x), .fraction_y(fraction_y),
        .result_fraction(result_fraction),
        .exponent_adjust(exponent_adjust), .result(result)
    );
endmodule

module amlib_oam_l0_fp32_common (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    amlib_oam_fp32_common #(.LEVEL(0)) impl (x, y, result);
endmodule

module amlib_oam_l1_fp32_common (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    amlib_oam_fp32_common #(.LEVEL(1)) impl (x, y, result);
endmodule

module amlib_oam_l2_fp32_common (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    amlib_oam_fp32_common #(.LEVEL(2)) impl (x, y, result);
endmodule

module amlib_oam_l3_fp32_common (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    amlib_oam_fp32_common #(.LEVEL(3)) impl (x, y, result);
endmodule
