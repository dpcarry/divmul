`timescale 1ns/1ps

module tb_centered_equiv;
    reg [31:0] x;
    reg [31:0] y;
    wire [31:0] reference_result;
    wire [31:0] candidate_result;
    integer i;
    integer failures;

    oadm_fixed_l3_div_opt_paceio reference_dut (
        .x(x), .y(y), .result(reference_result)
    );
    oadm_fixed_l3_div_opt_centered_paceio candidate_dut (
        .x(x), .y(y), .result(candidate_result)
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
                    $display("FAIL x=%h y=%h reference=%h candidate=%h",
                             x, y, reference_result, candidate_result);
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
            $fatal(1, "FAIL: %0d centered-plane mismatches", failures);
        end
        $display("PASS: centered plane matched on 100008 vectors");
        $finish;
    end
endmodule
