library verilog;
use verilog.vl_types.all;
entity data_memory is
    port(
        address         : in     vl_logic_vector(15 downto 0);
        store_data      : in     vl_logic_vector(15 downto 0);
        load_data       : out    vl_logic_vector(15 downto 0);
        memRead         : in     vl_logic;
        memWrite        : in     vl_logic;
        clk             : in     vl_logic
    );
end data_memory;
