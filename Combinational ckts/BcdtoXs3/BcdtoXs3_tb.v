module BcdtoXs3_tb;
reg [3:0]a;
wire [3:0]y;

BcdtoXs3 uut(
    .a(a),
    .y(y)
);
    initial begin
        $dumpfile("BcdtoXs3.vcd");
        $dumpvars(0,BcdtoXs3_tb);
        a = 4'b0111;
        #10 a =  4'b1001;
        #10 a = 4'b0000;
        #10 $finish;
    end
    endmodule