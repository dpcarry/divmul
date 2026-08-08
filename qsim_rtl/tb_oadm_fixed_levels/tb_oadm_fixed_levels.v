`timescale 1ns/1ps

module tb_oadm_fixed_levels;
    reg clk;
    reg [31:0] x;
    reg [31:0] y;
    reg divide_mode;
    integer cycle_count;
    integer error_count;

    wire [31:0] runtime_result [0:3];
    wire [31:0] fixed_result [0:4];

    oadm_dm runtime_l0 (.clk(clk), .x(x), .y(y), .level(2'd0),
        .divide_mode(divide_mode), .result(runtime_result[0]));
    oadm_dm runtime_l1 (.clk(clk), .x(x), .y(y), .level(2'd1),
        .divide_mode(divide_mode), .result(runtime_result[1]));
    oadm_dm runtime_l2 (.clk(clk), .x(x), .y(y), .level(2'd2),
        .divide_mode(divide_mode), .result(runtime_result[2]));
    oadm_dm runtime_l3 (.clk(clk), .x(x), .y(y), .level(2'd3),
        .divide_mode(divide_mode), .result(runtime_result[3]));

    oadm_dm_l0 fixed_l0 (.clk(clk), .x(x), .y(y),
        .divide_mode(divide_mode), .result(fixed_result[0]));
    oadm_dm_l1 fixed_l1 (.clk(clk), .x(x), .y(y),
        .divide_mode(divide_mode), .result(fixed_result[1]));
    oadm_dm_l2 fixed_l2 (.clk(clk), .x(x), .y(y),
        .divide_mode(divide_mode), .result(fixed_result[2]));
    oadm_dm_l3 fixed_l3 (.clk(clk), .x(x), .y(y),
        .divide_mode(divide_mode), .result(fixed_result[3]));
    oadm_dm_l4 fixed_l4 (.clk(clk), .x(x), .y(y),
        .divide_mode(divide_mode), .result(fixed_result[4]));

    always #1 clk = ~clk;

    integer level_index;
    always @(posedge clk) begin
        #0.01;
        cycle_count = cycle_count + 1;
        if (cycle_count > 8) begin
            for (level_index = 0; level_index < 4;
                 level_index = level_index + 1) begin
                if (fixed_result[level_index] !== runtime_result[level_index]) begin
                    $display("FAIL level=%0d fixed=%h runtime=%h cycle=%0d",
                        level_index, fixed_result[level_index],
                        runtime_result[level_index], cycle_count);
                    error_count = error_count + 1;
                end
            end
            if (^fixed_result[4] === 1'bx) begin
                $display("FAIL level=4 contains X/Z result=%h cycle=%0d",
                    fixed_result[4], cycle_count);
                error_count = error_count + 1;
            end
        end
    end

    initial begin
        clk = 1'b0;
        x = 32'h3f800000;
        y = 32'h3f800000;
        divide_mode = 1'b0;
        cycle_count = 0;
        error_count = 0;

        repeat (1000) begin
            @(negedge clk);
            x = {$random, $random};
            y = {$random, $random};
            // Keep randomized operands finite and normalized.
            x[30:23] = 8'd96 + ($random & 8'h3f);
            y[30:23] = 8'd96 + ($random & 8'h3f);
            divide_mode = $random;
        end

        repeat (10) @(negedge clk);
        if (error_count == 0)
            $display("PASS: fixed L0-L3 match runtime RTL; L4 has no X/Z");
        else
            $display("FAIL: %0d fixed-level mismatches", error_count);
        $finish;
    end
endmodule
