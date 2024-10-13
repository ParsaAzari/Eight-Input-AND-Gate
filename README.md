# Eight-Input AND Gate in VHDL

## Description
This repository contains the VHDL implementation of an Eight-Input AND Gate. The circuit computes the logical AND of eight input signals, producing a single output signal that is true only when all inputs are true.

## Entity and Architecture
Entity

The entity declaration specifies the inputs and outputs of the Eight-Input AND Gate, including an 8-bit vector for input signals and a single output for the AND result.

```vhdl
-- Entity declaration for an AND gate with eight inputs
entity GateAndEight is
    Port (
        -- Input signals: an 8-bit vector
        Input_Signals : in STD_LOGIC_VECTOR(7 downto 0);
        -- Output signal: result of the AND operation
        And_Result : out STD_LOGIC
    );
end entity GateAndEight;
```
## Architecture
Architecture

The architecture describes the internal behavior of the circuit, including the process that computes the AND operation based on the input signals.
```vhdl
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
```

## File Structure
```
/EightInputANDGate
│
├── vhd
│   └── EightInputANDGate.vhd       # Main VHDL file containing the eight-input AND gate code
├── EightInputANDGate.vhdpproj       # Project file for the VHDL compiler or IDE
├── _ls.toml                       # Configuration file
└── README.md                      # Documentation for the Eight-Input AND Gate
```


## Truth Table for Eight-Input AND Gate

| Input 1 | Input 2 | Input 3 | Input 4 | Input 5 | Input 6 | Input 7 | Input 8 | Output |
|---------|---------|---------|---------|---------|---------|---------|---------|--------|
| 0       | 0       | 0       | 0       | 0       | 0       | 0       | 0       | 0      |
| 0       | 0       | 0       | 0       | 0       | 0       | 0       | 1       | 0      |
| 0       | 0       | 0       | 0       | 0       | 0       | 1       | 0       | 0      |
| 0       | 0       | 0       | 0       | 0       | 1       | 0       | 0       | 0      |
| 0       | 0       | 0       | 1       | 0       | 0       | 0       | 0       | 0      |
| 0       | 1       | 0       | 0       | 0       | 0       | 0       | 0       | 0      |
| 1       | 1       | 1       | 1       | 1       | 1       | 1       | 1       | 1      |

## How to Compile and Simulate

To compile and simulate the VHDL code, you can use the **VHDPlus IDE**. Follow these steps to get started:

1. Install the VHDPlus IDE by following the instructions at the official documentation:  
   [VHDPlus IDE Installation Guide](https://vhdplus.com/docs/getstarted/#install-vhdplus-ide)
   
2. After installing the software, open the project file (`FullAdderCircuit.vhdpproj`) in the VHDPlus IDE.

3. Compile the project by using the compile button or the appropriate option within the IDE.

4. You can also simulate the circuit within the VHDPlus environment to observe the outputs for various inputs.
## License

MIT License

Copyright (c) 2024 [Your Name or Organization]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
[MIT LINK](https://choosealicense.com/licenses/mit/)