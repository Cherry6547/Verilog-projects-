module BinarytoGrayConverter_tb;
    reg [3:0]a;
    wire [3:0]y;
    BinarytoGrayConverter uut(
        .a(a),
        .y(y)
    );
    initial begin
        $dumpfile("BinarytoGrayCoverter.vcd");
        $dumpvars(0,BinarytoGrayConverter_tb);
        a = 4'b1001;
        #10 a = 4'b0111;
        #10 a = 4'b1010;
        #10 $finish;
    end
endmodule