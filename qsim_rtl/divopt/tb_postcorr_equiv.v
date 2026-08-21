`timescale 1ns/1ps

module tb_postcorr_equiv;
    reg [31:0] x;
    reg [31:0] y;
    wire [31:0] reference_result;
    wire [31:0] candidate_result;
    wire [31:0] paceio_reference_result;
    wire [31:0] paceio_candidate_result;
    integer i;
    integer failures;

    oadm_fixed_l3_div_opt_best2 reference_dut (
        .x(x), .y(y), .result(reference_result)
    );
    oadm_fixed_l3_div_opt_postcorr candidate_dut (
        .x(x), .y(y), .result(candidate_result)
    );
    oadm_fixed_l3_div_opt_paceio paceio_reference_dut (
        .x(x), .y(y), .result(paceio_reference_result)
    );
    oadm_fixed_l3_div_opt_postcorr_paceio paceio_candidate_dut (
        .x(x), .y(y), .result(paceio_candidate_result)
    );

    task check;
        input [31:0] tx;
        input [31:0] ty;
        begin
            x = tx;
            y = ty;
            #1;
            if ((candidate_result !== reference_result)
                    || (paceio_candidate_result !== paceio_reference_result)) begin
                failures = failures + 1;
                if (failures <= 10) begin
                    $display("FAIL x=%h y=%h full=%h/%h paceio=%h/%h",
                             x, y, reference_result, candidate_result,
                             paceio_reference_result, paceio_candidate_result);
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
            $fatal(1, "FAIL: %0d post-correction mismatches", failures);
        end
        $display("PASS: post-correction matched both wrappers on 100008 vectors");
        $finish;
    end
endmodule
