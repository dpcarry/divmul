module oadm_core_fixed #(
    parameter APPROX_LEVEL = 0
) (
    input  wire        clk,
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    input  wire        divide_mode,
    output reg signed [28:0] mantissa_value
);
    localparam INPUT_WIDTH = 24;
    localparam CORE_WIDTH = 29;
    localparam signed [CORE_WIDTH-1:0] ONE_Q = 29'sd8388608;
    localparam signed [CORE_WIDTH-1:0] MIDPOINT_Q = 29'sd12582912;
    localparam signed [CORE_WIDTH-1:0] TWO_POINT_TWO_FIVE_Q = 29'sd18874368;

    wire signed [CORE_WIDTH-1:0] x_input =
        $signed({{(CORE_WIDTH-INPUT_WIDTH){1'b0}}, x_mantissa});
    wire signed [CORE_WIDTH-1:0] y_input =
        $signed({{(CORE_WIDTH-INPUT_WIDTH){1'b0}}, y_mantissa});
    wire [3:0] y_index_input = y_mantissa[22:19];

    reg signed [CORE_WIDTH-1:0] base_c1;
    reg signed [CORE_WIDTH-1:0] d1_c1;
    reg signed [CORE_WIDTH-1:0] mx_c1;
    reg signed [CORE_WIDTH-1:0] my_c1;
    reg signed [CORE_WIDTH-1:0] raw1_c1;
    reg signed [CORE_WIDTH-1:0] raw2_c1;
    reg signed [CORE_WIDTH-1:0] term1_c1;
    reg signed [CORE_WIDTH-1:0] term2_c1;
    reg signed [CORE_WIDTH-1:0] term3_c1;

    reg signed [CORE_WIDTH-1:0] base_s1;
    reg signed [CORE_WIDTH-1:0] d1_s1;
    reg signed [CORE_WIDTH-1:0] mx_s1;
    reg signed [CORE_WIDTH-1:0] my_s1;
    reg signed [CORE_WIDTH-1:0] x_s1;
    reg signed [CORE_WIDTH-1:0] y_s1;
    reg [3:0] y_index_s1;
    reg divide_s1;

    always @* begin
        if (divide_mode) begin
            base_c1 = TWO_POINT_TWO_FIVE_Q + x_input + (x_input >>> 1)
                    - y_input - (y_input >>> 1);
            raw1_c1 = x_input + MIDPOINT_Q;
            raw2_c1 = MIDPOINT_Q - y_input;
            term3_c1 = (x_mantissa[22] == y_mantissa[22])
                     ? (ONE_Q >>> 4) : -(ONE_Q >>> 4);
        end else begin
            base_c1 = -TWO_POINT_TWO_FIVE_Q + x_input + (x_input >>> 1)
                    + y_input + (y_input >>> 1);
            raw1_c1 = x_input - MIDPOINT_Q;
            raw2_c1 = y_input - MIDPOINT_Q;
            term3_c1 = (x_mantissa[22] != y_mantissa[22])
                     ? (ONE_Q >>> 4) : -(ONE_Q >>> 4);
        end
        term1_c1 = (y_mantissa[22] ? raw1_c1 : -raw1_c1) >>> 2;
        term2_c1 = (x_mantissa[22] ? raw2_c1 : -raw2_c1) >>> 2;
        d1_c1 = term1_c1 + term2_c1 + term3_c1;
        mx_c1 = x_mantissa[22]
              ? MIDPOINT_Q + (ONE_Q >>> 2) : MIDPOINT_Q - (ONE_Q >>> 2);
        my_c1 = y_mantissa[22]
              ? MIDPOINT_Q + (ONE_Q >>> 2) : MIDPOINT_Q - (ONE_Q >>> 2);
    end

    always @(posedge clk) begin
        base_s1 <= base_c1;
        d1_s1 <= d1_c1;
        mx_s1 <= mx_c1;
        my_s1 <= my_c1;
        x_s1 <= x_input;
        y_s1 <= y_input;
        y_index_s1 <= y_index_input;
        divide_s1 <= divide_mode;
    end

    reg signed [CORE_WIDTH-1:0] d2_c2;
    reg signed [CORE_WIDTH-1:0] mx_c2;
    reg signed [CORE_WIDTH-1:0] my_c2;
    reg signed [CORE_WIDTH-1:0] raw1_c2;
    reg signed [CORE_WIDTH-1:0] raw2_c2;
    reg signed [CORE_WIDTH-1:0] term1_c2;
    reg signed [CORE_WIDTH-1:0] term2_c2;
    reg signed [CORE_WIDTH-1:0] term3_c2;

    reg signed [CORE_WIDTH-1:0] base_s2;
    reg signed [CORE_WIDTH-1:0] d1_s2;
    reg signed [CORE_WIDTH-1:0] d2_s2;
    reg signed [CORE_WIDTH-1:0] mx_s2;
    reg signed [CORE_WIDTH-1:0] my_s2;
    reg signed [CORE_WIDTH-1:0] x_s2;
    reg signed [CORE_WIDTH-1:0] y_s2;
    reg [3:0] y_index_s2;
    reg divide_s2;

    always @* begin
        if (divide_s1) begin
            raw1_c2 = x_s1 + mx_s1;
            raw2_c2 = my_s1 - y_s1;
            term3_c2 = (x_s1[21] == y_s1[21])
                     ? (ONE_Q >>> 6) : -(ONE_Q >>> 6);
        end else begin
            raw1_c2 = x_s1 - mx_s1;
            raw2_c2 = y_s1 - my_s1;
            term3_c2 = (x_s1[21] != y_s1[21])
                     ? (ONE_Q >>> 6) : -(ONE_Q >>> 6);
        end
        term1_c2 = (y_s1[21] ? raw1_c2 : -raw1_c2) >>> 3;
        term2_c2 = (x_s1[21] ? raw2_c2 : -raw2_c2) >>> 3;
        d2_c2 = term1_c2 + term2_c2 + term3_c2;
        mx_c2 = x_s1[21] ? mx_s1 + (ONE_Q >>> 3) : mx_s1 - (ONE_Q >>> 3);
        my_c2 = y_s1[21] ? my_s1 + (ONE_Q >>> 3) : my_s1 - (ONE_Q >>> 3);
    end

    always @(posedge clk) begin
        base_s2 <= base_s1;
        d1_s2 <= d1_s1;
        d2_s2 <= d2_c2;
        mx_s2 <= mx_c2;
        my_s2 <= my_c2;
        x_s2 <= x_s1;
        y_s2 <= y_s1;
        y_index_s2 <= y_index_s1;
        divide_s2 <= divide_s1;
    end

    reg signed [CORE_WIDTH-1:0] d3_c3;
    reg signed [CORE_WIDTH-1:0] d4_c3;
    reg signed [CORE_WIDTH-1:0] mx_c3;
    reg signed [CORE_WIDTH-1:0] my_c3;
    reg signed [CORE_WIDTH-1:0] raw1_c3;
    reg signed [CORE_WIDTH-1:0] raw2_c3;
    reg signed [CORE_WIDTH-1:0] raw1_c4;
    reg signed [CORE_WIDTH-1:0] raw2_c4;
    reg signed [CORE_WIDTH-1:0] term1_c3;
    reg signed [CORE_WIDTH-1:0] term2_c3;
    reg signed [CORE_WIDTH-1:0] term3_c3;
    reg signed [CORE_WIDTH-1:0] term1_c4;
    reg signed [CORE_WIDTH-1:0] term2_c4;
    reg signed [CORE_WIDTH-1:0] term3_c4;

    reg signed [CORE_WIDTH-1:0] base_s3;
    reg signed [CORE_WIDTH-1:0] d1_s3;
    reg signed [CORE_WIDTH-1:0] d2_s3;
    reg signed [CORE_WIDTH-1:0] d3_s3;
    reg signed [CORE_WIDTH-1:0] d4_s3;
    reg [3:0] y_index_s3;
    reg divide_s3;

    always @* begin
        mx_c3 = x_s2[20] ? mx_s2 + (ONE_Q >>> 4) : mx_s2 - (ONE_Q >>> 4);
        my_c3 = y_s2[20] ? my_s2 + (ONE_Q >>> 4) : my_s2 - (ONE_Q >>> 4);
        if (divide_s2) begin
            raw1_c3 = x_s2 + mx_s2;
            raw2_c3 = my_s2 - y_s2;
            term3_c3 = (x_s2[20] == y_s2[20])
                     ? (ONE_Q >>> 8) : -(ONE_Q >>> 8);
            raw1_c4 = x_s2 + mx_c3;
            raw2_c4 = my_c3 - y_s2;
            term3_c4 = (x_s2[19] == y_s2[19])
                     ? (ONE_Q >>> 10) : -(ONE_Q >>> 10);
        end else begin
            raw1_c3 = x_s2 - mx_s2;
            raw2_c3 = y_s2 - my_s2;
            term3_c3 = (x_s2[20] != y_s2[20])
                     ? (ONE_Q >>> 8) : -(ONE_Q >>> 8);
            raw1_c4 = x_s2 - mx_c3;
            raw2_c4 = y_s2 - my_c3;
            term3_c4 = (x_s2[19] != y_s2[19])
                     ? (ONE_Q >>> 10) : -(ONE_Q >>> 10);
        end
        term1_c3 = (y_s2[20] ? raw1_c3 : -raw1_c3) >>> 4;
        term2_c3 = (x_s2[20] ? raw2_c3 : -raw2_c3) >>> 4;
        d3_c3 = term1_c3 + term2_c3 + term3_c3;
        term1_c4 = (y_s2[19] ? raw1_c4 : -raw1_c4) >>> 5;
        term2_c4 = (x_s2[19] ? raw2_c4 : -raw2_c4) >>> 5;
        d4_c3 = term1_c4 + term2_c4 + term3_c4;
    end

    always @(posedge clk) begin
        base_s3 <= base_s2;
        d1_s3 <= d1_s2;
        d2_s3 <= d2_s2;
        d3_s3 <= d3_c3;
        d4_s3 <= d4_c3;
        y_index_s3 <= y_index_s2;
        divide_s3 <= divide_s2;
    end

    wire signed [CORE_WIDTH-1:0] use_d1 = APPROX_LEVEL >= 1 ? d1_s3 : 0;
    wire signed [CORE_WIDTH-1:0] use_d2 = APPROX_LEVEL >= 2 ? d2_s3 : 0;
    wire signed [CORE_WIDTH-1:0] use_d3 = APPROX_LEVEL >= 3 ? d3_s3 : 0;
    wire signed [CORE_WIDTH-1:0] use_d4 = APPROX_LEVEL >= 4 ? d4_s3 : 0;
    wire signed [CORE_WIDTH-1:0] sum0;
    wire signed [CORE_WIDTH-1:0] carry0;
    wire signed [CORE_WIDTH-1:0] sum1;
    wire signed [CORE_WIDTH-1:0] carry1;
    wire signed [CORE_WIDTH-1:0] sum2;
    wire signed [CORE_WIDTH-1:0] carry2;
    wire signed [CORE_WIDTH-1:0] shared_comb;

    csa3 #(.WIDTH(CORE_WIDTH)) csa0 (
        .input_a(base_s3), .input_b(use_d1), .input_c(use_d2),
        .sum(sum0), .carry(carry0)
    );
    csa3 #(.WIDTH(CORE_WIDTH)) csa1 (
        .input_a(sum0), .input_b(carry0), .input_c(use_d3),
        .sum(sum1), .carry(carry1)
    );
    csa3 #(.WIDTH(CORE_WIDTH)) csa2 (
        .input_a(sum1), .input_b(carry1), .input_c(use_d4),
        .sum(sum2), .carry(carry2)
    );
    assign shared_comb = sum2 + carry2;

    reg signed [CORE_WIDTH-1:0] shared_s4;
    reg [3:0] y_index_s4;
    reg divide_s4;
    always @(posedge clk) begin
        shared_s4 <= shared_comb;
        y_index_s4 <= y_index_s3;
        divide_s4 <= divide_s3;
    end

    wire signed [CORE_WIDTH-1:0] divided_s5;
    reg signed [CORE_WIDTH-1:0] shared_s5;
    reg divide_s5;
    recip_scale_fixed #(
        .APPROX_LEVEL(APPROX_LEVEL), .VALUE_WIDTH(CORE_WIDTH)
    ) division_scale (
        .clk(clk), .value(shared_s4), .y_fraction_msb(y_index_s4),
        .scaled_value(divided_s5)
    );
    always @(posedge clk) begin
        shared_s5 <= shared_s4;
        divide_s5 <= divide_s4;
    end
    always @(posedge clk) begin
        mantissa_value <= divide_s5 ? divided_s5 : shared_s5;
    end
endmodule
