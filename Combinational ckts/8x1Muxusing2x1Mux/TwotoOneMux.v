module TwotoOneMux (
    input [1:0]a,
    input s,
    output y
);  
    assign y = (~s & a[0]) | (s & a[1]);
endmodule