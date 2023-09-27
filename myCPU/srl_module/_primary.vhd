library verilog;
use verilog.vl_types.all;
entity srl_module is
    port(
        alu_in          : in     vl_logic_vector(15 downto 0);
        shamt           : in     vl_logic_vector(4 downto 0);
        shifted_bits    : out    vl_logic_vector(15 downto 0)
    );
end srl_module;
