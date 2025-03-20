module Dual_Port_RAM(
    input enA,
    input enB,
    input weA,
    input [7:0]dinA,
    input [7:0]addrA,
    input clk,
    input [7:0]addrB,
    output reg [7:0] doutB
);
    integer i ;
    reg [7:0] RAM [255:0];
    initial begin
        for (i=0;i<256;i=i+1)
            RAM[i]=i;
    end
    always @(posedge clk ) begin
        if(enA&weA & (addrA!=addrB)) RAM[addrA]<=dinA;
        else    $display("Address of A and B are conflicting");
    end
    always @(posedge clk ) begin
        if(enB & (addrA!=addrB)) doutB<=RAM[addrB];
    end
endmodule