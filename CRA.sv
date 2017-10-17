module CRA 
(
  input [31:0] A, B,
  input cIn,
  output  [32:0] sum
);
 
// Internal wires
logic c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30;

// full adders in series
FA FA0(.A(A[0]),.B(B[0]), .cIn(cIn),.sum(sum[0]),.cOut(c0));
FA FA1(.A(A[1]),.B(B[1]), .cIn(c0),.sum(sum[1]),.cOut(c1));
FA FA2(.A(A[2]),.B(B[2]), .cIn(c1),.sum(sum[2]),.cOut(c2));
FA FA3(.A(A[3]),.B(B[3]), .cIn(c2),.sum(sum[3]),.cOut(c3));
FA FA4(.A(A[4]),.B(B[4]), .cIn(c3),.sum(sum[4]),.cOut(c4));
FA FA5(.A(A[5]),.B(B[5]), .cIn(c4),.sum(sum[5]),.cOut(c5));
FA FA6(.A(A[6]),.B(B[6]), .cIn(c5),.sum(sum[6]),.cOut(c6));
FA FA7(.A(A[7]),.B(B[7]), .cIn(c6),.sum(sum[7]),.cOut(c7));
FA FA8(.A(A[8]),.B(B[8]), .cIn(c7),.sum(sum[8]),.cOut(c8));
FA FA9(.A(A[9]),.B(B[9]), .cIn(c8),.sum(sum[9]),.cOut(c9));
FA FA10(.A(A[10]),.B(B[10]), .cIn(c9),.sum(sum[10]),.cOut(c10));
FA FA11(.A(A[11]),.B(B[11]), .cIn(c10),.sum(sum[11]),.cOut(c11));
FA FA12(.A(A[12]),.B(B[12]), .cIn(c11),.sum(sum[12]),.cOut(c12));
FA FA13(.A(A[13]),.B(B[13]), .cIn(c12),.sum(sum[13]),.cOut(c13));
FA FA14(.A(A[14]),.B(B[14]), .cIn(c13),.sum(sum[14]),.cOut(c14));
FA FA15(.A(A[15]),.B(B[15]), .cIn(c14),.sum(sum[15]),.cOut(c15));
FA FA16(.A(A[16]),.B(B[16]), .cIn(c15),.sum(sum[16]),.cOut(c16));
FA FA17(.A(A[17]),.B(B[17]), .cIn(c16),.sum(sum[17]),.cOut(c17));
FA FA18(.A(A[18]),.B(B[18]), .cIn(c17),.sum(sum[18]),.cOut(c18));
FA FA19(.A(A[19]),.B(B[19]), .cIn(c18),.sum(sum[19]),.cOut(c19));
FA FA20(.A(A[20]),.B(B[20]), .cIn(c19),.sum(sum[20]),.cOut(c20));
FA FA21(.A(A[21]),.B(B[21]), .cIn(c20),.sum(sum[21]),.cOut(c21));
FA FA22(.A(A[22]),.B(B[22]), .cIn(c21),.sum(sum[22]),.cOut(c22));
FA FA23(.A(A[23]),.B(B[23]), .cIn(c22),.sum(sum[23]),.cOut(c23));
FA FA24(.A(A[24]),.B(B[24]), .cIn(c23),.sum(sum[24]),.cOut(c24));
FA FA25(.A(A[25]),.B(B[25]), .cIn(c24),.sum(sum[25]),.cOut(c25));
FA FA26(.A(A[26]),.B(B[26]), .cIn(c25),.sum(sum[26]),.cOut(c26));
FA FA27(.A(A[27]),.B(B[27]), .cIn(c26),.sum(sum[27]),.cOut(c27));
FA FA28(.A(A[28]),.B(B[28]), .cIn(c27),.sum(sum[28]),.cOut(c28));
FA FA29(.A(A[29]),.B(B[29]), .cIn(c28),.sum(sum[29]),.cOut(c29));
FA FA30(.A(A[30]),.B(B[30]), .cIn(c29),.sum(sum[30]),.cOut(c30));
FA FA31(.A(A[31]),.B(B[31]), .cIn(c30),.sum(sum[31]),.cOut(sum[32]));



endmodule