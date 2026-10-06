module and_gate_tb;
    // Inputs
    reg a, b;
    // Output
    wire y;

    // Instantiate the AND gate
    and_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        // Monitor
        $monitor("Time=%0t | a=%b b=%b | y=%b", $time, a, b, y);
        
        // Test Cases from Truth Table
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        
        $finish;
    end
endmodule
