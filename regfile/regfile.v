module regfile(
    input clk,
    input [4:0] raddr1,
    input [4:0] raddr2,
    input we,
    input [4:0] waddr,
    input [31:0] wdata,
    output reg [31:0] rdata1,
    output reg [31:0] rdata2
    );
    reg [31:0] rf [31:0];
    

    always @(posedge clk) begin
        if (raddr1 == {5{1'b0}}) begin
            rdata1 <= {32{1'b0}};
        end
        else begin
            rdata1 <= rf[raddr1];
        end
    end
    
    always @(posedge clk) begin
        if (raddr2 == {5{1'b0}}) begin
            rdata2 <= {32{1'b0}};
        end
        else begin
            rdata2 <= rf[raddr2];
        end
    end
    
    always @(posedge clk) begin
        if (we == 1'b1 ) begin
            if (waddr == {5{1'b0}}) begin
                rf[0] <= {32{1'b0}};
            end
            else begin
                rf[waddr] <= wdata;       
            end
        end
        else begin
            rf[0] <= {32{1'b0}};
        end
    end
    
endmodule