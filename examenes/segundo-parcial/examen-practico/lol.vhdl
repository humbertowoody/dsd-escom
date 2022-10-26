LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY circuitosecuencialsimple IS
  PORT (
    reloj, reset, w : IN STD_LOGIC;
    z : OUT STD_LOGIC);
END circuitosecuencialsimple;

ARCHITECTURE Behavior OF circuitosecuencialsimple IS TYPE State_type IS (A, B, C);
  SIGNAL y : State_type;
BEGIN
  PROCESS (reset, reloj)
  BEGIN
    IF reset = '0' THEN
      y <= A;
    ELSIF (reloj'EVENT AND reloj = '1') THEN
      CASE y IS
        WHEN A =>
          IF w = '0' THEN
            y <= A;
          ELSE
            y <= B;
          END IF;
        WHEN B =>
          IF w = '0' THEN
            y <= A;
          ELSE
            y <= C;
          END IF;
        WHEN C =>
          IF w = '0' THEN
            y <= A;
          ELSE
            y <= C;
          END IF;
      END CASE;
    END IF;
  END PROCESS;
  z <= '1' WHEN y = C ELSE
    '0';
END Behavior;

