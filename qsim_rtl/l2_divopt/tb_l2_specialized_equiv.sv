`timescale 1ns/1ps

module tb_l2_specialized_equiv;
    localparam integer RANDOM_CASES = 500000;
    reg [31:0] x;
    reg [31:0] y;
    wire [31:0] reference_result;
    wire [31:0] specialized_result;
    wire [31:0] unsigned_result;
    wire [31:0] shiftadd_result;
    wire [31:0] scale_shiftadd_result;
    wire [31:0] postcorr_result;
    wire [31:0] shiftadd_postcorr_result;
    wire [31:0] reduced_scale_result;
    wire [31:0] reduced_signed_scale_result;
    integer seed;
    integer i;
    integer ix;
    integer iy;
    integer edge_x;
    integer edge_y;
    integer mismatches;
    reg [22:0] x_fraction;
    reg [22:0] y_fraction;

    oadm_fixed_l2_div_paceio_opt reference (
        .x(x), .y(y), .result(reference_result)
    );
    oadm_fixed_l2_div_specialized_paceio specialized (
        .x(x), .y(y), .result(specialized_result)
    );
    oadm_fixed_l2_div_specialized_unsigned_paceio specialized_unsigned (
        .x(x), .y(y), .result(unsigned_result)
    );
    oadm_fixed_l2_div_specialized_shiftadd_paceio specialized_shiftadd (
        .x(x), .y(y), .result(shiftadd_result)
    );
    oadm_fixed_l2_div_specialized_scale_shiftadd_paceio specialized_scale_shiftadd (
        .x(x), .y(y), .result(scale_shiftadd_result)
    );
    oadm_fixed_l2_div_specialized_postcorr_paceio specialized_postcorr (
        .x(x), .y(y), .result(postcorr_result)
    );
    oadm_fixed_l2_div_specialized_shiftadd_postcorr_paceio specialized_shiftadd_postcorr (
        .x(x), .y(y), .result(shiftadd_postcorr_result)
    );
    oadm_fixed_l2_div_specialized_reduced_scale_paceio specialized_reduced_scale (
        .x(x), .y(y), .result(reduced_scale_result)
    );
    oadm_fixed_l2_div_specialized_reduced_signed_scale_paceio specialized_reduced_signed_scale (
        .x(x), .y(y), .result(reduced_signed_scale_result)
    );

    task check_outputs;
        begin
            #1;
            if ((specialized_result !== reference_result)
                    || (unsigned_result !== reference_result)
                    || (shiftadd_result !== reference_result)
                    || (scale_shiftadd_result !== reference_result)
                    || (postcorr_result !== reference_result)
                    || (shiftadd_postcorr_result !== reference_result)
                    || (reduced_scale_result !== reference_result)
                    || (reduced_signed_scale_result !== reference_result)) begin
                if (mismatches < 20) begin
                    $display("MISMATCH x=%h y=%h ref=%h spec=%h unsigned=%h term_sa=%h scale_sa=%h postcorr=%h both=%h reduced=%h reduced_signed=%h",
                        x, y, reference_result, specialized_result,
                        unsigned_result, shiftadd_result, scale_shiftadd_result,
                        postcorr_result, shiftadd_postcorr_result,
                        reduced_scale_result, reduced_signed_scale_result);
                end
                mismatches = mismatches + 1;
            end
            if (specialized.impl.core_value[28]
                    || specialized.impl.core_value[24]) begin
                $fatal(1, "L2 range violation core_value=%h x=%h y=%h",
                    specialized.impl.core_value, x, y);
            end
            if (specialized.impl.shared_value[28]
                    || (specialized.impl.shared_value[26:25] != 2'b00)) begin
                $fatal(1, "L2 plane-width violation shared_value=%h x=%h y=%h",
                    specialized.impl.shared_value, x, y);
            end
        end
    endtask

    initial begin
        seed = 6321;
        mismatches = 0;

        // Exercise every L2 cell at both interval edges.
        for (ix = 0; ix < 4; ix = ix + 1) begin
            for (iy = 0; iy < 4; iy = iy + 1) begin
                for (edge_x = 0; edge_x < 2; edge_x = edge_x + 1) begin
                    for (edge_y = 0; edge_y < 2; edge_y = edge_y + 1) begin
                        x_fraction = (ix << 21)
                                   | (edge_x ? 21'h1fffff : 21'h000000);
                        y_fraction = (iy << 21)
                                   | (edge_y ? 21'h1fffff : 21'h000000);
                        x = {1'b0, 8'h7f, x_fraction};
                        y = {1'b0, 8'h7f, y_fraction};
                        check_outputs();
                    end
                end
            end
        end

        for (i = 0; i < RANDOM_CASES; i = i + 1) begin
            x = {$random(seed) & 1'b1,
                 (($random(seed) & 8'hfd) + 1'b1),
                 $random(seed) & 23'h7fffff};
            y = {$random(seed) & 1'b1,
                 (($random(seed) & 8'hfd) + 1'b1),
                 $random(seed) & 23'h7fffff};
            check_outputs();
        end

        if (mismatches != 0) begin
            $fatal(1, "L2 specialized equivalence failed: %0d mismatches",
                mismatches);
        end
        $display("PASS: L2 specialized variants match reference on %0d vectors",
            RANDOM_CASES + 64);
        $finish;
    end
endmodule
