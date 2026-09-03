`timescale 1ns/1ps
module tb_paper_fp32_dividers;
    localparam integer N = 100000;
    reg [31:0] x, y;
    wire [31:0] plsad10, plsad23, fanzed0, fanzed15, fanzed043;
    integer i;
    real exact_value, approx_value, abs_error, rel_error, sum_abs, sum_rel, sum_signed, sum_sq;

    plsad_fp32_div_10bit pls10 (.x(x), .y(y), .result(plsad10));
    plsad_fp32_div_23bit pls23 (.x(x), .y(y), .result(plsad23));
    fanzed_fp32_div_t0 fan0 (.x(x), .y(y), .result(fanzed0));
    fanzed_fp32_div_t15 fan15 (.x(x), .y(y), .result(fanzed15));
    // Diagnostic only: the continuous-domain epsilon reported in the paper.
    fanzed_fp32_div #(.TRUNCATE_BITS(0), .EPS_Q(28'sd360710))
        fan043 (.x(x), .y(y), .result(fanzed043));

    function real fp32_normal_value;
        input [31:0] value;
        integer exponent;
        real mantissa;
        begin
            exponent = value[30:23] - 127;
            mantissa = 1.0 + value[22:0] / 8388608.0;
            fp32_normal_value = value[31] ? -mantissa * (2.0 ** exponent)
                                          :  mantissa * (2.0 ** exponent);
        end
    endfunction

    task report_metrics;
        input [8*12-1:0] name;
        input integer implementation;
        begin
            sum_abs = 0.0;
            sum_rel = 0.0;
            sum_signed = 0.0;
            sum_sq = 0.0;
            for (i = 0; i < N; i = i + 1) begin
                x = 32'h3f800000 | ($random & 23'h7fffff);
                y = 32'h3f800000 | ($random & 23'h7fffff);
                #1;
                exact_value = fp32_normal_value(x) / fp32_normal_value(y);
                case (implementation)
                    0: approx_value = fp32_normal_value(plsad10);
                    1: approx_value = fp32_normal_value(plsad23);
                    2: approx_value = fp32_normal_value(fanzed0);
                    3: approx_value = fp32_normal_value(fanzed15);
                    default: approx_value = fp32_normal_value(fanzed043);
                endcase
                abs_error = (approx_value > exact_value) ? approx_value - exact_value
                                                          : exact_value - approx_value;
                rel_error = (approx_value - exact_value) / exact_value;
                sum_abs = sum_abs + abs_error;
                sum_rel = sum_rel + abs_error / exact_value;
                sum_signed = sum_signed + rel_error;
                sum_sq = sum_sq + abs_error * abs_error;
            end
            $display("%0s MAE=%f MRED=%f bias=%f RMSE=%f", name, sum_abs/N,
                     sum_rel/N, sum_signed/N, $sqrt(sum_sq/N));
        end
    endtask

    initial begin
        // All random operands are finite, normalized, and positive so the
        // reported error isolates each paper's mantissa approximation.
        report_metrics("PLSAD-10", 0);
        report_metrics("PLSAD-23", 1);
        report_metrics("FaNZeD-0", 2);
        report_metrics("FaNZeD-15", 3);
        report_metrics("FaNZeD-e043", 4);
        $finish;
    end
endmodule
