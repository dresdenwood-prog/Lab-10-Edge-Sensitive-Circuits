module t_flip_flop(
    input T,
    input clk,
    output Q,
    output Qnot
);

    jk_flip_flop jkff (
        .J(T),
        .K(T),
        .clk(clk),
        .Q(Q),
        .Qnot(Qnot)
    );

endmodule