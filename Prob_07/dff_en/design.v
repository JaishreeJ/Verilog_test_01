module sevena(d,clock,enable,q);
 wire a;
  input d,clock,enable;
  output reg q;
  reg r;
  assign a=q;

  always@(*)
    begin
      if(enable)
       r=d;
      else
       r=a;
        end
    always@(posedge clock)
begin
      q<=r;

end
endmodule
