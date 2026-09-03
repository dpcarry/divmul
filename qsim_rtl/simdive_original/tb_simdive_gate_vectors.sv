`timescale 1ns/1ps

module tb_simdive_gate_vectors;
    localparam integer CASES = 20000;
    reg [96:0] vectors [0:CASES-1];
    reg [31:0] x;
    reg [31:0] y;
    reg divide_mode;
    reg [31:0] expected;
    wire [31:0] result;
    integer i;
    integer mismatches;

    simdive_original_fp32_wrapper_gate dut (
        .x(x), .y(y), .divide_mode(divide_mode), .result(result)
    );

    initial begin
        $readmemh(`VECTOR_FILE, vectors);
        mismatches = 0;
        for (i = 0; i < CASES; i = i + 1) begin
            {divide_mode, x, y, expected} = vectors[i];
            #1;
            if (result !== expected) begin
                if (mismatches < 10)
                    $display("MISMATCH i=%0d mode=%0d x=%h y=%h expected=%h gate=%h",
                             i, divide_mode, x, y, expected, result);
                mismatches = mismatches + 1;
            end
        end
        if (mismatches != 0)
            $fatal(1, "SIMDive canonical gate mismatch: %0d", mismatches);
        $display("SIMDIVE_CANONICAL_GATE_VECTOR_CHECK PASS: %0d vectors", CASES);
        $finish;
    end
endmodule
