module oadm_runtime_div_nopipe (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire [1:0]  level,
    output wire [31:0] result
);
    oadm_dm_pipe #(.PIPE_MASK(7'h00)) datapath (
        .clk(1'b0), .x(x), .y(y), .level(level),
        .divide_mode(1'b1), .result(result)
    );
endmodule

module oadm_runtime_mul_nopipe (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire [1:0]  level,
    output wire [31:0] result
);
    oadm_dm_pipe #(.PIPE_MASK(7'h00)) datapath (
        .clk(1'b0), .x(x), .y(y), .level(level),
        .divide_mode(1'b0), .result(result)
    );
endmodule
