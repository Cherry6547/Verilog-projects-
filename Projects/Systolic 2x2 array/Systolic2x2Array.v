module Systolic2x2Array (
    input clk,reset,
    input [7:0] a00,a01,a10,a11,
    input [7:0] b00,b01,b10,b11,
    output [15:0] c00,c01,c10,c11
);
    reg [7:0] ain00,ain10;
    reg [7:0] bin00,bin01;
    wire [7:0] aout0,aout1;
    wire [7:0] bout0,bout1;
    reg [3:0] cylce;
    wire [15:0] cout00,cout01,cout10,cout11;

    PE pe00(.a(ain00),.b(bin00),.clk(clk),.reset(reset),.aout(aout0),.bout(bout0),.cout(cout00));
    PE pe01(.a(aout0),.b(bin01),.clk(clk),.reset(reset),.aout(),.bout(bout1),.cout(cout01));
    PE pe10(.a(ain10),.b(bout0),.clk(clk),.reset(reset),.aout(aout1),.bout(),.cout(cout10));
    PE pe11(.a(aout1),.b(bout1),.clk(clk),.reset(reset),.aout(),.bout(),.cout(cout11));

    assign c00 = cout00;
    assign c01 = cout01;
    assign c10 = cout10;
    assign c11 = cout11;

    always @(posedge clk or posedge reset)begin
        if (reset) begin
            cylce <= 0;
            ain00 <= 0;
            ain10 <= 0;
            bin00 <= 0;
            bin01 <= 0;
        end
        else begin
            cylce <= cylce + 1;
            case (cylce)
                1:begin
                    ain00 <= a00;
                    bin00 <= b00;
                end 
                2: begin
                    ain00 <= a01;
                    ain10 <= a10;
                    bin00 <= b10;
                    bin01 <= b01;
                end
                3: begin
                    ain00 <=0;
                    bin00 <=0;
                    ain10 <= a11;
                    bin01 <= b11;
                end
                
                default: begin
                    ain00 <= 0;
                    ain10 <= 0;
                    bin00 <= 0;
                    bin01 <= 0;
                end
            endcase
        end
    end

endmodule