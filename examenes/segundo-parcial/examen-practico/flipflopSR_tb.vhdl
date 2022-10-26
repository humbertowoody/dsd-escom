library IEEE;
use IEEE.std_logic_1164.all;

entity flipFlopSR_tb is
end entity;

architecture arch_flipFlopSR_tb of flipFlopSR_tb is

    component flipFlopSR is
        port (
            status, notStatus : out std_logic;
            clock, s, r : in std_logic
        );
    end component;

    signal testStatus, testNotStatus, testS, testR : std_logic;
    signal testClock : std_logic := '0';
    signal tics : integer := 0;

begin

    testing_unit: flipFlopSR port map (
        status => testStatus,
        notStatus => testNotStatus,
        clock => testClock,
        s => testS,
        r => testR
    );

    generate_100Mhzs_clock : process
    begin

        report "Tic tac.. testClock=" & std_logic'image(testClock);
        testClock <= not testClock;

        if testClock = '1' then tics <= tics + 1; end if;
        if tics >= 20 then wait; end if;

        wait for 5 ns; -- Tiempo de espera en un flanco de reloj.

    end process;

    main_process : process
    begin

        wait for 15 ns;

        -- Reset inicial
        testS <= '0'; testR <= '1'; wait for 20 ns;

        testS <= '0'; testR <= '0'; wait for 20 ns;
        testS <= '0'; testR <= '1'; wait for 20 ns;
        testS <= '1'; testR <= '0'; wait for 20 ns;
        --testS <= '1'; testR <= '1'; wait for 20 ns;

        testS <= '0'; testR <= '0'; wait for 20 ns;
        testS <= '0'; testR <= '1'; wait for 20 ns;
        testS <= '1'; testR <= '0'; wait for 20 ns;
        --testS <= '1'; testR <= '1'; wait for 20 ns;

        testS <= '0'; testR <= '0'; wait for 20 ns;
        testS <= '0'; testR <= '1'; wait for 20 ns;
        testS <= '1'; testR <= '0'; wait for 20 ns;
        --testS <= '1'; testR <= '1'; wait for 20 ns;
        wait;

    end process;

end architecture;