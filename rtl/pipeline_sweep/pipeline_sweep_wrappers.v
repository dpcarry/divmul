`define OADM_RUNTIME_WRAPPER(NAME, MASK) \
module NAME ( \
    input wire clk, input wire [31:0] x, input wire [31:0] y, \
    input wire [2:0] level, input wire divide_mode, output wire [31:0] result \
); \
    oadm_dm_pipe #(.PIPE_MASK(MASK)) impl ( \
        .clk(clk), .x(x), .y(y), .level(level), \
        .divide_mode(divide_mode), .result(result) \
    ); \
endmodule

`define OADM_FIXED_L4_WRAPPER(NAME, MASK) \
module NAME ( \
    input wire clk, input wire [31:0] x, input wire [31:0] y, \
    input wire divide_mode, output wire [31:0] result \
); \
    oadm_dm_fixed_pipe #(.APPROX_LEVEL(4), .PIPE_MASK(MASK)) impl ( \
        .clk(clk), .x(x), .y(y), .divide_mode(divide_mode), .result(result) \
    ); \
endmodule

`OADM_RUNTIME_WRAPPER(oadm_runtime_np, 7'h00)
`OADM_RUNTIME_WRAPPER(oadm_runtime_p2, 7'h44)
`OADM_RUNTIME_WRAPPER(oadm_runtime_p3, 7'h4a)
`OADM_RUNTIME_WRAPPER(oadm_runtime_p4, 7'h56)
`OADM_RUNTIME_WRAPPER(oadm_runtime_p5, 7'h5d)
`OADM_RUNTIME_WRAPPER(oadm_runtime_p6, 7'h5f)
`OADM_RUNTIME_WRAPPER(oadm_runtime_p7, 7'h7f)

`OADM_FIXED_L4_WRAPPER(oadm_fixed_l4_np, 7'h00)
`OADM_FIXED_L4_WRAPPER(oadm_fixed_l4_p2, 7'h44)
`OADM_FIXED_L4_WRAPPER(oadm_fixed_l4_p3, 7'h4a)
`OADM_FIXED_L4_WRAPPER(oadm_fixed_l4_p4, 7'h56)
`OADM_FIXED_L4_WRAPPER(oadm_fixed_l4_p5, 7'h5d)
`OADM_FIXED_L4_WRAPPER(oadm_fixed_l4_p6, 7'h5f)
`OADM_FIXED_L4_WRAPPER(oadm_fixed_l4_p7, 7'h7f)

`undef OADM_RUNTIME_WRAPPER
`undef OADM_FIXED_L4_WRAPPER
