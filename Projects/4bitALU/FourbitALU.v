module FourbitALU (
    input [3:0]a,b,
    input [2:0]s,
    output reg [3:0]result,
    output reg carryout,
    output zero,parity
);

    assign zero = (result == 4'b0000);
    assign parity = ^result;
    always @(*) begin
        case (s)
            3'b000: {carryout,result} = a + b;
            3'b001: begin
                    result = 4'b0000;
                    result = a - b;
            end
            3'b010: result = a & b;
            3'b011: result = a | b;
            3'b100: result = a ^ b;
            3'b101: result = ~a;
            3'b110: result = a + 1;
            3'b111: result = a - 1; 
            default: result = 4'b0000;
        endcase
    end
    
endmodule