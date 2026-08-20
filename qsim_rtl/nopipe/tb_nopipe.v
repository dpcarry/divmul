`timescale 1ns/1ps

module tb_nopipe;
    reg  [31:0] x;
    reg  [31:0] y;
    reg  [2:0]  level;
    reg         divide_mode;
    wire [31:0] result;
    wire [31:0] reference_result;
    integer i;

    oadm_dm_nopipe dut (
        .x(x), .y(y), .level(level),
        .divide_mode(divide_mode), .result(result)
    );

    oadm_dm_pipe #(.PIPE_MASK(7'h00)) reference (
        .clk(1'b0), .x(x), .y(y), .level(level),
        .divide_mode(divide_mode), .result(reference_result)
    );

    initial begin
        x = 0;
        y = 0;
        level = 0;
        divide_mode = 0;
        for (i = 0; i < 1000; i = i + 1) begin
            x = $random;
            y = $random;
            level = i % 5;
            divide_mode = i[0];
            #1;
            if (result !== reference_result) begin
                $display("FAIL i=%0d x=%h y=%h level=%0d mode=%0d got=%h expected=%h",
                         i, x, y, level, divide_mode, result, reference_result);
                $finish;
            end
        end
        $display("PASS: no-pipeline wrapper matched 1000 vectors");
        $finish;
    end
endmodule
