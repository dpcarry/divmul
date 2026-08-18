module oad_div_l4 (
    input wire clk, input wire [31:0] x, input wire [31:0] y,
    output wire [31:0] result
);
    oad_div_fixed #(.APPROX_LEVEL(4)) impl (
        .clk(clk), .x(x), .y(y), .result(result)
    );
endmodule
