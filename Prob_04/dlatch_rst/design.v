module rstdlatch(input d, input e,input reset,output reg q);
always@(*)
if(reset) begin
q<=0;
end
else
begin
if(e)
q<=d;
else
q<=0;
end
endmodule
