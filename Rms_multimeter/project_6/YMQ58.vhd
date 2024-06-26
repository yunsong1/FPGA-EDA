library ieee;
use ieee.std_logic_1164.all;
entity YMQ58 is
  port(a:in std_logic_vector(4 downto 0);
       Y:out std_logic_vector(7 downto 0));
end YMQ58;
architecture art of YMQ58 is
  begin 
  process(a)
  begin
    case a is
      when"00000"=>Y<="00111111";--0
      when"00001"=>Y<="00000110";--1
      when"00010"=>Y<="01011011";--2
      when"00011"=>Y<="01001111";--3
      when"00100"=>Y<="01100110";--4
      when"00101"=>Y<="01101101";--5
      when"00110"=>Y<="01111101";--6
      when"00111"=>Y<="00000111";--7
      when"01000"=>Y<="01111111";--8
      when"01001"=>Y<="01101111";--9
      when"01010"=>Y<="01110111";--A
      when"01011"=>Y<="01111100";--B
      when"01100"=>Y<="00111001";--C
      when"01101"=>Y<="01011110";--D
      when"01110"=>Y<="01111001";--E
      when"01111"=>Y<="01110001";--F

      when"10000"=>Y<="10111111";--0
      when"10001"=>Y<="10000110";--1
      when"10010"=>Y<="11011011";--2
      when"10011"=>Y<="11001111";--3
      when"10100"=>Y<="11100110";--4
      when"10101"=>Y<="11101101";--5
      when"10110"=>Y<="11111101";--6
      when"10111"=>Y<="10000111";--7
      when"11000"=>Y<="11111111";--8
      when"11001"=>Y<="11101111";--9
      when"11010"=>Y<="11110111";--A
      when"11011"=>Y<="11111100";--B
      when"11100"=>Y<="10111001";--C
      when"11101"=>Y<="11011110";--D
      when"11110"=>Y<="11111001";--E
      when others=>Y<="11110001";--F
    end case; 
  end process;
end art;

