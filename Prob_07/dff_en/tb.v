module sevena_tb;
  reg d,clock,enable;
  wire q;
  sevena dut(d,clock,enable,q);
  initial
  begin
    $dumpfile("sevena.vcd");
    $dumpvars;
  end
  always #5 clock=~clock;
  initial
  begin

   clock=0;
    enable=0;d=1;
    #10 enable=1;d=1;
    #10 enable=1;d=0;
    #10 enable=1;d=1;
    #10 enable=0;d=0;
 
#10 enable=0;d=1;

    #100 $finish;
  end
endmodule
