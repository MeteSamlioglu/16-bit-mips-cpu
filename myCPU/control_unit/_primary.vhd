library verilog;
use verilog.vl_types.all;
entity control_unit is
    port(
        opcode          : in     vl_logic_vector(5 downto 0);
        beq             : out    vl_logic;
        regDst          : out    vl_logic;
        memRead         : out    vl_logic;
        memWrite        : out    vl_logic;
        memToReg        : out    vl_logic;
        AluSrc          : out    vl_logic;
        AluOp           : out    vl_logic_vector(3 downto 0);
        regWrite        : out    vl_logic;
        jump            : out    vl_logic
    );
end control_unit;
