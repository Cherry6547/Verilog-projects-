module OnetoFourDemux(
    input a,e,
    input [1:0]s,
    output [3:0]y
);  
    assign y[0] = e & ~s[1] & ~s[0];
    assign y[1] = e & ~s[1] & s[0];
    assign y[2] = e & s[1] & ~s[0];
    assign y[3] = e & s[1] & s[0];
    
endmodule