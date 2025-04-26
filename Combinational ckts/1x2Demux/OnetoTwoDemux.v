module OnetoTwoDemux (
    input a,e,s,
    output [1:0]y
);
    assign y[0] = e & (~s & a);
    assign y[1] = e & (s & a);
endmodule