module oad_div_fixed #(
    parameter APPROX_LEVEL = 0
) (
    input  wire        clk,
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] result
);
    oadm_dm_fixed #(.APPROX_LEVEL(APPROX_LEVEL)) divider (
        .clk(clk),
        .x(x),
        .y(y),
        .divide_mode(1'b1),
        .result(result)
    );
endmodule
