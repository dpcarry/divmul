// Isolated parameterized copy of the runtime datapath for drop sweeps.
// The production oadm_runtime_root_opt remains unchanged.
module oadm_runtime_drop_sweep #(
    parameter integer RESIDUAL_DROP = 10,
    parameter integer SCALE_DROP = 14
) (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire [1:0]  level,
    input  wire        divide_mode,
    output wire [31:0] result
);
    wire [22:0] x_fraction;
    wire [22:0] y_fraction;
    wire [23:0] x_mantissa = {1'b1, x_fraction};
    wire [23:0] y_mantissa = {1'b1, y_fraction};

    wire signed [28:0] plane_full;
    oadm_runtime_plane_pruned #(
        .RESIDUAL_DROP(RESIDUAL_DROP)
    ) plane (
        .x_mantissa(x_mantissa), .y_mantissa(y_mantissa),
        .level(level), .divide_mode(divide_mode), .plane_exact(plane_full)
    );
    wire [24:0] shared_value = plane_full[24:0];

    reg [6:0] coefficient;
    always @* begin
        case (level)
            2'd0: coefficient = 7'h39;
            2'd1: coefficient = y_mantissa[22] ? 7'h2a : 7'h52;
            2'd2: begin
                case (y_mantissa[22:21])
                    2'b00: coefficient = 7'h65;
                    2'b01: coefficient = 7'h44;
                    2'b10: coefficient = 7'h30;
                    default: coefficient = 7'h24;
                endcase
            end
            default: begin
                case (y_mantissa[22:20])
                    3'b000: coefficient = 7'h71;
                    3'b001: coefficient = 7'h5b;
                    3'b010: coefficient = 7'h4a;
                    3'b011: coefficient = 7'h3e;
                    3'b100: coefficient = 7'h34;
                    3'b101: coefficient = 7'h2d;
                    3'b110: coefficient = 7'h27;
                    default: coefficient = 7'h22;
                endcase
            end
        endcase
    end

    localparam integer SCALE_PRODUCT_WIDTH = 32 - SCALE_DROP;
    wire [SCALE_PRODUCT_WIDTH-1:0] reduced_scale_product =
        shared_value[24:SCALE_DROP] * coefficient;
    wire signed [28:0] divided_value =
        $signed({4'b0000, reduced_scale_product,
                 {(SCALE_DROP-7){1'b0}}});
    wire signed [28:0] core_value = divide_mode ? divided_value : plane_full;

    reg [22:0] normalized_fraction;
    reg signed [2:0] exponent_adjust;
    always @* begin
        normalized_fraction = core_value[22:0];
        exponent_adjust = 3'sd0;
        if (core_value[24]) begin
            normalized_fraction = core_value[23:1];
            exponent_adjust = 3'sd1;
        end else if (core_value[23]) begin
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
        .x(x), .y(y), .divide_mode(divide_mode),
        .fraction_x(x_fraction), .fraction_y(y_fraction),
        .result_fraction(normalized_fraction),
        .exponent_adjust(exponent_adjust), .result(result)
    );
endmodule

module oadm_runtime_drop_r10_s14 (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, input wire divide_mode,
    output wire [31:0] result
);
    oadm_runtime_drop_sweep #(
        .RESIDUAL_DROP(10), .SCALE_DROP(14)
    ) implementation (x, y, level, divide_mode, result);
endmodule


module oadm_runtime_drop_r10_s16 (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, input wire divide_mode,
    output wire [31:0] result
);
    oadm_runtime_drop_sweep #(
        .RESIDUAL_DROP(10), .SCALE_DROP(16)
    ) implementation (x, y, level, divide_mode, result);
endmodule


module oadm_runtime_drop_r10_s18 (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, input wire divide_mode,
    output wire [31:0] result
);
    oadm_runtime_drop_sweep #(
        .RESIDUAL_DROP(10), .SCALE_DROP(18)
    ) implementation (x, y, level, divide_mode, result);
endmodule


module oadm_runtime_drop_r12_s14 (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, input wire divide_mode,
    output wire [31:0] result
);
    oadm_runtime_drop_sweep #(
        .RESIDUAL_DROP(12), .SCALE_DROP(14)
    ) implementation (x, y, level, divide_mode, result);
endmodule


module oadm_runtime_drop_r12_s16 (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, input wire divide_mode,
    output wire [31:0] result
);
    oadm_runtime_drop_sweep #(
        .RESIDUAL_DROP(12), .SCALE_DROP(16)
    ) implementation (x, y, level, divide_mode, result);
endmodule


module oadm_runtime_drop_r12_s18 (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, input wire divide_mode,
    output wire [31:0] result
);
    oadm_runtime_drop_sweep #(
        .RESIDUAL_DROP(12), .SCALE_DROP(18)
    ) implementation (x, y, level, divide_mode, result);
endmodule


module oadm_runtime_drop_r14_s14 (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, input wire divide_mode,
    output wire [31:0] result
);
    oadm_runtime_drop_sweep #(
        .RESIDUAL_DROP(14), .SCALE_DROP(14)
    ) implementation (x, y, level, divide_mode, result);
endmodule


module oadm_runtime_drop_r14_s16 (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, input wire divide_mode,
    output wire [31:0] result
);
    oadm_runtime_drop_sweep #(
        .RESIDUAL_DROP(14), .SCALE_DROP(16)
    ) implementation (x, y, level, divide_mode, result);
endmodule


module oadm_runtime_drop_r14_s18 (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, input wire divide_mode,
    output wire [31:0] result
);
    oadm_runtime_drop_sweep #(
        .RESIDUAL_DROP(14), .SCALE_DROP(18)
    ) implementation (x, y, level, divide_mode, result);
endmodule


module oadm_runtime_drop_r16_s14 (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, input wire divide_mode,
    output wire [31:0] result
);
    oadm_runtime_drop_sweep #(
        .RESIDUAL_DROP(16), .SCALE_DROP(14)
    ) implementation (x, y, level, divide_mode, result);
endmodule


module oadm_runtime_drop_r16_s16 (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, input wire divide_mode,
    output wire [31:0] result
);
    oadm_runtime_drop_sweep #(
        .RESIDUAL_DROP(16), .SCALE_DROP(16)
    ) implementation (x, y, level, divide_mode, result);
endmodule


module oadm_runtime_drop_r16_s18 (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, input wire divide_mode,
    output wire [31:0] result
);
    oadm_runtime_drop_sweep #(
        .RESIDUAL_DROP(16), .SCALE_DROP(18)
    ) implementation (x, y, level, divide_mode, result);
endmodule


module oadm_runtime_drop_r18_s14 (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, input wire divide_mode,
    output wire [31:0] result
);
    oadm_runtime_drop_sweep #(
        .RESIDUAL_DROP(18), .SCALE_DROP(14)
    ) implementation (x, y, level, divide_mode, result);
endmodule


module oadm_runtime_drop_r18_s16 (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, input wire divide_mode,
    output wire [31:0] result
);
    oadm_runtime_drop_sweep #(
        .RESIDUAL_DROP(18), .SCALE_DROP(16)
    ) implementation (x, y, level, divide_mode, result);
endmodule


module oadm_runtime_drop_r18_s18 (
    input wire [31:0] x, input wire [31:0] y,
    input wire [1:0] level, input wire divide_mode,
    output wire [31:0] result
);
    oadm_runtime_drop_sweep #(
        .RESIDUAL_DROP(18), .SCALE_DROP(18)
    ) implementation (x, y, level, divide_mode, result);
endmodule

