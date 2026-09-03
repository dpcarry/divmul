`timescale 1ns/1ps
module tb_simdive_original_fp32;
    localparam N = 10000;
    reg [31:0] x, y;
    reg divide_mode;
    wire [31:0] result;
    integer i, mode;
    integer mismatches;
    real sum_abs, sum_rel, sum_sq, exact_value, approx_value, error_value;

    simdive_original_fp32_wrapper dut (
        .x(x), .y(y), .divide_mode(divide_mode), .result(result)
    );

    function real fp32_value;
        input [31:0] value;
        integer exponent;
        real mantissa;
        begin
            exponent = value[30:23] - 127;
            mantissa = 1.0 + value[22:0] / 8388608.0;
            fp32_value = value[31] ? -mantissa * (2.0 ** exponent) : mantissa * (2.0 ** exponent);
        end
    endfunction

    task check_directed;
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
                mismatches = mismatches + 1;
            end
        end
    endtask

    initial begin
        mismatches = 0;
        check_directed(32'h3f800000, 32'h3f800000, 1'b0);
        check_directed(32'h3f800000, 32'h3f800000, 1'b1);
        check_directed(32'h3fc00000, 32'h3f900000, 1'b0);
        check_directed(32'h3fc00000, 32'h3f900000, 1'b1);
        check_directed(32'h40000000, 32'h3f800000, 1'b0);
        check_directed(32'h3f800000, 32'h40000000, 1'b1);

        for (mode = 0; mode < 2; mode = mode + 1) begin
            divide_mode = mode;
            sum_abs = 0.0;
            sum_rel = 0.0;
            sum_sq = 0.0;
            for (i = 0; i < N; i = i + 1) begin
                x = 32'h3f800000 | ($random & 23'h7fffff);
                y = 32'h3f800000 | ($random & 23'h7fffff);
                #1;
                exact_value = mode ? fp32_value(x) / fp32_value(y) : fp32_value(x) * fp32_value(y);
                approx_value = fp32_value(result);
                error_value = approx_value > exact_value ? approx_value - exact_value : exact_value - approx_value;
                sum_abs = sum_abs + error_value;
                sum_rel = sum_rel + error_value / exact_value;
                sum_sq = sum_sq + error_value * error_value;
            end
            $display("SIMDIVE_ORIGINAL_FP32 %s MAE=%f MRED=%f RMSE=%f", mode ? "DIV" : "MUL", sum_abs / N, sum_rel / N, $sqrt(sum_sq / N));
        end

        if (mismatches != 0)
            $fatal(1, "Directed checks failed: %0d", mismatches);
        $finish;
    end
endmodule
