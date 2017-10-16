module testCLA;

	// Inputs
	reg [7:0] A, B;
	reg cIn;
	

	// Outputs
	reg [8:0] sum;
	// Instantiate the Unit Under Test (UUT)
	CLA uut (
		.A(A), 
		.B(B),
		.cIn(cIn),
		.sum(sum)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		cIn = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		A = 255;
		B = 122;
		#100;
		
	
		A = 12;
		B = 124;
		#100;
		
		
		A = 3;
		B = 10;
		#100;
		
		A = 200;
		B = 30;
		#100;
		
		A = 23;
		B = 100;
		#100;
		
	end
      
endmodule

