module oadm_dm_l3 (
    input wire clk, input wire [31:0] x, input wire [31:0] y,
    input wire divide_mode, output wire [31:0] result
);
    oadm_dm_fixed #(.APPROX_LEVEL(3)) impl (
        .clk(clk), .x(x), .y(y), .divide_mode(divide_mode), .result(result)
    );
endmodule
