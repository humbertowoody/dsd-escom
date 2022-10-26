LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

-- Entidad sin puertos de entrada ni salida
ENTITY ls373_tb IS
END ENTITY;

ARCHITECTURE prueba_ls373 OF ls373_tb IS
  -- Declaración de señales a utilizar para probar.
  SIGNAL OE, LE : STD_LOGIC;
  SIGNAL D, Q : STD_LOGIC_VECTOR(7 DOWNTO 0);

  COMPONENT ls373
    PORT (
      OE, LE : IN STD_LOGIC;
      D : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      Q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT ls373;
BEGIN
  -- Conectamos el módulo
  test_ls373 : ls373 PORT MAP(
    OE => OE,
    LE => LE,
    D => D,
    Q => Q
  );

  -- Iniciamos la prueba
  PROCESS BEGIN
    -- Generamos una señal de prueba
    D <= "00000000";
    OE <= '1';
    LE <= '1';
    WAIT FOR 20 ns;

    D <= "10101010";
    OE <= '0';
    LE <= '0';
    WAIT FOR 20 ns;

    -- Fin de prueba
    WAIT;
  END PROCESS;
END prueba_ls373;
