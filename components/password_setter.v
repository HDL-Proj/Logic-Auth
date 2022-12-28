module password_setter (setter_var, guesser_var, setter_final);

    input setter_var, guesser_var;
    output setter_final;
    //NOTE: XOR bool func expression: A`.B + A.B`
    assign setter_final = ( !((!(setter_var) && guesser_var) || (setter_var && !(guesser_var))) );

endmodule