library verilog;
use verilog.vl_types.all;
entity Mips_16bit is
    port(
        res             : out    vl_logic_vector(15 downto 0);
        pc              : in     vl_logic_vector(31 downto 0);
        next_address    : out    vl_logic;
        clk             : in     vl_logic
    );
end Mips_16bit;
