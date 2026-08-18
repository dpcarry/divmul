module oadm_pipe_cut #(
    parameter WIDTH = 1,
    parameter REGISTERED = 0
) (
    input  wire             clk,
    input  wire [WIDTH-1:0] data_in,
    output wire [WIDTH-1:0] data_out
);
    generate
        if (REGISTERED) begin : gen_register
            reg [WIDTH-1:0] data_reg;
            always @(posedge clk) begin
                data_reg <= data_in;
            end
            assign data_out = data_reg;
        end else begin : gen_bypass
            assign data_out = data_in;
        end
    endgenerate
endmodule
