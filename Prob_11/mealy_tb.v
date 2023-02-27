module mealyfsm_tb;
reg din,clk,reset;
wire y;
mealyseq dut(din, reset, clk, y);
initial
    begin
      $dumpfile("fsm.vcd"); 
      $dumpvars;
    end
initial
begin
reset=0;
clk=0;din=0;
#5 din=1;
#10 din=0;
#10 din=1;
#10 din=1;
#10 din=1;
#10 din=0;
#10 din=0;
#10 din=0;
#10 din=1;
#10 din=0;
#10 din=1;
end
always
#5 clk=~clk;
initial
  #200 $finish ;
endmodule
