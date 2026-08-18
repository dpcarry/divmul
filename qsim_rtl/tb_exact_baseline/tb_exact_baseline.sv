`timescale 1ns/1ps

module tb_exact_baseline;
    reg clk = 1'b0;
    reg [31:0] x = 32'h3fc00000; // 1.5
    reg [31:0] y = 32'h40000000; // 2.0
    reg divide_mode = 1'b0;
    wire [31:0] result;

    exact_fp32_divmul_7stage dut (
        .clk(clk),
        .x(x),
        .y(y),
        .divide_mode(divide_mode),
        .result(result)
    );

    always #5 clk = ~clk;

    initial begin
        repeat (8) @(posedge clk);
        #1;
        if (result !== 32'h40400000) begin
            $fatal(1, "exact MUL mismatch: expected 3.0, got %h", result);
        end

        @(negedge clk);
        divide_mode = 1'b1;
        repeat (7) @(posedge clk);
        #1;
        if (result !== 32'h3f400000) begin
            $fatal(1, "exact DIV mismatch: expected 0.75, got %h", result);
        end

        $display("PASS: seven-stage exact DivMul data and mode alignment");
        $finish;
    end
endmodule
