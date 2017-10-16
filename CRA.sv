module CRA 
(
  input [7:0] A, B,
  input cIn,
  output  [8:0] sum
);
 
// Internal wires
logic c0, c1, c2, c3, c4, c5, c6;

// full adders in series
FA FA0(.A(A[0]),.B(B[0]), .cIn(cIn),.sum(sum[0]),.cOut(c0));
FA FA1(.A(A[1]),.B(B[1]), .cIn(c0),.sum(sum[1]),.cOut(c1));
FA FA2(.A(A[2]),.B(B[2]), .cIn(c1),.sum(sum[2]),.cOut(c2));
FA FA3(.A(A[3]),.B(B[3]), .cIn(c2),.sum(sum[3]),.cOut(c3));
FA FA4(.A(A[4]),.B(B[4]), .cIn(c3),.sum(sum[4]),.cOut(c4));
FA FA5(.A(A[5]),.B(B[5]), .cIn(c4),.sum(sum[5]),.cOut(c5));
FA FA6(.A(A[6]),.B(B[6]), .cIn(c5),.sum(sum[6]),.cOut(c6));
FA FA7(.A(A[7]),.B(B[7]), .cIn(c6),.sum(sum[7]),.cOut(sum[8]));


endmodule