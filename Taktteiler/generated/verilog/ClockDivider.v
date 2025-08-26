// Generator : SpinalHDL v1.9.1    git head : 9cba1927b2fff87b0d54e8bbecec94e7256520e4
// Component : ClockDivider

`timescale 1ns/1ps 
module ClockDivider (
  output              clkOut,
  input               clk,
  input               reset
);

  reg        [7:0]    _zz_clkOut;

  assign clkOut = _zz_clkOut[7];
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _zz_clkOut <= 8'h00;
    end else begin
      _zz_clkOut <= (_zz_clkOut + 8'h01);
    end
  end


endmodule
