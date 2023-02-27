module muxdff_tb;
  reg reset,d,clk;
  wire q;
  mux_dff dut(reset,d,clk,q);
  initial
  begin
    $dumpfile("muxdff.vcd");
    $dumpvars;
  end
  always #5 clk=~clk;
   
  initial
    begin
    clk=0;
reset=1;
d=1;
  #5 reset=0;
   #5 d=1;
#5 d=0;
#5 d=1;
#10 $finish

   end
endmodule
