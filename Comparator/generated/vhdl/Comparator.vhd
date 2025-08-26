-- Generator : SpinalHDL v1.9.1    git head : 9cba1927b2fff87b0d54e8bbecec94e7256520e4
-- Component : Comparator

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity Comparator is
  port(
    a : in unsigned(3 downto 0);
    b : in unsigned(3 downto 0);
    eq : out std_logic;
    gt : out std_logic;
    lt : out std_logic
  );
end Comparator;

architecture arch of Comparator is

begin
  eq <= pkg_toStdLogic(a = b);
  gt <= pkg_toStdLogic(b < a);
  lt <= pkg_toStdLogic(a < b);
end arch;

