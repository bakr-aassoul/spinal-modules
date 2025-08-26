-- Generator : SpinalHDL v1.9.1    git head : 9cba1927b2fff87b0d54e8bbecec94e7256520e4
-- Component : Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity Counter is
  port(
    enable : in std_logic;
    reset : in std_logic;
    value : out unsigned(3 downto 0);
    clk : in std_logic;
    reset_1 : in std_logic
  );
end Counter;

architecture arch of Counter is

  signal zz_value : unsigned(3 downto 0);
begin
  value <= zz_value;
  process(clk, reset_1)
  begin
    if reset_1 = '1' then
      zz_value <= pkg_unsigned("0000");
    elsif rising_edge(clk) then
      if reset = '1' then
        zz_value <= pkg_unsigned("0000");
      else
        if enable = '1' then
          zz_value <= (zz_value + pkg_unsigned("0001"));
        end if;
      end if;
    end if;
  end process;

end arch;

