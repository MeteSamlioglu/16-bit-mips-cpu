library verilog;
use verilog.vl_types.all;
entity and_16_bit is
    port(
        resAND          : out    vl_logic_vector(15 downto 0);
        a               : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic_vector(15 downto 0)
    );
end and_16_bit;
