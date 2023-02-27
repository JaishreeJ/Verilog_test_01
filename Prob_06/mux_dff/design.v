module mux_dff(input reset,input d, input clk,output reg q);
reg r;
always@(d or reset)
begin
    if(reset)
      r<=0;
    else
     r<=d;
end
always@(posedge clk)
 q<=r;
 endmodule
