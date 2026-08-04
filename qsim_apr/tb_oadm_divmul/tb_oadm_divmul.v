`timescale 1ns/1ps

module tb_oadm_divmul;
    reg        clk;
    reg [31:0] x;
    reg [31:0] y;
    reg [1:0]  level;
    reg        divide_mode;
    supply1 VDD;
    supply0 VSS;
    wire [31:0] result;

    integer failures;
    integer mode;
    integer lvl;
    integer sample;
    real xv;
    real yv;
    real expected;
    real actual;
    real rel_error;
    real tolerance;

    oadm_dm dut (
        .clk(clk),
        .x(x),
        .y(y),
        .level(level),
        .divide_mode(divide_mode),
        .result(result),
        .VDD(VDD),
        .VSS(VSS)
    );

    initial begin
        clk = 1'b0;
        forever #1 clk = ~clk;
    end

    function real abs_real;
        input real value;
        begin
            abs_real = (value < 0.0) ? -value : value;
        end
    endfunction

    function [31:0] fp32_from_unit_interval;
        input real value;
        integer fraction;
        begin
            if (value < 1.0) begin
                value = 1.0;
            end else if (value >= 2.0) begin
                value = 1.999999;
            end
            fraction = $rtoi((value - 1.0) * 8388608.0);
            fp32_from_unit_interval = {1'b0, 8'd127, fraction[22:0]};
        end
    endfunction

    function real fp32_to_real;
        input [31:0] bits;
        integer exponent;
        integer fraction;
        real mantissa;
        real scale;
        begin
            exponent = bits[30:23];
            fraction = bits[22:0];
            if (exponent == 0) begin
                fp32_to_real = 0.0;
            end else if (exponent == 255) begin
                fp32_to_real = 1.0e30;
            end else begin
                mantissa = 1.0 + ($itor(fraction) / 8388608.0);
                scale = 1.0;
                if (exponent >= 127) begin
                    repeat (exponent - 127) scale = scale * 2.0;
                end else begin
                    repeat (127 - exponent) scale = scale / 2.0;
                end
                fp32_to_real = bits[31] ? -(mantissa * scale)
                                        :  (mantissa * scale);
            end
        end
    endfunction

    task check_case;
        input real x_real;
        input real y_real;
        input integer requested_level;
        input requested_divide_mode;
        begin
            @(negedge clk);
            x = fp32_from_unit_interval(x_real);
            y = fp32_from_unit_interval(y_real);
            level = requested_level[1:0];
            divide_mode = requested_divide_mode;
            repeat (7) @(posedge clk);
            #0.4;

            expected = requested_divide_mode ? (x_real / y_real)
                                             : (x_real * y_real);
            actual = fp32_to_real(result);
            rel_error = abs_real(actual - expected) / expected;

            tolerance = (requested_level == 0) ? 0.40 :
                        (requested_level == 1) ? 0.18 :
                        (requested_level == 2) ? 0.10 : 0.06;

            if (rel_error > tolerance) begin
                $display(
                    "FAIL mode=%s level=%0d x=%f y=%f expected=%f actual=%f rel_error=%f",
                    requested_divide_mode ? "DIV" : "MUL",
                    requested_level, x_real, y_real, expected, actual, rel_error
                );
                failures = failures + 1;
            end
        end
    endtask

    initial begin
        failures = 0;
        $dumpfile("./oadm_dm_apr.vcd");
        $dumpvars(0, tb_oadm_divmul.dut);

        for (mode = 0; mode <= 1; mode = mode + 1) begin
            for (lvl = 0; lvl <= 3; lvl = lvl + 1) begin
                check_case(1.0,    1.0,    lvl, mode[0]);
                check_case(1.999,  1.999,  lvl, mode[0]);
                check_case(1.25,   1.75,   lvl, mode[0]);
                check_case(1.125,  1.875,  lvl, mode[0]);
                check_case(1.9375, 1.0625, lvl, mode[0]);

                for (sample = 0; sample < 1000; sample = sample + 1) begin
                    xv = 1.0 + ($itor($random & 23'h7fffff) / 8388608.0);
                    yv = 1.0 + ($itor($random & 23'h7fffff) / 8388608.0);
                    check_case(xv, yv, lvl, mode[0]);
                end
            end
        end

        if (failures != 0) begin
            $display("FAIL: %0d checks failed", failures);
            $finish;
        end
        $display("PASS: OADM post-layout simulation passed");
        $dumpall;
        $dumpflush;
        $finish;
    end
endmodule
