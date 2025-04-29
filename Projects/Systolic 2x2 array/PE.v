module PE(
    input reset,clk,
    input [7:0]a,b,
    output reg [7:0]aout,bout,
    output reg [15:0]cout
);
    
always @(posedge clk or posedge reset) begin
    if (reset) begin
        aout<=0;
        bout <= 0;
        cout <=0;
    end
    else begin
        aout <= a;
        bout <= b;
        cout <= cout + (a * b);
    end

end
endmodule
