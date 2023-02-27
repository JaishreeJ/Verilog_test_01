module andg_tb;
reg a;
reg b;
wire c;
and_data dut(a,b,c);
initial
	begin
		$dumpfile("andgate.vcd");
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
