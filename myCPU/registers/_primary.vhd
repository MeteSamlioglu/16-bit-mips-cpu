library verilog;
use verilog.vl_types.all;
entity registers is
    port(
        busA            : out    vl_logic_vector(15 downto 0);
        busB            : out    vl_logic_vector(15 downto 0);
        busW            : in     vl_logic_vector(15 downto 0);
        rs              : in     vl_logic_vector(3 downto 0);
        rt              : in     vl_logic_vector(3 downto 0);
        rw              : in     vl_logic_vector(3 downto 0);
        regWr           : in     vl_logic;
        clk             : in     vl_logic
    );
end registers;
