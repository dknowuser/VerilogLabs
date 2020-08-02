library verilog;
use verilog.vl_types.all;
entity lab1 is
    generic(
        delay           : integer := 1
    );
    port(
        x_0             : in     vl_logic;
        x_1             : in     vl_logic;
        x_2             : in     vl_logic;
        z_0             : out    vl_logic;
        z_1             : out    vl_logic
    );
end lab1;
