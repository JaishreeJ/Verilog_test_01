module tristate_buf2_tb;
reg d;
reg enable;
wire y;
tristate_buf b(d,enable,y);
initial
begin
$dumpfile("tristate2.vcd");
$dumpvars;
end
initial
begin
enable=1;
d=1;
#10
if(y==1)
$display("Correct");
else
$display("Error");
#10
enable=0;
d=0;
if(y==1'bz)
$display("Correct");
else
$display("Error");
#10 $finish;
end
endmodule
