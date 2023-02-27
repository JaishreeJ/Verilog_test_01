module dlatch(input d, input e,output reg q);
always@(*)
if(e) begin
q<=d;
end
else
begin
q=0;
end
endmodule
