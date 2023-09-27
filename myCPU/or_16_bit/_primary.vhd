library verilog;
use verilog.vl_types.all;
entity or_16_bit is
    port(
        resOR           : out    vl_logic_vector(15 downto 0);
        a               : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic_vector(15 downto 0)
    );
end or_16_bit;
