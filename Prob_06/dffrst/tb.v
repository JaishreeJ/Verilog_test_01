module dff_rst_tb;
  reg d, clock,reset; 
  wire q;
  dff_rst uut (.d(d), .clock(clock),.reset(reset),.q(q));
  initial
    begin
reset=1;
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
reset=0;
  d=1;#10;
 d=0;#10;
 d=1;#10; 
    end
endmodule
