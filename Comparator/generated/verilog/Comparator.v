// Generator : SpinalHDL v1.9.1    git head : 9cba1927b2fff87b0d54e8bbecec94e7256520e4
// Component : Comparator

`timescale 1ns/1ps 
module Comparator (
  input      [3:0]    a,
  input      [3:0]    b,
  output              eq,
  output              gt,
  output              lt
);


  assign eq = (a == b);
  assign gt = (b < a);
  assign lt = (a < b);

endmodule
