module fifo_tb;
  wire [31:0] dataout;
  wire full, empty;
  reg clock, reset, wn, rn;
  reg [31:0] datain;  
  
  sync_fifo dut( clock, reset, wn, rn, datain,dataout, full, empty);
  
  initial begin 
    $dumpfile("fifo_wave.vcd"); $dumpvars;
  end

  initial
  begin
    clock = 0; datain = 8'd0;
    reset = 1; always #5 clock=~clock;
    reset = 0;
    wn = 1; rn = 0;
    datain = 8'd10;
     #5;
    datain = 8'd15;
     #5;
    datain = 8'd20;
   #5;
    datain = 8'd30;
     #5;
    datain = 8'd35;
     #5;
    datain = 8'd40;
    #5;
    datain = 8'd45;
     #5;
   
    wn = 0; rn = 1;
   
  end

endmodule
