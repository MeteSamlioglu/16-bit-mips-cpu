library verilog;
use verilog.vl_types.all;
entity alu_control is
    port(
        AluOp           : in     vl_logic_vector(3 downto 0);
        func            : in     vl_logic_vector(5 downto 0);
        outSignal       : out    vl_logic_vector(2 downto 0)
    );
end alu_control;
