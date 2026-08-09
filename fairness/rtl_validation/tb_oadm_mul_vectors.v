`timescale 1ns/1ps

module tb_oadm_mul_vectors;
    reg clk;
    reg [31:0] x;
    reg [31:0] y;
    reg [1:0] level;
    reg divide_mode;
    wire [31:0] result;
    integer vectors;
    integer status;
    integer index;

    oadm_dm dut (
        .clk(clk),
        .x(x),
        .y(y),
        .level(level),
        .divide_mode(divide_mode),
        .result(result)
    );

    initial clk = 1'b0;
    always #1 clk = ~clk;

    initial begin
        x = 32'h3f800000;
        y = 32'h3f800000;
        level = 2'd0;
        divide_mode = 1'b0;
        index = 0;
        vectors = $fopen("vectors.txt", "r");
        if (vectors == 0) begin
            $fatal(1, "cannot open vectors.txt");
        end

        while (!$feof(vectors)) begin
            @(negedge clk);
            status = $fscanf(vectors, "%h %h %d %d\n",
                             x, y, level, divide_mode);
            if (status == 4) begin
                repeat (7) @(posedge clk);
                #0.001;
                $display("RESULT %0d %08h", index, result);
                index = index + 1;
            end
        end
        $fclose(vectors);
        $finish;
    end
endmodule
