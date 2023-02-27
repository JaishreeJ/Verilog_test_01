module andb_tb;
reg a;
reg b;
wire c;
andg_2 uut(a,b,c);
initial
	begin
		$dumpfile("andbeh.vcd");
		$dumpvars;
	end
initial 
begin
	a=1;b=1;
	#5;
	a=0;b=1;
	#5;
	a=1;b=0;
	#5;
	a=0;b=0;
	#5 $finish;
end
	
endmodule
