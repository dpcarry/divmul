`timescale 1ns/1ps

module tb_pace;
    parameter LEVEL = 1;
    parameter CASES = 10000;

    reg [31:0] x;
    reg [31:0] y;
    wire [31:0] out;

    integer i;
    integer failures;
    real x_real;
    real y_real;
    real expected;
    real actual;
    real abs_error;
    real rel_error;
    real sum_abs;
    real sum_rel;
    real sum_sq;

    generate
        if (LEVEL == 1) begin : gen_l1
            pace_fp32_l1 dut (.x(x), .y(y), .out(out));
        end else if (LEVEL == 2) begin : gen_l2
            pace_fp32_l2 dut (.x(x), .y(y), .out(out));
        end else if (LEVEL == 3) begin : gen_l3
            pace_fp32_l3 dut (.x(x), .y(y), .out(out));
        end else begin : gen_l4
            pace_fp32_l4 dut (.x(x), .y(y), .out(out));
        end
    endgenerate

    function real fp32_to_real;
        input [31:0] bits;
        integer exponent;
        real mantissa;
        begin
            exponent = bits[30:23] - 127;
            mantissa = 1.0 + (bits[22:0] / 8388608.0);
            fp32_to_real = bits[31] ? -mantissa * (2.0 ** exponent)
                                     :  mantissa * (2.0 ** exponent);
        end
    endfunction

    initial begin
        failures = 0;
        sum_abs = 0.0;
        sum_rel = 0.0;
        sum_sq = 0.0;

        // The published accuracy domain uses normalized positive mantissas.
        for (i = 0; i < CASES; i = i + 1) begin
            x = 32'h3f800000 | ($urandom & 32'h007fffff);
            y = 32'h3f800000 | ($urandom & 32'h007fffff);
            #1;
            if (^out === 1'bx) begin
                failures = failures + 1;
            end else begin
                x_real = fp32_to_real(x);
                y_real = fp32_to_real(y);
                expected = x_real / y_real;
                actual = fp32_to_real(out);
                abs_error = (actual > expected) ? actual - expected
                                                : expected - actual;
                rel_error = abs_error / expected;
                sum_abs = sum_abs + abs_error;
                sum_rel = sum_rel + rel_error;
                sum_sq = sum_sq + abs_error * abs_error;
            end
        end

        $display("PACE RTL L%0d cases=%0d xz_failures=%0d MAE=%0.9f MRED=%0.9f RMSE=%0.9f",
                 LEVEL, CASES, failures, sum_abs / CASES, sum_rel / CASES,
                 $sqrt(sum_sq / CASES));
        if (failures != 0) begin
            $fatal(1, "PACE RTL produced X/Z outputs");
        end
        $finish;
    end
endmodule
