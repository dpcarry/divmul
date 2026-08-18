module oadm_dm_eq_l1(input wire clk, input wire [31:0] x, input wire [31:0] y,
    input wire divide_mode, output wire [31:0] result);
    oadm_dm_eq1011 #(.APPROX_LEVEL(1)) impl (.clk(clk), .x(x), .y(y),
        .divide_mode(divide_mode), .result(result));
endmodule
