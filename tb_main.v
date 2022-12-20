`include "components/password_setter.v"
`include "components/password_guesser.v"
module tb_main;


    reg a, b, c, d, v, w, x, y;
    wire e, z;
 

    password_setter setterInstance(a, b, c, d, e);
    password_guesser guesserInstance(v, w, x, y, z);
 
    initial begin
    $dumpfile("tb_main.vcd");
    $dumpvars(0, tb_main);
        a = 0; b = 0; c = 0; d = 0;
        #1
        a = 0; b = 0; c = 0; d = 1;
        #1
        a = 0; b = 0; c = 1; d = 0;
        #1
        a = 0; b = 0; c = 1; d = 1;
        #1
        a = 0; b = 1; c = 0; d = 0;
        #1
        a = 0; b = 1; c = 0; d = 1;
        #1
        a = 0; b = 1; c = 1; d = 0;
        #1
        a = 0; b = 1; c = 1; d = 1;
        #1
        a = 1; b = 0; c = 0; d = 0;
        #1
        a = 1; b = 0; c = 0; d = 1;
        #1
        a = 1; b = 0; c = 1; d = 0;
        #1
        a = 1; b = 0; c = 1; d = 1;
        #1
        a = 1; b = 1; c = 0; d = 0;
        #1
        a = 1; b = 1; c = 0; d = 1;
        #1
        a = 1; b = 1; c = 1; d = 0;
        #1
        a = 1; b = 1; c = 1; d = 1;
        #1;
    end

    initial begin
    $dumpfile("tb_main.vcd");
    $dumpvars(0, tb_main);
        v = 0; w = 0; x = 0; y = 0;
        #1
        v = 0; w = 0; x = 0; y = 1;
        #1
        v = 0; w = 0; x = 1; y = 0;
        #1
        v = 0; w = 0; x = 1; y = 1;
        #1
        v = 0; w = 1; x = 0; y = 0;
        #1
        v = 0; w = 1; x = 0; y = 1;
        #1
        v = 0; w = 1; x = 1; y = 0;
        #1
        v = 0; w = 1; x = 1; y = 1;
        #1
        v = 1; w = 0; x = 0; y = 0;
        #1
        v = 1; w = 0; x = 0; y = 1;
        #1
        v = 1; w = 0; x = 1; y = 0;
        #1
        v = 1; w = 0; x = 1; y = 1;
        #1
        v = 1; w = 1; x = 0; y = 0;
        #1
        v = 1; w = 1; x = 0; y = 1;
        #1
        v = 1; w = 1; x = 1; y = 0;
        #1
        v = 1; w = 1; x = 1; y = 1;
        #1;
    end
 
endmodule