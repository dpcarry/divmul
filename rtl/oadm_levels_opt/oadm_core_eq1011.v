module oadm_core_eq1011 #(
    parameter APPROX_LEVEL = 0
) (
    input  wire        clk,
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    input  wire        divide_mode,
    output reg signed [28:0] mantissa_value
);
    localparam CORE_WIDTH = 29;
    localparam signed [CORE_WIDTH-1:0] ONE_Q = 29'sd8388608;
    localparam signed [CORE_WIDTH-1:0] MIDPOINT_Q = 29'sd12582912;
    localparam signed [CORE_WIDTH-1:0] TWO_POINT_TWO_FIVE_Q =
        29'sd18874368;

    wire signed [CORE_WIDTH-1:0] x_input =
        $signed({{5{1'b0}}, x_mantissa});
    wire signed [CORE_WIDTH-1:0] y_input =
        $signed({{5{1'b0}}, y_mantissa});
    wire [3:0] y_index_input = y_mantissa[22:19];

    reg signed [CORE_WIDTH-1:0] zm0_c1;
    reg signed [CORE_WIDTH-1:0] z1_c1;
    reg signed [CORE_WIDTH-1:0] mx_c1;
    reg signed [CORE_WIDTH-1:0] my_c1;
    reg signed [CORE_WIDTH-1:0] raw1_c1;
    reg signed [CORE_WIDTH-1:0] raw2_c1;
    reg signed [CORE_WIDTH-1:0] term1_c1;
    reg signed [CORE_WIDTH-1:0] term2_c1;
    reg signed [CORE_WIDTH-1:0] term3_c1;
    reg signed [CORE_WIDTH-1:0] numerator1_c1;
    reg signed [CORE_WIDTH-1:0] numerator2_c1;
    reg signed [CORE_WIDTH-1:0] correction_num_c1;
    reg signed [2:0] epsilon1_c1;

    reg signed [CORE_WIDTH-1:0] zm0_s1;
    reg signed [CORE_WIDTH-1:0] z1_s1;
    reg signed [2:0] epsilon1_s1;
    reg signed [CORE_WIDTH-1:0] mx_s1;
    reg signed [CORE_WIDTH-1:0] my_s1;
    reg signed [CORE_WIDTH-1:0] x_s1;
    reg signed [CORE_WIDTH-1:0] y_s1;
    reg [3:0] y_index_s1;
    reg divide_s1;

    // Multiplier plane zM0. Divider plane w0 is derived later by Eq. 11.
    always @* begin
        zm0_c1 = -TWO_POINT_TWO_FIVE_Q
               + x_input + (x_input >>> 1)
               + y_input + (y_input >>> 1);
        raw1_c1 = x_input - MIDPOINT_Q;
        raw2_c1 = y_input - MIDPOINT_Q;
        numerator1_c1 = y_mantissa[22] ? raw1_c1 : -raw1_c1;
        numerator2_c1 = x_mantissa[22] ? raw2_c1 : -raw2_c1;
        correction_num_c1 = y_mantissa[22]
                          ? (x_input <<< 1) : -(x_input <<< 1);
        term1_c1 = numerator1_c1 >>> 2;
        term2_c1 = numerator2_c1 >>> 2;
        term3_c1 = (x_mantissa[22] != y_mantissa[22])
                 ? (ONE_Q >>> 4) : -(ONE_Q >>> 4);
        z1_c1 = term1_c1 + term2_c1 + term3_c1;
        // Restore the two floor-division carries discarded by Eq. 10.
        epsilon1_c1 = -$signed({2'b00,
            (numerator1_c1[1:0] > correction_num_c1[1:0])})
                      -$signed({2'b00, (numerator2_c1[1:0] != 0)});
        mx_c1 = x_mantissa[22]
              ? MIDPOINT_Q + (ONE_Q >>> 2)
              : MIDPOINT_Q - (ONE_Q >>> 2);
        my_c1 = y_mantissa[22]
              ? MIDPOINT_Q + (ONE_Q >>> 2)
              : MIDPOINT_Q - (ONE_Q >>> 2);
    end

    always @(posedge clk) begin
        zm0_s1 <= zm0_c1;
        z1_s1 <= z1_c1;
        epsilon1_s1 <= epsilon1_c1;
        mx_s1 <= mx_c1;
        my_s1 <= my_c1;
        x_s1 <= x_input;
        y_s1 <= y_input;
        y_index_s1 <= y_index_input;
        divide_s1 <= divide_mode;
    end

    reg signed [CORE_WIDTH-1:0] z2_c2;
    reg signed [CORE_WIDTH-1:0] mx_c2;
    reg signed [CORE_WIDTH-1:0] my_c2;
    reg signed [CORE_WIDTH-1:0] raw1_c2;
    reg signed [CORE_WIDTH-1:0] raw2_c2;
    reg signed [CORE_WIDTH-1:0] term1_c2;
    reg signed [CORE_WIDTH-1:0] term2_c2;
    reg signed [CORE_WIDTH-1:0] term3_c2;
    reg signed [CORE_WIDTH-1:0] numerator1_c2;
    reg signed [CORE_WIDTH-1:0] numerator2_c2;
    reg signed [CORE_WIDTH-1:0] correction_num_c2;
    reg signed [2:0] epsilon2_c2;

    reg signed [CORE_WIDTH-1:0] zm0_s2;
    reg signed [CORE_WIDTH-1:0] z1_s2;
    reg signed [CORE_WIDTH-1:0] z2_s2;
    reg signed [2:0] epsilon1_s2;
    reg signed [2:0] epsilon2_s2;
    reg signed [CORE_WIDTH-1:0] mx_s2;
    reg signed [CORE_WIDTH-1:0] my_s2;
    reg signed [CORE_WIDTH-1:0] x_s2;
    reg signed [CORE_WIDTH-1:0] y_s2;
    reg [3:0] y_index_s2;
    reg divide_s2;

    always @* begin
        raw1_c2 = x_s1 - mx_s1;
        raw2_c2 = y_s1 - my_s1;
        numerator1_c2 = y_s1[21] ? raw1_c2 : -raw1_c2;
        numerator2_c2 = x_s1[21] ? raw2_c2 : -raw2_c2;
        correction_num_c2 = y_s1[21]
                          ? (x_s1 <<< 1) : -(x_s1 <<< 1);
        term1_c2 = numerator1_c2 >>> 3;
        term2_c2 = numerator2_c2 >>> 3;
        term3_c2 = (x_s1[21] != y_s1[21])
                 ? (ONE_Q >>> 6) : -(ONE_Q >>> 6);
        z2_c2 = term1_c2 + term2_c2 + term3_c2;
        epsilon2_c2 = -$signed({2'b00,
            (numerator1_c2[2:0] > correction_num_c2[2:0])})
                      -$signed({2'b00, (numerator2_c2[2:0] != 0)});
        mx_c2 = x_s1[21] ? mx_s1 + (ONE_Q >>> 3)
                         : mx_s1 - (ONE_Q >>> 3);
        my_c2 = y_s1[21] ? my_s1 + (ONE_Q >>> 3)
                         : my_s1 - (ONE_Q >>> 3);
    end

    always @(posedge clk) begin
        zm0_s2 <= zm0_s1;
        z1_s2 <= z1_s1;
        z2_s2 <= z2_c2;
        epsilon1_s2 <= epsilon1_s1;
        epsilon2_s2 <= epsilon2_c2;
        mx_s2 <= mx_c2;
        my_s2 <= my_c2;
        x_s2 <= x_s1;
        y_s2 <= y_s1;
        y_index_s2 <= y_index_s1;
        divide_s2 <= divide_s1;
    end

    reg signed [CORE_WIDTH-1:0] z3_c3;
    reg signed [CORE_WIDTH-1:0] z4_c3;
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
    reg signed [CORE_WIDTH-1:0] numerator1_c3;
    reg signed [CORE_WIDTH-1:0] numerator2_c3;
    reg signed [CORE_WIDTH-1:0] correction_num_c3;
    reg signed [CORE_WIDTH-1:0] numerator1_c4;
    reg signed [CORE_WIDTH-1:0] numerator2_c4;
    reg signed [CORE_WIDTH-1:0] correction_num_c4;
    reg signed [2:0] epsilon3_c3;
    reg signed [2:0] epsilon4_c3;

    reg signed [CORE_WIDTH-1:0] zm0_s3;
    reg signed [CORE_WIDTH-1:0] z1_s3;
    reg signed [CORE_WIDTH-1:0] z2_s3;
    reg signed [CORE_WIDTH-1:0] z3_s3;
    reg signed [CORE_WIDTH-1:0] z4_s3;
    reg signed [2:0] epsilon1_s3;
    reg signed [2:0] epsilon2_s3;
    reg signed [2:0] epsilon3_s3;
    reg signed [2:0] epsilon4_s3;
    reg signed [CORE_WIDTH-1:0] x_s3;
    reg [3:0] y_index_s3;
    reg divide_s3;

    always @* begin
        mx_c3 = x_s2[20] ? mx_s2 + (ONE_Q >>> 4)
                         : mx_s2 - (ONE_Q >>> 4);
        my_c3 = y_s2[20] ? my_s2 + (ONE_Q >>> 4)
                         : my_s2 - (ONE_Q >>> 4);
        raw1_c3 = x_s2 - mx_s2;
        raw2_c3 = y_s2 - my_s2;
        numerator1_c3 = y_s2[20] ? raw1_c3 : -raw1_c3;
        numerator2_c3 = x_s2[20] ? raw2_c3 : -raw2_c3;
        correction_num_c3 = y_s2[20]
                          ? (x_s2 <<< 1) : -(x_s2 <<< 1);
        term1_c3 = numerator1_c3 >>> 4;
        term2_c3 = numerator2_c3 >>> 4;
        term3_c3 = (x_s2[20] != y_s2[20])
                 ? (ONE_Q >>> 8) : -(ONE_Q >>> 8);
        z3_c3 = term1_c3 + term2_c3 + term3_c3;
        epsilon3_c3 = -$signed({2'b00,
            (numerator1_c3[3:0] > correction_num_c3[3:0])})
                      -$signed({2'b00, (numerator2_c3[3:0] != 0)});

        raw1_c4 = x_s2 - mx_c3;
        raw2_c4 = y_s2 - my_c3;
        numerator1_c4 = y_s2[19] ? raw1_c4 : -raw1_c4;
        numerator2_c4 = x_s2[19] ? raw2_c4 : -raw2_c4;
        correction_num_c4 = y_s2[19]
                          ? (x_s2 <<< 1) : -(x_s2 <<< 1);
        term1_c4 = numerator1_c4 >>> 5;
        term2_c4 = numerator2_c4 >>> 5;
        term3_c4 = (x_s2[19] != y_s2[19])
                 ? (ONE_Q >>> 10) : -(ONE_Q >>> 10);
        z4_c3 = term1_c4 + term2_c4 + term3_c4;
        epsilon4_c3 = -$signed({2'b00,
            (numerator1_c4[4:0] > correction_num_c4[4:0])})
                      -$signed({2'b00, (numerator2_c4[4:0] != 0)});
    end

    always @(posedge clk) begin
        zm0_s3 <= zm0_s2;
        z1_s3 <= z1_s2;
        z2_s3 <= z2_s2;
        z3_s3 <= z3_c3;
        z4_s3 <= z4_c3;
        epsilon1_s3 <= epsilon1_s2;
        epsilon2_s3 <= epsilon2_s2;
        epsilon3_s3 <= epsilon3_c3;
        epsilon4_s3 <= epsilon4_c3;
        x_s3 <= x_s2;
        y_index_s3 <= y_index_s2;
        divide_s3 <= divide_s2;
    end

    // Eq. 11: w0 = -zM0 + 3x.
    wire signed [CORE_WIDTH-1:0] w0_s3 =
        -zm0_s3 + x_s3 + (x_s3 <<< 1) - x_s3[0];

    // Eq. 10: delta_wn = -delta_zn + 2x*sign(y[n])>>(n+1).
    wire signed [CORE_WIDTH-1:0] corr1 =
        (y_index_s3[3] ? x_s3 : -x_s3) >>> 1;
    wire signed [CORE_WIDTH-1:0] corr2 =
        (y_index_s3[2] ? x_s3 : -x_s3) >>> 2;
    wire signed [CORE_WIDTH-1:0] corr3 =
        (y_index_s3[1] ? x_s3 : -x_s3) >>> 3;
    wire signed [CORE_WIDTH-1:0] corr4 =
        (y_index_s3[0] ? x_s3 : -x_s3) >>> 4;

    wire signed [CORE_WIDTH-1:0] plane0 = divide_s3 ? w0_s3 : zm0_s3;
    wire signed [CORE_WIDTH-1:0] plane1 = divide_s3
        ? (-z1_s3 + corr1
           + {{(CORE_WIDTH-3){epsilon1_s3[2]}}, epsilon1_s3}) : z1_s3;
    wire signed [CORE_WIDTH-1:0] plane2 = divide_s3
        ? (-z2_s3 + corr2
           + {{(CORE_WIDTH-3){epsilon2_s3[2]}}, epsilon2_s3}) : z2_s3;
    wire signed [CORE_WIDTH-1:0] plane3 = divide_s3
        ? (-z3_s3 + corr3
           + {{(CORE_WIDTH-3){epsilon3_s3[2]}}, epsilon3_s3}) : z3_s3;
    wire signed [CORE_WIDTH-1:0] plane4 = divide_s3
        ? (-z4_s3 + corr4
           + {{(CORE_WIDTH-3){epsilon4_s3[2]}}, epsilon4_s3}) : z4_s3;

    wire signed [CORE_WIDTH-1:0] use1 = APPROX_LEVEL >= 1 ? plane1 : 0;
    wire signed [CORE_WIDTH-1:0] use2 = APPROX_LEVEL >= 2 ? plane2 : 0;
    wire signed [CORE_WIDTH-1:0] use3 = APPROX_LEVEL >= 3 ? plane3 : 0;
    wire signed [CORE_WIDTH-1:0] use4 = APPROX_LEVEL >= 4 ? plane4 : 0;
    wire signed [CORE_WIDTH-1:0] sum0, carry0, sum1, carry1;
    wire signed [CORE_WIDTH-1:0] sum2, carry2;
    wire signed [CORE_WIDTH-1:0] shared_comb;

    csa3 #(.WIDTH(CORE_WIDTH)) csa0 (
        .input_a(plane0), .input_b(use1), .input_c(use2),
        .sum(sum0), .carry(carry0)
    );
    csa3 #(.WIDTH(CORE_WIDTH)) csa1 (
        .input_a(sum0), .input_b(carry0), .input_c(use3),
        .sum(sum1), .carry(carry1)
    );
    csa3 #(.WIDTH(CORE_WIDTH)) csa2 (
        .input_a(sum1), .input_b(carry1), .input_c(use4),
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
