module CLA 
(
  input [7:0] A, B,
  input cIn,
  output  [8:0] sum
);
 
// Internal wires
logic [7:0] carry;

// full adders in series
FA A0(.A(A[0]),.B(B[0]), .cIn(cIn),.sum(sum[0]),.cOut(c0));
FA A1(.A(A[1]),.B(B[1]), .cIn(carry[0]),.sum(sum[1]),.cOut());
FA A2(.A(A[2]),.B(B[2]), .cIn(carry[1]),.sum(sum[2]),.cOut());
FA A3(.A(A[3]),.B(B[3]), .cIn(carry[2]),.sum(sum[3]),.cOut());
FA A4(.A(A[4]),.B(B[4]), .cIn(carry[3]),.sum(sum[4]),.cOut());
FA A5(.A(A[5]),.B(B[5]), .cIn(carry[4]),.sum(sum[5]),.cOut());
FA A6(.A(A[6]),.B(B[6]), .cIn(carry[5]),.sum(sum[6]),.cOut());
FA A7(.A(A[7]),.B(B[7]), .cIn(carry[6]),.sum(sum[7]),.cOut());

CLL CLL1 (.A(A[3:0]),.B(B[3:0]),.cIn(cIn),.carry(carry[3:0]));
CLL CLL2 (.A(A[7:4]),.B(B[7:4]),.cIn(carry[3]),.carry(carry[7:4]));

assign sum[8] = carry[7]; 
endmodule