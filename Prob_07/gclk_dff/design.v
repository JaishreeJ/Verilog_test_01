module sevenb(input d,clock,enable,output reg q);
  wire gclk;
  assign gclk=clockk&enable;
  always@(posedge gclk)
    q<=d;
endmodule
