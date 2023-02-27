module dlatch_tb;
reg d;
reg e;
reg reset;
wire q;
rstdlatch dut(.d(d),.e(e),.reset(reset),.q(q));

initial
begin
reset=1;
e = 1;
d=1;
#10;
e=1;
reset =0; 
d=1;#10;
reset = 0;#5;
d=0;#10;
d=1;
end
initial 
begin
$dumpfile("rstdltach.vcd");
$dumpvars;
end

endmodule
