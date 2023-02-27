module mux1_tb;
   reg a, c, sel;
   wire b;
   mux1 uut(.a(a), .b(b), .sel(sel), .c(c));
   initial begin
      a = 0; c = 0; sel = 1;
      #10;
      a = 0; c = 1; sel = 0;
      #10;
      a = 1; c = 0; sel = 1;
      #10;
      a = 1; c = 1; sel = 0;
      #10;
$finish;
end
initial
begin
$dumpfile("mux1.vcd");
$dumpvars;
end
endmodule
