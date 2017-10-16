module FA
(
  input A,B, cIn,
  output sum, cOut
);
  
   assign cOut = (A&B)+(A&cIn)+(B&cIn);
   assign sum = A^B^cIn;

endmodule