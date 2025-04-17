module FourtoTwoEncoder (
    input a,b,c,d,
    output y1,y0,v
);
assign v = a | b | c | d;
assign y1 = a | b;
assign y0 = a | (c & ~a & ~b) | (~a & ~b & ~d);
    
endmodule