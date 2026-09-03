`timescale 1ns/1ps

module tb_simdive_original_fp32_gate_sanity;
    reg [31:0] x;
    reg [31:0] y;
    reg divide_mode;
    wire [31:0] result;
    integer failures;

    simdive_original_fp32_wrapper dut (
        .x(x), .y(y), .divide_mode(divide_mode), .result(result)
    );

    task check_normal;
        input [31:0] left;
        input [31:0] right;
        input operation;
        begin
            x = left;
            y = right;
            divide_mode = operation;
            #1;
            if ((^result) === 1'bx) begin
                $display("FAIL X output mode=%0d x=%h y=%h", operation, left, right);
                failures = failures + 1;
            end
        end
    endtask

    initial begin
        failures = 0;
        check_normal(32'h3f800000, 32'h3f800000, 1'b0);
        check_normal(32'h3f800000, 32'h3f800000, 1'b1);
        check_normal(32'h3fc00000, 32'h3f900000, 1'b0);
        check_normal(32'h3fc00000, 32'h3f900000, 1'b1);
        check_normal(32'h40000000, 32'h3f800000, 1'b0);
        check_normal(32'h3f800000, 32'h40000000, 1'b1);
        if (failures != 0)
            $fatal(1, "Gate sanity failed: %0d X outputs", failures);
        $display("SIMDIVE_ORIGINAL_FP32_GATE_SANITY PASS");
        $finish;
    end
endmodule
