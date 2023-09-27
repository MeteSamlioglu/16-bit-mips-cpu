library verilog;
use verilog.vl_types.all;
entity sub_16_bit is
    port(
        res             : out    vl_logic_vector(15 downto 0);
        a               : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic_vector(15 downto 0);
        cout            : out    vl_logic
    );
end sub_16_bit;
