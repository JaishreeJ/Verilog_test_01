module sevenb_tb;
  reg d,clock,enable;
  wire q;
   sevenb dut(d,clock,enable,q);
  initial
  begin
    $dumpfile("sevenb.vcd");
    $dumpvars;
  end
  always #5 clock=~clock;
  initial
  begin
     clock=0;
    enable=0;d=1;
    #5 enable=1;d=1;
    #5 enable=1;d=0;
    #5 enable=0;d=1;
    #5 enable=0;d=0;
    #100 $finish;
  end
endmodule
