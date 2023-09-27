library verilog;
use verilog.vl_types.all;
entity xor_16_bit is
    port(
        resXOR          : out    vl_logic_vector(15 downto 0);
        a               : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic_vector(15 downto 0)
    );
end xor_16_bit;
