`timescale 1ns/1ps

module tb_paceio_equiv;
    reg [31:0] x;
    reg [31:0] y;
    wire [31:0] reference_result;
    wire [31:0] candidate_result;
    integer i;
    integer failures;

    oadm_fixed_l3_div_nopipe reference_dut (
        .x(x), .y(y), .result(reference_result)
    );
    oadm_fixed_l3_div_opt_paceio candidate_dut (
        .x(x), .y(y), .result(candidate_result)
    );

    initial begin
        failures = 0;
        for (i = 0; i < 100000; i = i + 1) begin
            // This is the normal-input domain used by the PACE accuracy grid.
            x = $random;
            y = $random;
            x[30:23] = 8'd127;
            y[30:23] = 8'd127;
            #1;
            if (candidate_result !== reference_result) begin
                failures = failures + 1;
                if (failures <= 10) begin
                    $display("FAIL x=%h y=%h ref=%h candidate=%h",
                             x, y, reference_result, candidate_result);
                end
            end
        end
        if (failures != 0) begin
            $fatal(1, "FAIL: %0d normal-domain mismatches", failures);
        end
        $display("PASS: PACE-I/O candidate matched 100000 normal vectors");
        $finish;
    end
endmodule
