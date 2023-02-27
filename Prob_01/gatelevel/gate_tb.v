module andg3_tb;
reg a;
reg b;
wire c;
andg_3 dut(a,b,c);
initial
	begin
		$dumpfile("and3.vcd");
		$dumpvars;
	end
initial 
begin
	a=0;b=0;
	#5;
	a=0;b=1;
	#5;
	a=1;b=0;
	#5;
	a=1;b=1;
	#5 $finish;
end
	
endmodule
