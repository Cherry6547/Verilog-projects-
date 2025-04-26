module OnebitALU_tb;
    reg a,b;
    reg [1:0]s;
    wire y;
    OnebitALU uut(
        .a(a),
        .b(b),
        .s(s),
        .y(y)
    );
    initial begin
        $dumpfile("OnebitALU.vcd");
        $dumpvars(0,OnebitALU_tb);
        a = 0; b = 1; s = 2'b01;
        #10 a = 0; b = 1; s = 2'b10;
        #10 a = 0; b = 1; s = 2'b11;
        #10 $finish;
    end
    endmodule