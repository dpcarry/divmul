// Paper-derived combinational FP32 divider baselines.
// Both designs use the same FP32 shell: flush subnormals, truncate results,
// and handle zero/Inf/NaN before the paper-specific mantissa approximation.

module paper_fp32_div_pack (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire signed [27:0] mantissa_q,
    output reg  [31:0] result
);
    localparam signed [27:0] ONE_Q = 28'sd8388608;
    localparam signed [27:0] TWO_Q = 28'sd16777216;
    localparam [31:0] QUIET_NAN = 32'h7fc00000;

    wire [7:0] ex = x[30:23];
    wire [7:0] ey = y[30:23];
    wire [22:0] fx = x[22:0];
    wire [22:0] fy = y[22:0];
    wire x_nan = (ex == 8'hff) && (fx != 0);
    wire y_nan = (ey == 8'hff) && (fy != 0);
    wire x_inf = (ex == 8'hff) && (fx == 0);
    wire y_inf = (ey == 8'hff) && (fy == 0);
    wire x_zero = (ex == 0);
    wire y_zero = (ey == 0);
    wire sign_out = x[31] ^ y[31];
    reg signed [9:0] exponent_q;
    reg signed [27:0] normalized_q;

    always @* begin
        if (x_nan || y_nan || (x_zero && y_zero) || (x_inf && y_inf)) begin
            result = QUIET_NAN;
        end else if (x_inf || y_zero) begin
            result = {sign_out, 8'hff, 23'b0};
        end else if (x_zero || y_inf) begin
            result = {sign_out, 31'b0};
        end else begin
            exponent_q = $signed({2'b0, ex}) - $signed({2'b0, ey}) + 10'sd127;
            normalized_q = mantissa_q;
            if (mantissa_q < ONE_Q) begin
                normalized_q = mantissa_q <<< 1;
                exponent_q = exponent_q - 1;
            end

            if (normalized_q <= 0 || exponent_q <= 0) begin
                result = {sign_out, 31'b0};
            end else if (exponent_q >= 255 || normalized_q >= TWO_Q) begin
                result = {sign_out, 8'hff, 23'b0};
            end else begin
                result = {sign_out, exponent_q[7:0], normalized_q[22:0]};
            end
        end
    end
endmodule

// Eq. (14) of Wu et al., TCAS-I 2024, eight piecewise-linear planes.
// MANTISSA_BITS selects the paper's 10-bit FP experiment or a full 23-bit
// mantissa evaluation with exactly the same plane coefficients.
module plsad_fp32_div #(
    parameter integer MANTISSA_BITS = 10
) (
    input wire [31:0] x,
    input wire [31:0] y,
    output wire [31:0] result
);
    localparam signed [27:0] ONE_Q = 28'sd8388608;
    wire [22:0] fx_full = x[22:0];
    wire [22:0] fy_full = y[22:0];
    wire [22:0] fx = (MANTISSA_BITS == 23) ? fx_full :
                     {fx_full[22 -: MANTISSA_BITS], {(23-MANTISSA_BITS){1'b0}}};
    wire [22:0] fy = (MANTISSA_BITS == 23) ? fy_full :
                     {fy_full[22 -: MANTISSA_BITS], {(23-MANTISSA_BITS){1'b0}}};
    reg signed [27:0] q;

    always @* begin
        case (fy[22:20])
            3'd0: q = ONE_Q + $signed({1'b0, fx})
                       - ($signed({1'b0, fy}) + ($signed({1'b0, fy}) >>> 2));
            3'd1: q = 28'sd8519680 + ($signed({1'b0, fx}) - ($signed({1'b0, fx}) >>> 3))
                       - $signed({1'b0, fy});
            3'd2: q = 28'sd9043968 + ($signed({1'b0, fx}) - ($signed({1'b0, fx}) >>> 2))
                       - $signed({1'b0, fy});
            3'd3: q = 28'sd7471104 + ($signed({1'b0, fx}) - ($signed({1'b0, fx}) >>> 2))
                       - ($signed({1'b0, fy}) >>> 1);
            3'd4: q = 28'sd7798784 + (($signed({1'b0, fx}) >>> 1) + ($signed({1'b0, fx}) >>> 3))
                       - ($signed({1'b0, fy}) >>> 1);
            3'd5: q = 28'sd7733248 + (($signed({1'b0, fx}) >>> 1) + ($signed({1'b0, fx}) >>> 3))
                       - ($signed({1'b0, fy}) >>> 1);
            3'd6: q = 28'sd7995392 + (($signed({1'b0, fx}) >>> 1) + ($signed({1'b0, fx}) >>> 4))
                       - ($signed({1'b0, fy}) >>> 1);
            default: q = 28'sd7340032 + ($signed({1'b0, fx}) >>> 1)
                       - (($signed({1'b0, fy}) >>> 1) - ($signed({1'b0, fy}) >>> 3));
        endcase
    end

    paper_fp32_div_pack pack (.x(x), .y(y), .mantissa_q(q), .result(result));
endmodule

// FaNZeD (Saadat et al., DAC 2019), Eq. (5) plus the FP-specific
// epsilon = 2^-5 + 2^-7. TRUNCATE_BITS implements FaNZeD-t.
module fanzed_fp32_div #(
    parameter integer TRUNCATE_BITS = 0,
    parameter signed [27:0] EPS_Q = 28'sd327680
) (
    input wire [31:0] x,
    input wire [31:0] y,
    output wire [31:0] result
);
    localparam signed [27:0] ONE_Q = 28'sd8388608;
    wire [22:0] fx = (TRUNCATE_BITS == 0) ? x[22:0] :
                     {x[22:TRUNCATE_BITS], {TRUNCATE_BITS{1'b0}}};
    wire [22:0] fy = (TRUNCATE_BITS == 0) ? y[22:0] :
                     {y[22:TRUNCATE_BITS], {TRUNCATE_BITS{1'b0}}};
    wire signed [27:0] difference = $signed({1'b0, fx}) - $signed({1'b0, fy});
    wire signed [27:0] q = (difference < 0)
        ? ONE_Q + (difference >>> 1) - EPS_Q
        : ONE_Q + difference - EPS_Q;

    paper_fp32_div_pack pack (.x(x), .y(y), .mantissa_q(q), .result(result));
endmodule

module plsad_fp32_div_10bit (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    plsad_fp32_div #(.MANTISSA_BITS(10)) impl (.x(x), .y(y), .result(result));
endmodule

module plsad_fp32_div_23bit (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    plsad_fp32_div #(.MANTISSA_BITS(23)) impl (.x(x), .y(y), .result(result));
endmodule

module fanzed_fp32_div_t0 (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    fanzed_fp32_div #(.TRUNCATE_BITS(0)) impl (.x(x), .y(y), .result(result));
endmodule

module fanzed_fp32_div_t15 (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] result
);
    fanzed_fp32_div #(.TRUNCATE_BITS(15)) impl (.x(x), .y(y), .result(result));
endmodule
