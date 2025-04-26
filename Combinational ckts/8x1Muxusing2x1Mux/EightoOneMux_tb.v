module EighttoOneMux_tb;
    reg [7:0]a;
    reg [2:0]s;
    wire y;
    EighttoOneMux uut(
        .a(a),
        .s(s),
        .y(y)
    );
    initial begin
        $dumpfile("EighttoOneMux.vcd");
        $dumpvars(0,EighttoOneMux_tb);
        a = 8'b11001100; s = 3'b000;
        #10 a = 8'b11001100; s = 3'b001;
        #10 a = 8'b11001100; s = 3'b010;
        #10 a = 8'b11001100; s = 3'b011;
        #10 a = 8'b11001100; s = 3'b100;
        #10 a = 8'b11001100; s = 3'b101;
        #10 a = 8'b11001100; s = 3'b110;
        #10 a = 8'b11001100; s = 3'b111;
        #10 $finish;
    end
endmodule