module tristate_buf(input enable,input d,output reg y);
always@(d or enable)
begin
if(enable)
y <= d;
else
y <= 1'bz;
end
endmodule
