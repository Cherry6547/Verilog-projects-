module OnebitALU(
    input a,b,
    input [1:0]s,
    output y
);
assign y = (s==1)? a & b:(s==2)? a | b:a + b;
endmodule