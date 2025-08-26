-- Generator : SpinalHDL v1.9.1    git head : 9cba1927b2fff87b0d54e8bbecec94e7256520e4
-- Component : Pwm

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity Pwm is
  port(
    enable : in std_logic;
    duty : in unsigned(7 downto 0);
    pwmOut : out std_logic;
    dutyPct : out unsigned(6 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end Pwm;

architecture arch of Pwm is

  signal zz_pwmOut : unsigned(7 downto 0);
  signal zz_dutyPct : unsigned(14 downto 0);
begin
  pwmOut <= (enable and pkg_toStdLogic(zz_pwmOut < duty));
  zz_dutyPct <= pkg_unsigned("000000011111111");
  dutyPct <= pkg_resize((((pkg_resize(duty,15) * pkg_unsigned("1100100")) + pkg_resize(pkg_shiftRight(zz_dutyPct,1),22)) / zz_dutyPct),7);
  process(clk, reset)
  begin
    if reset = '1' then
      zz_pwmOut <= pkg_unsigned("00000000");
    elsif rising_edge(clk) then
      zz_pwmOut <= (zz_pwmOut + pkg_unsigned("00000001"));
    end if;
  end process;

end arch;

