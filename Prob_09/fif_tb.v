module sync_fifo_tb;

reg clk,rst;
reg we,re;
reg [31:0]datain;
wire [31:0]dataout;
wire full,empty;


sync_fifo dut(.clk(clk),.rst(rst),.we(we),.re(re),.datain(datain),.dataout(dataout),.full(full),.empty(empty));
initial
  begin
	  $dumpfile("sync_fifo.vcd");
	  $dumpvars;
end
initial
  begin
   we=0;
   rst=1;
   re=0;
  clk=0;
#5 rst=0;
end
always #5 clk=~clk;
task write;
begin
@(posedge clk)
we=1;
datain=$random;
#5
@(posedge clk)
we=0;
end
endtask
task read;
begin
@(posedge clk)
re=1;
#5
@(posedge clk)
re=0;
end
endtask

initial
begin
repeat(4)
begin
write();
end
#20
repeat(2)
begin
read();
end
end
endmodule
    
 
