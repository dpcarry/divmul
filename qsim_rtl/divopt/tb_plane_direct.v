`timescale 1ns/1ps

module tb_plane_direct;
    reg [31:0] x;
    reg [31:0] y;
    wire [31:0] ignored_result;
    wire signed [28:0] separate_plane;
    wire signed [28:0] combined_plane;
    wire signed [28:0] exact_plane;
    integer i;
    integer separate_failures;
    integer combined_failures;
    integer exact_failures;

    oadm_fixed_l3_div_nopipe reference_dut (
        .x(x), .y(y), .result(ignored_result)
    );
    oadm_l3_plane_direct direct (
        .x_mantissa({1'b1, x[22:0]}),
        .y_mantissa({1'b1, y[22:0]}),
        .plane_separate_shift(separate_plane),
        .plane_combined_shift(combined_plane),
        .plane_exact(exact_plane)
    );

    initial begin
        separate_failures = 0;
        combined_failures = 0;
        exact_failures = 0;
        for (i = 0; i < 100000; i = i + 1) begin
            x = $random;
            y = $random;
            #1;
            if (separate_plane !== reference_dut.datapath.shared_4) begin
                separate_failures = separate_failures + 1;
                if (separate_failures <= 5) begin
                    $display("SEP x=%h y=%h ref=%0d direct=%0d delta=%0d",
                             x, y, reference_dut.datapath.shared_4,
                             separate_plane,
                             separate_plane-reference_dut.datapath.shared_4);
                end
            end
            if (combined_plane !== reference_dut.datapath.shared_4) begin
                combined_failures = combined_failures + 1;
            end
            if (exact_plane !== reference_dut.datapath.shared_4) begin
                exact_failures = exact_failures + 1;
            end
        end
        $display("Eq.6 direct-plane mismatches: separate=%0d combined=%0d exact=%0d",
                 separate_failures, combined_failures, exact_failures);
        $finish;
    end
endmodule
