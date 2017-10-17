module test;

	// Inputs
	reg [31:0] A, B;
	reg cIn;


	// Outputs
	reg compare;
	// Instantiate the Unit Under Test (UUT)
	top uut (
		.A(A), 
		.B(B),
		.cIn(cIn),
		.compare(compare)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		cIn = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		for(int i =0; i<1000;i++) begin
		A = $urandom();
		B = $urandom();
		#100;
 
  end
		
	end
      
endmodule

