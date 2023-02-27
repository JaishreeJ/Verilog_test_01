module tristate_buf(input enable,input d,output y);
assign y=enable ?  d :1'bz;
endmodule
