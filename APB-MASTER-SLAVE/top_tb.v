module tb;

    reg clk;
    reg rst;
    reg start_valid;
    reg st_wr_rd;  // 1 for write, 0 for read
    reg [31:0] wr_data;
    reg [31:0] wr_addr;
    reg [31:0] rd_addr;
    wire [31:0] rd_data;

top TOP (
        .clk(clk),
        .rst(rst),
        .start_valid(start_valid),
        .st_wr_rd(st_wr_rd),
        .wr_data(wr_data),
        .wr_addr(wr_addr),
        .rd_addr(rd_addr),
        .rd_data(rd_data)
    );

    initial clk = 0;
    always  #5 clk = !clk;  
    

    initial 
		begin
        rst = 1;
        start_valid = 0;
        st_wr_rd = 0;  
        wr_data = 32'd0;  
        wr_addr = 32'd0;         
        rd_addr = 32'd0;         
		
        #2; rst = 0;
	

        @(posedge clk); start_valid = 1; st_wr_rd = 1;
        @(posedge clk); start_valid = 0;
        wr_data = 32'd99;
        wr_addr = 32'd5;  //write to regA
		
		repeat(6)@(posedge clk);

		@(posedge clk); start_valid = 1; st_wr_rd = 1;
        @(posedge clk); start_valid = 0;
        wr_data = 32'd52;
        wr_addr = 32'd10;  //write to regB

        repeat(6)@(posedge clk);	       
        
        @(posedge clk); start_valid = 1; st_wr_rd = 0;
        @(posedge clk); start_valid = 0; rd_addr = 32'd5;  //read from regA
		
		repeat(6)@(posedge clk);	
		
		
        @(posedge clk); start_valid = 1; st_wr_rd = 0;
        @(posedge clk); start_valid = 0;rd_addr = 32'd10;  //read from regB
		
		//continuous writes to regC
		repeat(6)@(posedge clk);
		
		@(posedge clk); start_valid = 1; st_wr_rd = 1;
        @(posedge clk); start_valid = 0;
        wr_data = 32'd54;
        wr_addr = 32'd15;  //write to regC
		
		repeat(6)@(posedge clk);
		
		@(posedge clk); start_valid = 1; st_wr_rd = 1;
        @(posedge clk); start_valid = 0;
        wr_data = 32'd53;
        wr_addr = 32'd15;  //write to regC
		
		repeat(6)@(posedge clk);
		
		@(posedge clk); start_valid = 1; st_wr_rd = 1;
        @(posedge clk); start_valid = 0;
        wr_data = 32'd52;
        wr_addr = 32'd15;  //write to regC
		
		//continuous reads from regD
		repeat(6)@(posedge clk);		
		
        @(posedge clk); start_valid = 1; st_wr_rd = 0;
        @(posedge clk); start_valid = 0;rd_addr = 32'd20;  //read from regD
		
		repeat(6)@(posedge clk);		
		
        @(posedge clk); start_valid = 1; st_wr_rd = 0;
        @(posedge clk); start_valid = 0;rd_addr = 32'd20;  //read from regD
		
		repeat(6)@(posedge clk);		
		
        @(posedge clk); start_valid = 1; st_wr_rd = 0;
        @(posedge clk); start_valid = 0;rd_addr = 32'd20;  //read from regD
		
		//reading to regC (write-only)
		repeat(6)@(posedge clk);	
		
		@(posedge clk); start_valid = 1; st_wr_rd = 0;
        @(posedge clk); start_valid = 0;rd_addr = 32'd15;  //read from regC
		
		//writing to regD (read-only)
		repeat(6)@(posedge clk);
		
		@(posedge clk); start_valid = 1; st_wr_rd = 1;
        @(posedge clk); start_valid = 0;
        wr_data = 32'd45;
        wr_addr = 32'd20;  //write to regC
		 		

        #200;
		$finish;
    end

endmodule
