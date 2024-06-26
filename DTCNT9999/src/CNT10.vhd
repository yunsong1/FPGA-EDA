LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY CNT10 IS
 PORT(CLK:IN STD_LOGIC;
      CLR:IN STD_LOGIC;
      ENA:IN STD_LOGIC;
      CQ:OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      CO:OUT STD_LOGIC);
END ENTITY CNT10;
ARCHITECTURE ART OF CNT10 IS
 SIGNAL CQI:STD_LOGIC_VECTOR(3 DOWNTO 0);
 BEGIN
 PROCESS(CLK,CLR,ENA) IS
  BEGIN 
  IF CLR='1' THEN CQI<="0000";
  ELSIF CLK'EVENT AND CLK='1' THEN 
   IF ENA='1' THEN
    IF CQI="1001" THEN
     CQI<="0000";
    ELSE 
     CQI<=CQI+'1';
    END IF;
   END IF;
  END IF;
 END PROCESS;
 PROCESS(CLK,CQI) IS
  BEGIN
  IF CLK'EVENT AND CLK='1' THEN
   IF CQI<"1001" THEN
    CO<='0';
   ELSE
    CO<='1';
   END IF;
  END IF;
 END PROCESS;
 CQ<=CQI;
END ARCHITECTURE ART;
