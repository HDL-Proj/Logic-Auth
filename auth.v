//DATA FLOW MODELING 👻
module auth;


// iverilog -o auth.vvp auth.v
// vvp auth.vvp
// gtkwave

    //tried default values (note: i tried but default values deosnt work lol, so i removed)
    reg s1, s2, s3, s4; //setter variables
    reg g1, g2, g3, g4 = 1; //guessser vars
    reg constant; //this will serve as a real button in real life simulation

    wire setter, guesser, middle_gate, matched, unmatched;

    assign setter = ( ( (!(s1 && g1) || !(s1 && g1)) ) && ( (!(s2 && g2) || !(s2 && g2)) ) ); // (s1 xor g1)` + (s2 xor g2)`
    assign guesser = ( ( (!(s3 && g3) || !(s3 && g3)) ) && ( (!(s4 && g4) || !(s4 && g4)) ) ); // (s3 xor g3)` + (s4 xor g4)`

    assign middle_gate = (setter && guesser);

    assign matched = (middle_gate && constant);

    assign  unmatched = ( (!middle_gate) && constant );

    //todo: create 256 batch huhu (hard coded truth table)
    initial begin
    $dumpfile("auth.vcd");
    $dumpvars(0, auth);
        s1 = 0; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        #1
        s1 = 0; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        #1
        s1 = 0; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        #1
        s1 = 0; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1              //hati
        // s1 = 0; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 0; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 0; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 0; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1;     // hati //hati
        // s1 = 0; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 0; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 0; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 0; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1               //hati
        // s1 = 0; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 0; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 0; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 0; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1; //hati        //hati
        // s1 = 1; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 1; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 1; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 1; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1               //hati
        // s1 = 1; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 1; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 1; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 1; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1;     //hati   //hati
        // s1 = 1; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 1; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 1; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 1; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1               //hati
        // s1 = 1; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 1; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 1; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1
        // s1 = 1; s2 = 0; s3 = 0; s4 = 0; g1 = 0; g2 = 0; g3 = 0; g4 = 0; constant = 1;
        // #1;            
    end
    

endmodule
