module mux1(input a, c, sel, output b);
  assign b = sel ? c : a;
endmodule
