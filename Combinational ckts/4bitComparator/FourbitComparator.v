module FourbitComparator(
    input [3:0]a,
    input [3:0]b,
    output l,e,g 
);
    assign l = (a<b)?1:0;
    assign e = (a==b)?1:0;
    assign g = (a>b)?1:0;

endmodule