// Generator : SpinalHDL v1.9.1    git head : 9cba1927b2fff87b0d54e8bbecec94e7256520e4
// Component : Pwm

`timescale 1ns/1ps 
module Pwm (
  input               enable,
  input      [7:0]    duty,
  output              pwmOut,
  output     [6:0]    dutyPct,
  input               clk,
  input               reset
);

  wire       [21:0]   _zz_dutyPct_1;
  wire       [21:0]   _zz_dutyPct_2;
  wire       [21:0]   _zz_dutyPct_3;
  wire       [14:0]   _zz_dutyPct_4;
  wire       [21:0]   _zz_dutyPct_5;
  wire       [13:0]   _zz_dutyPct_6;
  reg        [7:0]    _zz_pwmOut;
  wire       [14:0]   _zz_dutyPct;

  assign _zz_dutyPct_1 = (_zz_dutyPct_2 / _zz_dutyPct);
  assign _zz_dutyPct_2 = (_zz_dutyPct_3 + _zz_dutyPct_5);
  assign _zz_dutyPct_3 = (_zz_dutyPct_4 * 7'h64);
  assign _zz_dutyPct_4 = {7'd0, duty};
  assign _zz_dutyPct_6 = (_zz_dutyPct >>> 1'd1);
  assign _zz_dutyPct_5 = {8'd0, _zz_dutyPct_6};
  assign pwmOut = (enable && (_zz_pwmOut < duty));
  assign _zz_dutyPct = 15'h00ff;
  assign dutyPct = _zz_dutyPct_1[6:0];
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _zz_pwmOut <= 8'h00;
    end else begin
      _zz_pwmOut <= (_zz_pwmOut + 8'h01);
    end
  end


endmodule
