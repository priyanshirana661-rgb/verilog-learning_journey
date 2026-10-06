module not_gate_tb;
  reg A;
  wire Y;
  not_gate uut(.A(A), .Y(Y));
  initial begin
    A=0; #10;
    $display("A=%b Y=%b",A,Y);
    A=1; #10;
    $display("A=%b Y=%b",A,Y);
  end
endmodule
