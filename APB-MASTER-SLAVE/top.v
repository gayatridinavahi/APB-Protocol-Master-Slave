module top (
    input clk,
    input rst,
    input start_valid,
    input st_wr_rd,
    input [31:0] wr_data,
    input [31:0] wr_addr,
    input [31:0] rd_addr,
    output [31:0] rd_data
);

    wire [31:0] PADDR, PDATA, PRDATA;
    wire PWRITE, PSEL, PENABLE, PREADY;
    wire [31:0] reg_data_out;
    wire wr_en, rd_en;
    wire [31:0] addr, data_in;

    register REGISTER (
        .clk(clk),
        .rst(rst),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .addr(addr),
        .data_in(data_in),
        .data_out(reg_data_out)
    );

    apb_master MASTER (
        .clk(clk),
        .rst(rst),
        .start_valid(start_valid),
        .st_wr_rd(st_wr_rd),
        .wr_data(wr_data),
        .rd_data(rd_data),
        .wr_addr(wr_addr),
        .rd_addr(rd_addr),
        .PADDR(PADDR),
        .PDATA(PDATA),
        .PWRITE(PWRITE),
        .PSEL(PSEL),
        .PENABLE(PENABLE),
        .PREADY(PREADY),
        .PRDATA(PRDATA)
    );

    slave SLAVE (
        .PCLK(clk),
        .PRESETn(rst),
        .PSEL(PSEL),
        .PENABLE(PENABLE),
        .PWRITE(PWRITE),
        .PADDR(PADDR),
        .PWDATA(PDATA),
        .PRDATA(PRDATA),
        .PREADY(PREADY),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .addr(addr),
        .data_in(data_in),
        .data_out(reg_data_out)
    );

endmodule
