//DATA FLOW MODELING 👻
`include "components/password_setter.v"
`include "components/password_guesser.v"
module eight_bit_auth;

// iverilog -o eight_bit_auth.vvp eight_bit_auth.v
// vvp eight_bit_auth.vvp
// gtkwave

    reg setter_var, guesser_var, constant = 1;
    wire setter_final;
    wire guesser_final; 
    wire middle_gate;
    wire matched;
    wire unmatched;

    //NOTE: XOR bool func expression: A`.B + A.B`
    password_setter setterInstance(setter_var, guesser_var, setter_final);
    password_guesser guesserInstance(setter_var, guesser_var, guesser_final);

    assign middle_gate = ( setter_final && guesser_final );
    assign matched = ( middle_gate && constant );
    assign unmatched = ( !(middle_gate) && (constant) );

    initial begin
    $dumpfile("eight_bit_auth.vcd");
    $dumpvars(0, eight_bit_auth);
        setter_var = 0; guesser_var = 0;  
        #1
        setter_var = 0; guesser_var = 1;  
        #1
        setter_var = 1; guesser_var = 1; 
        #1
        setter_var = 0; guesser_var = 0; 
        #1
        setter_var = 0; guesser_var = 0;  
        #1
        setter_var = 1; guesser_var = 1;  
        #1
        setter_var = 1; guesser_var = 1; 
        #1
        setter_var = 0; guesser_var = 0; 
        #1;
    end

endmodule
