module ParityGenerator (
    input [3:0]a,
    output even,odd
);
    assign even = ^a;
    assign odd = ~^a;
endmodule