`timescale 1ns/1ps

module tb_best4_equiv;
    reg [31:0] x;
    reg [31:0] y;
    wire [31:0] reference_result;
    wire [31:0] candidate_result;
    wire [31:0] candidate5_result;
    integer i;
    integer failures;

    oadm_fixed_l3_div_nopipe reference_dut (
        .x(x), .y(y), .result(reference_result)
    );
    oadm_fixed_l3_div_opt_best4 candidate_dut (
        .x(x), .y(y), .result(candidate_result)
    );
    oadm_fixed_l3_div_opt_best5 candidate5_dut (
        .x(x), .y(y), .result(candidate5_result)
    );

    task check;
        input [31:0] tx;
        input [31:0] ty;
        begin
            x = tx;
            y = ty;
            #1;
            if (candidate_result !== reference_result) begin
                failures = failures + 1;
                if (failures <= 10) begin
                    $display("FAIL x=%h y=%h ref=%h candidate=%h plane=%h",
                             x, y, reference_result, candidate_result,
                             candidate_dut.impl.factored_exact_plane);
                end
            end
            if (candidate5_result !== reference_result) begin
                failures = failures + 1;
                if (failures <= 10) begin
                    $display("FAIL BEST5 x=%h y=%h ref=%h candidate=%h",
                             x, y, reference_result, candidate5_result);
                end
            end
        end
    endtask

    initial begin
        failures = 0;
        check(32'h3f800000, 32'h3f800000);
        check(32'h40000000, 32'h3f000000);
        check(32'h00000000, 32'h00000000);
        check(32'h7f800000, 32'h7f800000);
        check(32'h7fc00001, 32'h3f800000);
        check(32'h3f800000, 32'h00000000);
        check(32'h00000001, 32'h3f800000);
        check(32'h7f7fffff, 32'h00800000);
        for (i = 0; i < 100000; i = i + 1) begin
            check($random, $random);
        end

        if (failures != 0) begin
            $fatal(1, "FAIL: %0d mismatches", failures);
        end
        $display("PASS: best4 matched original on 100008 vectors");
        $finish;
    end
endmodule
