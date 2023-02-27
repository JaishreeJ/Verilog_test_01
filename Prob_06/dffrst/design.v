module dff_rst (d   , clock,reset   , q);
  input d, clock,reset ; 
  output reg q;

  always @ ( posedge clock)
      begin
if(reset)
q<=0;
else
q <= d;
        end
endmodule  
