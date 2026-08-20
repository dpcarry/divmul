module oadm_dm_fixed_pipe #(
    parameter APPROX_LEVEL = 0,
    parameter [6:0] PIPE_MASK = 7'h7f
) (
    input  wire        clk,
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire        divide_mode,
    output wire [31:0] result
);
    oadm_dm_pipe #(.PIPE_MASK(PIPE_MASK)) impl (
        .clk(clk), .x(x), .y(y), .level(APPROX_LEVEL[1:0]),
        .divide_mode(divide_mode), .result(result)
    );
endmodule
