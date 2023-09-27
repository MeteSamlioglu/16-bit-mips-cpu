library verilog;
use verilog.vl_types.all;
entity multiplexer_8x1 is
    port(
        Res             : out    vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        I4              : in     vl_logic;
        I5              : in     vl_logic;
        I6              : in     vl_logic;
        I7              : in     vl_logic;
        s0              : in     vl_logic;
        s1              : in     vl_logic;
        s2              : in     vl_logic
    );
end multiplexer_8x1;
