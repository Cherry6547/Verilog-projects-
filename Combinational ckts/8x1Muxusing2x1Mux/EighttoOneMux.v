module EighttoOneMux (
    input [7:0]a,
    input [2:0]s,
    output y
);
    wire y0,y1,y2,y3,y4,y5;
    TwotoOneMux m1(.a({a[1],a[0]}),.s(s[2]),.y(y0));
    TwotoOneMux m2(.a({a[3],a[2]}),.s(s[2]),.y(y1));
    TwotoOneMux m3(.a({a[5],a[4]}),.s(s[2]),.y(y2));
    TwotoOneMux m4(.a({a[7],a[6]}),.s(s[2]),.y(y3));
    TwotoOneMux m5(.a({y1,y0}),.s(s[1]),.y(y4));
    TwotoOneMux m6(.a({y3,y2}),.s(s[1]),.y(y5));
    TwotoOneMux m7(.a({y5,y4}),.s(s[0]),.y(y));

endmodule