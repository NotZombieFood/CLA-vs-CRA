module test;

	// Inputs
	reg [7:0] A, B;
	

	// Outputs
	reg compare;
	// Instantiate the Unit Under Test (UUT)
	top uut (
		.A(A), 
		.B(B), 
		.compare(compare)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
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

