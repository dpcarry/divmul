module oadm_dm_nopipe (
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire [2:0]  level,
    input  wire        divide_mode,
    output wire [31:0] result
);
    // PIPE_MASK=0 turns every logical cut into a wire. The constant clock is
    // structurally unused and disappears when the hierarchy is flattened.
    oadm_dm_pipe #(.PIPE_MASK(7'h00)) datapath (
        .clk(1'b0),
        .x(x),
        .y(y),
        .level(level),
        .divide_mode(divide_mode),
        .result(result)
    );
endmodule
