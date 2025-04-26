module slave(
    input PCLK,PRESETn,
    input PSEL, PENABLE,PWRITE,
    input [31:0] PADDR,PWDATA,
    output [31:0] PRDATA,
    output reg PREADY,
    output reg wr_en, rd_en,
    output reg [31:0] addr,
    output reg [31:0] data_in,
	input  [31:0] data_out
);

assign PRDATA = data_out; 

always @(posedge PCLK or posedge PRESETn) //PREADY
begin
	if (PRESETn) PREADY <= 0;
    PREADY <= (PENABLE) ? 1 : 0;		
end

always @(posedge PCLK or posedge PRESETn) //wr_en
begin
    if (PRESETn) 
	begin 
	 wr_en <= 0;
	end 
	else if (PSEL && !PENABLE && !PWRITE) 
	begin
	wr_en <= 0;
	end 
	else if (PSEL && !PENABLE && PWRITE) 
	begin
	wr_en <= 1;
	end 
	else begin
	wr_en <= 0;
	end 
end

always @(posedge PCLK or posedge PRESETn) //rd_en
begin
    if (PRESETn) 
	begin 
	rd_en <= 0;
	end 
	else if (PSEL && !PENABLE && !PWRITE) 
	begin
	rd_en <= 1;
	end 
	else if (PSEL && !PENABLE && PWRITE) 
	begin
	rd_en <= 0;
	end 
	else begin
	rd_en <= 0;
	end 
end 

always @(posedge PCLK or posedge PRESETn) //addr
begin
    if (PRESETn) 
	begin 
	addr <= 32'd0;
	end 
	else 
		if (PSEL && !PENABLE && !PWRITE) 
		begin
		addr <= PADDR;
		end 
		else if (PSEL && !PENABLE && PWRITE) 
		begin
		addr <= PADDR;
		end 
end 

always @(posedge PCLK or posedge PRESETn) //data_in
begin
    if (PRESETn) 
	begin 
	data_in <= 32'b0;
	end 
	else if (PSEL && !PENABLE && PWRITE) 
	begin
	data_in <= PWDATA;
	end 
end 




endmodule
