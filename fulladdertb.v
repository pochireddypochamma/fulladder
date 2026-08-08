```verilog
// Full Adder Testbench

module full_adder_tb;

    reg A;
    reg B;
    reg Cin;

    wire Sum;
    wire Cout;

    // Instantiate the Full Adder
    full_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin

        $display("A B Cin | Sum Cout");
        $display("-------------------");

        A = 0; B = 0; Cin = 0;
        #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 0; B = 0; Cin = 1;
        #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 0; B = 1; Cin = 0;
        #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 0; B = 1; Cin = 1;
        #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 1; B = 0; Cin = 0;
        #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 1; B = 0; Cin = 1;
        #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 1; B = 1; Cin = 0;
        #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 1; B = 1; Cin = 1;
        #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        $finish;
    end

endmodule
```
