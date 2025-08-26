-- Generator : SpinalHDL v1.9.1    git head : 9cba1927b2fff87b0d54e8bbecec94e7256520e4
-- Component : ClockDivider

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity ClockDivider is
  port(
    clkOut : out std_logic;
    clk : in std_logic;
    reset : in std_logic
  );
end ClockDivider;

architecture arch of ClockDivider is

  signal zz_clkOut : unsigned(7 downto 0);
begin
  clkOut <= pkg_extract(zz_clkOut,7);
  process(clk, reset)
  begin
    if reset = '1' then
      zz_clkOut <= pkg_unsigned("00000000");
    elsif rising_edge(clk) then
      zz_clkOut <= (zz_clkOut + pkg_unsigned("00000001"));
    end if;
  end process;

end arch;

