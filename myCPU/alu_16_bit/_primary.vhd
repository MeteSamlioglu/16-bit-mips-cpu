library verilog;
use verilog.vl_types.all;
entity alu_16_bit is
    port(
        sum             : out    vl_logic_vector(15 downto 0);
        zeroBit         : out    vl_logic;
        a               : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic_vector(15 downto 0);
        AluOp           : in     vl_logic_vector(3 downto 0)
    );
end alu_16_bit;
