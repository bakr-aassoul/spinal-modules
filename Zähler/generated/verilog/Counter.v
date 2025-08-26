// Generator : SpinalHDL v1.9.1    git head : 9cba1927b2fff87b0d54e8bbecec94e7256520e4
// Component : Counter

`timescale 1ns/1ps 
module Counter (
  input               enable,
  input               reset,
  output     [3:0]    value,
  input               clk,
  input               reset_1
);

  reg        [3:0]    _zz_value;

  assign value = _zz_value;
  always @(posedge clk or posedge reset_1) begin
    if(reset_1) begin
      _zz_value <= 4'b0000;
    end else begin
      if(reset) begin
        _zz_value <= 4'b0000;
      end else begin
        if(enable) begin
          _zz_value <= (_zz_value + 4'b0001);
        end
      end
    end
  end


endmodule
