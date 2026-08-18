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

`define OADM_FIXED_WRAPPER(NAME, LEVEL, MASK) \
module NAME ( \
    input wire clk, input wire [31:0] x, input wire [31:0] y, \
    input wire divide_mode, output wire [31:0] result \
); \
    oadm_dm_fixed_pipe #(.APPROX_LEVEL(LEVEL), .PIPE_MASK(MASK)) impl ( \
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

`OADM_FIXED_WRAPPER(oadm_fixed_l0_np, 0, 7'h00)
`OADM_FIXED_WRAPPER(oadm_fixed_l0_p2, 0, 7'h44)
`OADM_FIXED_WRAPPER(oadm_fixed_l0_p3, 0, 7'h4a)
`OADM_FIXED_WRAPPER(oadm_fixed_l0_p4, 0, 7'h56)
`OADM_FIXED_WRAPPER(oadm_fixed_l0_p5, 0, 7'h5d)
`OADM_FIXED_WRAPPER(oadm_fixed_l0_p6, 0, 7'h5f)
`OADM_FIXED_WRAPPER(oadm_fixed_l0_p7, 0, 7'h7f)

`OADM_FIXED_WRAPPER(oadm_fixed_l1_np, 1, 7'h00)
`OADM_FIXED_WRAPPER(oadm_fixed_l1_p2, 1, 7'h44)
`OADM_FIXED_WRAPPER(oadm_fixed_l1_p3, 1, 7'h4a)
`OADM_FIXED_WRAPPER(oadm_fixed_l1_p4, 1, 7'h56)
`OADM_FIXED_WRAPPER(oadm_fixed_l1_p5, 1, 7'h5d)
`OADM_FIXED_WRAPPER(oadm_fixed_l1_p6, 1, 7'h5f)
`OADM_FIXED_WRAPPER(oadm_fixed_l1_p7, 1, 7'h7f)

`OADM_FIXED_WRAPPER(oadm_fixed_l2_np, 2, 7'h00)
`OADM_FIXED_WRAPPER(oadm_fixed_l2_p2, 2, 7'h44)
`OADM_FIXED_WRAPPER(oadm_fixed_l2_p3, 2, 7'h4a)
`OADM_FIXED_WRAPPER(oadm_fixed_l2_p4, 2, 7'h56)
`OADM_FIXED_WRAPPER(oadm_fixed_l2_p5, 2, 7'h5d)
`OADM_FIXED_WRAPPER(oadm_fixed_l2_p6, 2, 7'h5f)
`OADM_FIXED_WRAPPER(oadm_fixed_l2_p7, 2, 7'h7f)

`OADM_FIXED_WRAPPER(oadm_fixed_l3_np, 3, 7'h00)
`OADM_FIXED_WRAPPER(oadm_fixed_l3_p2, 3, 7'h44)
`OADM_FIXED_WRAPPER(oadm_fixed_l3_p3, 3, 7'h4a)
`OADM_FIXED_WRAPPER(oadm_fixed_l3_p4, 3, 7'h56)
`OADM_FIXED_WRAPPER(oadm_fixed_l3_p5, 3, 7'h5d)
`OADM_FIXED_WRAPPER(oadm_fixed_l3_p6, 3, 7'h5f)
`OADM_FIXED_WRAPPER(oadm_fixed_l3_p7, 3, 7'h7f)

`OADM_FIXED_WRAPPER(oadm_fixed_l4_np, 4, 7'h00)
`OADM_FIXED_WRAPPER(oadm_fixed_l4_p2, 4, 7'h44)
`OADM_FIXED_WRAPPER(oadm_fixed_l4_p3, 4, 7'h4a)
`OADM_FIXED_WRAPPER(oadm_fixed_l4_p4, 4, 7'h56)
`OADM_FIXED_WRAPPER(oadm_fixed_l4_p5, 4, 7'h5d)
`OADM_FIXED_WRAPPER(oadm_fixed_l4_p6, 4, 7'h5f)
`OADM_FIXED_WRAPPER(oadm_fixed_l4_p7, 4, 7'h7f)

`undef OADM_RUNTIME_WRAPPER
`undef OADM_FIXED_WRAPPER
