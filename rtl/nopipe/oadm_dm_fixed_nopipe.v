module oadm_dm_fixed_nopipe #(
    parameter APPROX_LEVEL = 0
) (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire        divide_mode,
    output wire [31:0] result
);
    oadm_dm_pipe #(.PIPE_MASK(7'h00)) datapath (
        .clk(1'b0),
        .x(x),
        .y(y),
        .level(APPROX_LEVEL[2:0]),
        .divide_mode(divide_mode),
        .result(result)
    );
endmodule

module oadm_fixed_l0_nopipe (
    input wire [31:0] x, input wire [31:0] y,
    input wire divide_mode, output wire [31:0] result
);
    oadm_dm_fixed_nopipe #(.APPROX_LEVEL(0)) impl (x, y, divide_mode, result);
endmodule

module oadm_fixed_l1_nopipe (
    input wire [31:0] x, input wire [31:0] y,
    input wire divide_mode, output wire [31:0] result
);
    oadm_dm_fixed_nopipe #(.APPROX_LEVEL(1)) impl (x, y, divide_mode, result);
endmodule

module oadm_fixed_l2_nopipe (
    input wire [31:0] x, input wire [31:0] y,
    input wire divide_mode, output wire [31:0] result
);
    oadm_dm_fixed_nopipe #(.APPROX_LEVEL(2)) impl (x, y, divide_mode, result);
endmodule

module oadm_fixed_l3_nopipe (
    input wire [31:0] x, input wire [31:0] y,
    input wire divide_mode, output wire [31:0] result
);
    oadm_dm_fixed_nopipe #(.APPROX_LEVEL(3)) impl (x, y, divide_mode, result);
endmodule

module oadm_fixed_l4_nopipe (
    input wire [31:0] x, input wire [31:0] y,
    input wire divide_mode, output wire [31:0] result
);
    oadm_dm_fixed_nopipe #(.APPROX_LEVEL(4)) impl (x, y, divide_mode, result);
endmodule
