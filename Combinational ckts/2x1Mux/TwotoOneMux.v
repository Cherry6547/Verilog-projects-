module TwotoOneMux (
    input [1:0]a,
    input s,
    output y
);  
    assign y = (s==0)?a[0]:a[1];
endmodule