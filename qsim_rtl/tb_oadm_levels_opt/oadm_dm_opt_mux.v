module oadm_dm (
    input  wire        clk,
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire [1:0]  level,
    input  wire        divide_mode,
    output reg  [31:0] result
);
    wire [31:0] result_l0;
    wire [31:0] result_l1;
    wire [31:0] result_l2;
    wire [31:0] result_l3;

    oadm_dm_eq_l0 l0 (.clk(clk), .x(x), .y(y),
        .divide_mode(divide_mode), .result(result_l0));
    oadm_dm_eq_l1 l1 (.clk(clk), .x(x), .y(y),
        .divide_mode(divide_mode), .result(result_l1));
    oadm_dm_eq_l2 l2 (.clk(clk), .x(x), .y(y),
        .divide_mode(divide_mode), .result(result_l2));
    oadm_dm_eq_l3 l3 (.clk(clk), .x(x), .y(y),
        .divide_mode(divide_mode), .result(result_l3));

    always @* begin
        case (level)
            2'd0: result = result_l0;
            2'd1: result = result_l1;
            2'd2: result = result_l2;
            default: result = result_l3;
        endcase
    end
endmodule
