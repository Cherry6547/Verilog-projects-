module FourbitALU_tb;
    reg [3:0]a,b;
    reg [2:0]s;
    wire [3:0]result;
    wire carryout;
    wire parity,zero;

    FourbitALU uut(
        .a(a),
        .b(b),
        .s(s),
        .result(result),
        .carryout(carryout),
        .parity(parity),
        .zero(zero)
    );
    initial begin
        $dumpfile("FourbitALU.vcd");
        $dumpvars(0,FourbitALU_tb);
        a = 4'b0100; b = 4'b0111; s = 3'b000;
        #10 a = 4'b0100; b = 4'b0111; s = 3'b001;
        #10 a = 4'b0100; b = 4'b0111; s = 3'b010;
        #10 a = 4'b0100; b = 4'b0111; s = 3'b011;
        #10 a = 4'b0100; b = 4'b0111; s = 3'b100;
        #10 a = 4'b0100; b = 4'b0111; s = 3'b101;
        #10 a = 4'b0100; b = 4'b0111; s = 3'b110;
        #10 a = 4'b0100; b = 4'b0111; s = 3'b111;
        #10 $finish;
    end

endmodule