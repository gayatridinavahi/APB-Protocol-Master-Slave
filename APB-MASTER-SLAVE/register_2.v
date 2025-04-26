module register(
    input clk,rst,
    input wr_en,rd_en,            
    input [31:0] addr,       
    input [31:0] data_in,    
    output reg [31:0] data_out 
);

reg [31:0] regA;
reg [31:0] regB;
reg [31:0] regC;//write-only
reg [32:0] regD;//read-only


always @(posedge clk or posedge rst)
begin
	if (rst)  regA <=32'd0; 						 
	else if (wr_en && addr==32'd5)
		 regA <= data_in;	 
end

always @(posedge clk or posedge rst)
begin
	if (rst) regB <= 32'd0;			
	else if (wr_en && addr == 32'd10) regB <= data_in;		
end

always @(posedge clk or posedge rst)
begin
	if (rst) regC <= 32'd0;
	else if (wr_en && addr==32'd15) regC <= data_in;//write-only
end 

always @(posedge clk or posedge rst)
begin 
	if (rst) regD <=32'd99;
	else if (wr_en && addr==32'd20) regD <= regD;//read-only
end 


always @(posedge clk or posedge rst)
begin 
	if (rst) data_out <=32'b0;
	else
	begin 
		if (rd_en) 
		begin
		case (addr)
		32'd5: data_out <= regA;
		32'd10: data_out <= regB;
		32'd15: data_out <= data_out;//write_only
		32'd20: data_out <= regD; //read-only
		default: data_out <=32'b0;
		endcase
		end	
end 
end

endmodule
