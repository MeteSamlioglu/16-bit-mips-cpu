library verilog;
use verilog.vl_types.all;
entity adder_8_bit is
    port(
        sum             : out    vl_logic_vector(7 downto 0);
        cout            : out    vl_logic;
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        c0              : in     vl_logic
    );
end adder_8_bit;
