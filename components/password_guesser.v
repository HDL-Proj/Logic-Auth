module password_guesser (setter_var, guesser_var, guesser_final);

    input setter_var, guesser_var;
    output guesser_final;
    //NOTE: XOR bool func expression: A`.B + A.B`
    assign guesser_final = ( !((!(setter_var) && guesser_var) || (setter_var && !(guesser_var))) );

endmodule