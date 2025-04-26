module fourbitAdder (
    input [3:0]a,
    input [3:0]b,
    input cin,
    output [3:0]sum,
    output cout
);
wire c0,c1,c2;
    FullAdder f1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(c0));
    FullAdder f2(.a(a[1]),.b(b[1]),.cin(c0),.sum(sum[1]),.cout(c1));
    FullAdder f3(.a(a[2]),.b(b[2]),.cin(c1),.sum(sum[2]),.cout(c2));
    FullAdder f4(.a(a[3]),.b(b[3]),.cin(c2),.sum(sum[3]),.cout(cout));
    
endmodule