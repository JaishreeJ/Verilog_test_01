module andg_2( a,b, c);
input a;
input b;
output reg c;
initial 
begin
if(a==1 && b==1)
c=1;	
else 
c=0;
end
endmodule
