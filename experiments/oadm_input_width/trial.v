module oadm_input_trial #(
    parameter integer B = 8, NARROW = 0,
    parameter integer LEVEL = 0,
    parameter integer RESIDUAL_DROP = 18,
    parameter integer WN_DROP = 18,
    parameter integer COEFFICIENT_BITS = 7,
    parameter [7:0] C0 = 8'd59,
    parameter [7:0] C1 = 8'd0,
    parameter [7:0] C2 = 8'd0,
    parameter [7:0] C3 = 8'd0,
    parameter [7:0] C4 = 8'd0,
    parameter [7:0] C5 = 8'd0,
    parameter [7:0] C6 = 8'd0,
    parameter [7:0] C7 = 8'd0
) (
    input wire [31:0] x,
    input wire [31:0] y,
    output wire [31:0] result
);
    wire [22:0] x_fraction;
    wire [22:0] y_fraction;
    wire [23:0] x_mantissa = {1'b1, x_fraction[22 -: B], {(23-B){1'b0}}};
    wire [23:0] y_mantissa = {1'b1, y_fraction[22 -: B], {(23-B){1'b0}}};
    wire signed [28:0] plane_full;

    generate if (NARROW) begin : narrow
        wire [24:0] compact_plane;
        oadm_input_narrow_plane #(.B(B), .LEVEL(LEVEL), .R(RESIDUAL_DROP))
            plane(x_fraction[22 -: B], y_fraction[22 -: B], compact_plane);
        assign plane_full = {4'b0, compact_plane};
    end else begin : mask_only
    oadm_fixed_div_specialized_plane #(
        .LEVEL(LEVEL), .RESIDUAL_DROP(RESIDUAL_DROP)
    ) plane (
        .x_mantissa(x_mantissa), .y_mantissa(y_mantissa),
        .plane_exact(plane_full)
    );

    end endgenerate

    reg [COEFFICIENT_BITS-1:0] coefficient;
    always @* begin
        if (LEVEL == 0)
            coefficient = C0[COEFFICIENT_BITS-1:0];
        else if (LEVEL == 1)
            coefficient = y_mantissa[22]
                ? C1[COEFFICIENT_BITS-1:0] : C0[COEFFICIENT_BITS-1:0];
        else if (LEVEL == 2) begin
            case (y_mantissa[22:21])
                2'b00: coefficient = C0[COEFFICIENT_BITS-1:0];
                2'b01: coefficient = C1[COEFFICIENT_BITS-1:0];
                2'b10: coefficient = C2[COEFFICIENT_BITS-1:0];
                default: coefficient = C3[COEFFICIENT_BITS-1:0];
            endcase
        end else begin
            case (y_mantissa[22:20])
                3'b000: coefficient = C0[COEFFICIENT_BITS-1:0];
                3'b001: coefficient = C1[COEFFICIENT_BITS-1:0];
                3'b010: coefficient = C2[COEFFICIENT_BITS-1:0];
                3'b011: coefficient = C3[COEFFICIENT_BITS-1:0];
                3'b100: coefficient = C4[COEFFICIENT_BITS-1:0];
                3'b101: coefficient = C5[COEFFICIENT_BITS-1:0];
                3'b110: coefficient = C6[COEFFICIENT_BITS-1:0];
                default: coefficient = C7[COEFFICIENT_BITS-1:0];
            endcase
        end
    end

    wire [24-WN_DROP+COEFFICIENT_BITS:0] reduced_scale_product =
        plane_full[24:WN_DROP] * coefficient;
    wire signed [28:0] core_value =
        $signed({4'b0000, reduced_scale_product,
                 {(WN_DROP-COEFFICIENT_BITS){1'b0}}});

    reg [22:0] normalized_fraction;
    reg signed [2:0] exponent_adjust;
    always @* begin
        normalized_fraction = core_value[22:0];
        exponent_adjust = 3'sd0;
        if (core_value[23]) begin
            normalized_fraction = core_value[22:0];
        end else if (core_value[22]) begin
            normalized_fraction = {core_value[21:0], 1'b0};
            exponent_adjust = -3'sd1;
        end else begin
            normalized_fraction = {core_value[20:0], 2'b0};
            exponent_adjust = -3'sd2;
        end
    end

    fp32_normal_finite_wrapper fp_wrapper (
        .x(x), .y(y), .divide_mode(1'b1),
        .fraction_x(x_fraction), .fraction_y(y_fraction),
        .result_fraction(normalized_fraction),
        .exponent_adjust(exponent_adjust), .result(result)
    );
endmodule


