module Halfsub (
    input a,b,
    output d,bout
);
    assign d = a ^ b;
    assign bout = ~a & b;
endmodule