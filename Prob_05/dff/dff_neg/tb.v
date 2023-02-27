module dff_tb;
  reg d, clock; 
  wire q;
  dff_neg uut (.d(d), .clock(clock),.q(q));
  initial
    begin
      clock=0;
      d= 1;
      end
  initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars;
      #100$finish;
    end
  always 
    #5  clock = ~clock;
initial
begin
  d=1;#10;
 d=0;#10;
 d=1;#10; 
    end
endmodule
