module password_guesser (a, b, c, d, e);

    input a, b, c, d;
    output e;

    assign e = (!( ( (a && b) || (a && c))  || ( (c || (!c)) && ((!d) || (a)) ) ));

endmodule