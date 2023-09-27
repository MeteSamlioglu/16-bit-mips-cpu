library verilog;
use verilog.vl_types.all;
entity multiplexer_4x1 is
    port(
        Result          : out    vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        s0              : in     vl_logic;
        s1              : in     vl_logic;
        E               : in     vl_logic
    );
end multiplexer_4x1;
