module oadm_rounding_error_lut (
    input wire [2:0] index,
    input wire [3:0] value_low,
    output wire [1:0] x_error,
    output wire [1:0] y_error
);
    wire product_0 = ~index[2] & ~index[1] & ~index[0] & ~value_low[3] & ~value_low[2] & ~value_low[1] & value_low[0];
    wire product_1 = index[2] & index[1] & index[0] & ~value_low[3] & ~value_low[2] & ~value_low[1] & value_low[0];
    wire product_2 = ~index[1] & ~index[0] & value_low[3] & value_low[2] & value_low[1] & ~value_low[0];
    wire product_3 = index[2] & index[1] & index[0] & value_low[3] & value_low[2] & value_low[1] & value_low[0];
    wire product_4 = index[1] & index[0] & ~value_low[3] & ~value_low[2] & value_low[1] & ~value_low[0];
    wire product_5 = index[1] & index[0] & value_low[3] & value_low[2] & value_low[1] & ~value_low[0];
    wire product_6 = ~index[2] & index[1] & ~index[0] & ~value_low[3] & ~value_low[1] & value_low[0];
    wire product_7 = ~index[2] & ~index[1] & index[0] & ~value_low[2] & ~value_low[1] & value_low[0];
    wire product_8 = ~index[2] & ~index[1] & ~index[0] & value_low[3] & value_low[2] & value_low[1];
    wire product_9 = index[2] & ~index[0] & ~value_low[3] & ~value_low[2] & value_low[1] & value_low[0];
    wire product_10 = index[2] & ~index[1] & index[0] & ~value_low[3] & ~value_low[1] & value_low[0];
    wire product_11 = ~index[2] & ~index[0] & ~value_low[3] & value_low[2] & ~value_low[1] & value_low[0];
    wire product_12 = index[2] & index[1] & ~index[0] & ~value_low[2] & ~value_low[1] & value_low[0];
    wire product_13 = index[2] & ~index[1] & index[0] & value_low[3] & value_low[1] & value_low[0];
    wire product_14 = index[2] & index[0] & value_low[3] & ~value_low[2] & value_low[1] & value_low[0];
    wire product_15 = ~index[2] & index[0] & value_low[3] & value_low[2] & ~value_low[1] & value_low[0];
    wire product_16 = index[2] & index[1] & ~index[0] & value_low[2] & value_low[1] & value_low[0];
    wire product_17 = index[2] & index[0] & ~value_low[3] & value_low[2] & ~value_low[1] & value_low[0];
    wire product_18 = index[2] & ~index[0] & value_low[3] & value_low[2] & ~value_low[1] & value_low[0];
    wire product_19 = index[1] & index[0] & value_low[3] & value_low[2] & ~value_low[1] & value_low[0];
    wire product_20 = index[1] & index[0] & ~value_low[3] & ~value_low[2] & value_low[1] & value_low[0];
    wire product_21 = ~index[1] & ~index[0] & value_low[3] & value_low[2] & ~value_low[1] & value_low[0];
    wire product_22 = ~index[0] & ~value_low[3] & value_low[2] & ~value_low[1] & ~value_low[0];
    wire product_23 = ~index[2] & ~index[1] & index[0] & ~value_low[3] & value_low[1];
    wire product_24 = ~index[1] & ~index[0] & ~value_low[3] & ~value_low[2] & value_low[1];
    wire product_25 = ~index[2] & index[1] & ~index[0] & value_low[3] & value_low[1];
    wire product_26 = ~index[2] & ~index[0] & value_low[3] & ~value_low[2] & value_low[1];
    wire product_27 = value_low[3] & ~value_low[2] & ~value_low[1] & ~value_low[0];
    wire product_28 = index[0] & value_low[3] & value_low[2] & ~value_low[1] & ~value_low[0];
    wire product_29 = index[2] & ~index[1] & ~index[0] & ~value_low[2] & value_low[0];
    wire product_30 = index[0] & ~value_low[3] & value_low[2] & ~value_low[0];
    wire product_31 = ~index[2] & ~index[1] & index[0] & value_low[2] & value_low[1];
    wire product_32 = ~index[0] & value_low[3] & value_low[2] & ~value_low[0];
    wire product_33 = ~value_low[3] & value_low[2] & value_low[1] & ~value_low[0];
    wire product_34 = index[2] & ~index[1] & ~value_low[2] & value_low[1] & value_low[0];
    wire product_35 = ~index[2] & index[1] & value_low[2] & ~value_low[1] & value_low[0];
    wire product_36 = ~index[1] & value_low[3] & ~value_low[2] & ~value_low[1] & value_low[0];
    wire product_37 = ~index[2] & index[1] & index[0] & ~value_low[2] & value_low[0];
    wire product_38 = ~index[2] & index[1] & index[0] & value_low[2] & value_low[0];
    wire product_39 = ~index[1] & index[0] & value_low[3] & ~value_low[2] & value_low[0];
    wire product_40 = ~index[2] & index[1] & ~value_low[2] & value_low[1] & value_low[0];
    wire product_41 = index[2] & ~index[1] & value_low[2] & ~value_low[1] & value_low[0];
    wire product_42 = index[1] & ~index[0] & ~value_low[3] & value_low[2] & value_low[0];
    wire product_43 = index[1] & value_low[3] & ~value_low[2] & ~value_low[1] & value_low[0];
    wire product_44 = index[2] & ~index[1] & ~index[0] & value_low[2] & value_low[0];
    wire product_45 = index[1] & ~index[0] & value_low[3] & ~value_low[2] & value_low[0];
    wire product_46 = index[1] & ~value_low[3] & value_low[2] & value_low[1] & value_low[0];
    wire product_47 = ~index[1] & index[0] & ~value_low[3] & value_low[2] & value_low[0];
    wire product_48 = index[1] & ~index[0] & value_low[1] & ~value_low[0];
    wire product_49 = value_low[3] & ~value_low[2] & value_low[1] & ~value_low[0];
    wire product_50 = ~index[1] & index[0] & value_low[1] & ~value_low[0];
    wire product_51 = ~index[1] & ~value_low[3] & value_low[2] & value_low[1];

    assign x_error[1] = product_0 | product_3 | product_5 | product_6 | product_7 | product_9 | product_11 | product_13 | product_14 | product_15 | product_16 | product_19 | product_24 | product_29 | product_34 | product_35 | product_36 | product_38 | product_39 | product_42 | product_46;
    assign x_error[0] = product_0 | product_3 | product_10 | product_12 | product_17 | product_18 | product_20 | product_21 | product_22 | product_23 | product_25 | product_26 | product_28 | product_31 | product_33 | product_37 | product_40 | product_41 | product_43 | product_44 | product_45 | product_47 | product_48 | product_49 | product_50 | product_51;
    assign y_error[1] = product_1 | product_4 | product_8 | product_10 | product_12 | product_17 | product_18 | product_20 | product_21 | product_23 | product_25 | product_26 | product_30 | product_31 | product_32 | product_37 | product_40 | product_41 | product_43 | product_44 | product_45 | product_47 | product_48 | product_49 | product_50 | product_51;
    assign y_error[0] = product_1 | product_2 | product_4 | product_5 | product_6 | product_7 | product_8 | product_9 | product_11 | product_13 | product_14 | product_15 | product_16 | product_19 | product_22 | product_24 | product_27 | product_28 | product_29 | product_34 | product_35 | product_36 | product_38 | product_39 | product_42 | product_46;
endmodule
