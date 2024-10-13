library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration for an AND gate with eight inputs
entity GateAndEight is
    Port (
        -- Input signals: an 8-bit vector
        Input_Signals : in STD_LOGIC_VECTOR(7 downto 0);
        -- Output signal: result of the AND operation
        And_Result : out STD_LOGIC
    );
end entity GateAndEight;

-- Architecture definition for the GateAndEight entity
architecture Functional of GateAndEight is
begin
    -- Process block that triggers on changes to the input signals
    process(Input_Signals)
    begin
        -- Compute the AND of all input bits and assign the result to the output
        And_Result <= Input_Signals(0) and Input_Signals(1) and Input_Signals(2) and
        Input_Signals(3) and Input_Signals(4) and Input_Signals(5) and
        Input_Signals(6) and Input_Signals(7);
    end process; -- End of process block
end Functional; -- End of architecture definition