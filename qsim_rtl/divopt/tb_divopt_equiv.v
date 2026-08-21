`timescale 1ns/1ps

module tb_divopt_equiv;
    reg [31:0] x;
    reg [31:0] y;
    wire [31:0] reference_result;
    wire [31:0] optimized_result;
    wire [31:0] csd_result;
    wire [31:0] unsigned_result;
    wire [31:0] direct_exact_result;
    wire [31:0] best_result;
    wire [31:0] best2_result;
    wire [31:0] best3_result;
    wire [31:0] best4_result;
    integer i;
    integer failures;

    oadm_fixed_l3_div_nopipe reference_dut (
        .x(x), .y(y), .result(reference_result)
    );
    oadm_fixed_l3_div_opt optimized_dut (
        .x(x), .y(y), .result(optimized_result)
    );
    oadm_fixed_l3_div_opt_csd csd_dut (
        .x(x), .y(y), .result(csd_result)
    );
    oadm_fixed_l3_div_opt_unsigned unsigned_dut (
        .x(x), .y(y), .result(unsigned_result)
    );
    oadm_fixed_l3_div_opt_direct_exact direct_exact_dut (
        .x(x), .y(y), .result(direct_exact_result)
    );
    oadm_fixed_l3_div_opt_best best_dut (
        .x(x), .y(y), .result(best_result)
    );
    oadm_fixed_l3_div_opt_best2 best2_dut (
        .x(x), .y(y), .result(best2_result)
    );
    oadm_fixed_l3_div_opt_best3 best3_dut (
        .x(x), .y(y), .result(best3_result)
    );
    oadm_fixed_l3_div_opt_best4 best4_dut (
        .x(x), .y(y), .result(best4_result)
    );

    task check;
        input [31:0] tx;
        input [31:0] ty;
        begin
            x = tx;
            y = ty;
            #1;
            if (optimized_result !== reference_result) begin
                failures = failures + 1;
                if (failures <= 10) begin
                    $display("FAIL x=%h y=%h ref=%h opt=%h",
                             x, y, reference_result, optimized_result);
                end
            end
            if (csd_result !== reference_result) begin
                failures = failures + 1;
                if (failures <= 10) begin
                    $display("FAIL CSD x=%h y=%h ref=%h csd=%h",
                             x, y, reference_result, csd_result);
                end
            end
            if (unsigned_result !== reference_result) begin
                failures = failures + 1;
                if (failures <= 10) begin
                    $display("FAIL UNSIGNED x=%h y=%h ref=%h opt=%h plane=%h",
                             x, y, reference_result, unsigned_result,
                             unsigned_dut.impl.shared_value);
                end
            end
            if (direct_exact_result !== reference_result) begin
                failures = failures + 1;
                if (failures <= 10) begin
                    $display("FAIL DIRECT-EXACT x=%h y=%h ref=%h opt=%h",
                             x, y, reference_result, direct_exact_result);
                end
            end
            if (best_result !== reference_result) begin
                failures = failures + 1;
                if (failures <= 10) begin
                    $display("FAIL BEST x=%h y=%h ref=%h opt=%h core=%h",
                             x, y, reference_result, best_result,
                             best_dut.impl.core_value);
                end
            end
            if (best2_result !== reference_result) begin
                failures = failures + 1;
                if (failures <= 10) begin
                    $display("FAIL BEST2 x=%h y=%h ref=%h opt=%h core=%h",
                             x, y, reference_result, best2_result,
                             best2_dut.impl.core_value);
                end
            end
            if (best3_result !== reference_result) begin
                failures = failures + 1;
                if (failures <= 10) begin
                    $display("FAIL BEST3 x=%h y=%h ref=%h opt=%h core=%h",
                             x, y, reference_result, best3_result,
                             best3_dut.impl.core_value);
                end
            end
            if (best4_result !== reference_result) begin
                failures = failures + 1;
                if (failures <= 10) begin
                    $display("FAIL BEST4 x=%h y=%h ref=%h opt=%h plane=%h",
                             x, y, reference_result, best4_result,
                             best4_dut.impl.factored_exact_plane);
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

        if (failures == 0) begin
            $display("PASS: optimized fixed-L3 divider matched 100008 vectors");
        end else begin
            $display("FAIL: %0d mismatches", failures);
            $fatal(1);
        end
        $finish;
    end
endmodule
