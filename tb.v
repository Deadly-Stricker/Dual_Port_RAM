module testRAM;
    // wire enA,enB,weA,addrA,addrB;
    reg [7:0]dinA;
    wire [7:0]doutB;
    reg clk,enA,enB,weA;
    reg [7:0]addrA,addrB;
    Dual_Port_RAM DUT (enA,enB,weA,dinA,addrA,clk,addrB,doutB);
    initial begin clk=1'b0;
    end
    always begin
        #5 clk=~clk;
    end
    initial begin
        $display(DUT.RAM[120]);
        $monitor("clk = %b Value at %d = %d and Value Written on %d = %d",clk,addrB,doutB,addrA,dinA);
        #2  enA=1;enB=1;weA=1;dinA=8'd23;addrA=120;addrB=121;
        #1000 $finish;

    end


endmodule