library IEEE;
use IEEE.std_logic_1164.all;

entity flipFlopSR is
    port (
        status, notStatus : out std_logic;
        clock, s, r : in std_logic
    );
end entity;

architecture arch_flipFlopSR of flipFlopSR is

    signal internalQ : std_logic;
    signal internalSR : std_logic_vector (1 downto 0);

begin

    status <= internalQ;
    notStatus <= not internalQ;

    main_process : process (clock)
    begin

        internalSR <= s & r;
        if rising_edge (clock) then
            report "Procesando tic tac.. clock=" & std_logic'image(clock);
            report "    s=" & std_logic'image(s);
            report "    r=" & std_logic'image(r);

            if internalSR = "00" then
                --internalQ <= internalQ;
            elsif internalSR = "01" then
                internalQ <= '0';
            elsif internalSR = "10" then
                internalQ <= '1';
            else -- internalSR is "11"
                -- Esto no está permitido, queda en estado inestable.
                internalQ <= 'Z';
            end if;
        end if;

    end process;

end architecture;

