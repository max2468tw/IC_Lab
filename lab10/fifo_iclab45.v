module fifo (data_i, write_i, read_i, flush_i, almost_full_o, full_o, empty_o, data_o, clk, rst_n);
parameter DWIDTH = 8, FDEPTH = 55;

`include "cfunctions.h"

input wire [DWIDTH-1:0] data_i;
input wire write_i, read_i, flush_i;
output wire full_o, empty_o, almost_full_o;
output wire [DWIDTH-1:0] data_o;
input wire clk, rst_n;

localparam ADDR_WIDTH = range2size(FDEPTH);
 
reg [ADDR_WIDTH-1:0] rd_ptr, wr_ptr;
reg almost_full, full, empty;
reg [DWIDTH-1:0] mem [FDEPTH-1:0];

assign empty_o = empty;
assign full_o = full;
assign almost_full_o = almost_full;
assign data_o = mem[rd_ptr];


always @(posedge clk, negedge rst_n)
begin
        if (!rst_n)
        begin
                rd_ptr <= {ADDR_WIDTH{1'b0}};
                wr_ptr <= {ADDR_WIDTH{1'b0}};
                almost_full <= 1'b0;
                full <= 1'b0;
                empty <= 1'b1;
        end
        else if (flush_i)
        begin
                rd_ptr <= {ADDR_WIDTH{1'b0}};
                wr_ptr <= {ADDR_WIDTH{1'b0}};
                almost_full <= 1'b0;
                full <= 1'b0;
                empty <= 1'b1;
        end
        else if (write_i && read_i)
        begin
                mem[wr_ptr] <= data_i;
                rd_ptr <= (rd_ptr == (FDEPTH - 1)) ? {ADDR_WIDTH{1'b0}} : rd_ptr + 1;
                wr_ptr <= (wr_ptr == (FDEPTH - 1)) ? {ADDR_WIDTH{1'b0}} : wr_ptr + 1;
        end
        else if (write_i)
        begin
                mem[wr_ptr] <= data_i;
                almost_full <= (wr_ptr == rd_ptr - 2) ||
                               ((wr_ptr == FDEPTH - 1) && (rd_ptr == 1)) ||
                               ((wr_ptr == FDEPTH - 2) && (rd_ptr == 0));
                full <= almost_full || full;
                empty <= 1'b0;
		wr_ptr <= (wr_ptr == (FDEPTH - 1)) ? {ADDR_WIDTH{1'b0}} : wr_ptr + 1;
        end
        else if (read_i)
        begin
                almost_full <= full;
                full <= 1'b0;
                empty <= (rd_ptr == wr_ptr - 1) || ((rd_ptr == FDEPTH - 1) && (wr_ptr == 0));
		rd_ptr <= (rd_ptr == (FDEPTH - 1)) ? {ADDR_WIDTH{1'b0}} : rd_ptr + 1;
                       
        end
end

endmodule
