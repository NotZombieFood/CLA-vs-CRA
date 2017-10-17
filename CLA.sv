module CLA 
(
  input [31:0] A, B,
  input cIn,
  output  [32:0] sum
);
 
// Internal wires
logic [31:0] carry;

// full adders in series
FA A0(.A(A[0]),.B(B[0]), .cIn(cIn),.sum(sum[0]),.cOut(c0));
FA A1(.A(A[1]),.B(B[1]), .cIn(carry[0]),.sum(sum[1]),.cOut());
FA A2(.A(A[2]),.B(B[2]), .cIn(carry[1]),.sum(sum[2]),.cOut());
FA A3(.A(A[3]),.B(B[3]), .cIn(carry[2]),.sum(sum[3]),.cOut());
FA A4(.A(A[4]),.B(B[4]), .cIn(carry[3]),.sum(sum[4]),.cOut());
FA A5(.A(A[5]),.B(B[5]), .cIn(carry[4]),.sum(sum[5]),.cOut());
FA A6(.A(A[6]),.B(B[6]), .cIn(carry[5]),.sum(sum[6]),.cOut());
FA A7(.A(A[7]),.B(B[7]), .cIn(carry[6]),.sum(sum[7]),.cOut());
FA A8(.A(A[8]),.B(B[8]), .cIn(carry[7]),.sum(sum[8]),.cOut());
FA A9(.A(A[9]),.B(B[9]), .cIn(carry[8]),.sum(sum[9]),.cOut());
FA A10(.A(A[10]),.B(B[10]), .cIn(carry[9]),.sum(sum[10]),.cOut());
FA A11(.A(A[11]),.B(B[11]), .cIn(carry[10]),.sum(sum[11]),.cOut());
FA A12(.A(A[12]),.B(B[12]), .cIn(carry[11]),.sum(sum[12]),.cOut());
FA A13(.A(A[13]),.B(B[13]), .cIn(carry[12]),.sum(sum[13]),.cOut());
FA A14(.A(A[14]),.B(B[14]), .cIn(carry[13]),.sum(sum[14]),.cOut());
FA A15(.A(A[15]),.B(B[15]), .cIn(carry[14]),.sum(sum[15]),.cOut());
FA A16(.A(A[16]),.B(B[16]), .cIn(carry[15]),.sum(sum[16]),.cOut());
FA A17(.A(A[17]),.B(B[17]), .cIn(carry[16]),.sum(sum[17]),.cOut());
FA A18(.A(A[18]),.B(B[18]), .cIn(carry[17]),.sum(sum[18]),.cOut());
FA A19(.A(A[19]),.B(B[19]), .cIn(carry[18]),.sum(sum[19]),.cOut());
FA A20(.A(A[20]),.B(B[20]), .cIn(carry[19]),.sum(sum[20]),.cOut());
FA A21(.A(A[21]),.B(B[21]), .cIn(carry[20]),.sum(sum[21]),.cOut());
FA A22(.A(A[22]),.B(B[22]), .cIn(carry[21]),.sum(sum[22]),.cOut());
FA A23(.A(A[23]),.B(B[23]), .cIn(carry[22]),.sum(sum[23]),.cOut());
FA A24(.A(A[24]),.B(B[24]), .cIn(carry[23]),.sum(sum[24]),.cOut());
FA A25(.A(A[25]),.B(B[25]), .cIn(carry[24]),.sum(sum[25]),.cOut());
FA A26(.A(A[26]),.B(B[26]), .cIn(carry[25]),.sum(sum[26]),.cOut());
FA A27(.A(A[27]),.B(B[27]), .cIn(carry[26]),.sum(sum[27]),.cOut());
FA A28(.A(A[28]),.B(B[28]), .cIn(carry[27]),.sum(sum[28]),.cOut());
FA A29(.A(A[29]),.B(B[29]), .cIn(carry[28]),.sum(sum[29]),.cOut());
FA A30(.A(A[30]),.B(B[30]), .cIn(carry[29]),.sum(sum[30]),.cOut());
FA A31(.A(A[31]),.B(B[31]), .cIn(carry[30]),.sum(sum[31]),.cOut());


CLL CLL1 (.A(A[3:0]),.B(B[3:0]),.cIn(cIn),.carry(carry[3:0]));
CLL CLL2 (.A(A[7:4]),.B(B[7:4]),.cIn(carry[3]),.carry(carry[7:4]));
CLL CLL3 (.A(A[11:8]),.B(B[11:8]),.cIn(carry[7]),.carry(carry[11:8]));
CLL CLL4 (.A(A[15:12]),.B(B[15:12]),.cIn(carry[11]),.carry(carry[15:12]));
CLL CLL5 (.A(A[19:16]),.B(B[19:16]),.cIn(carry[15]),.carry(carry[19:16]));
CLL CLL6 (.A(A[23:20]),.B(B[23:20]),.cIn(carry[19]),.carry(carry[23:20]));
CLL CLL7 (.A(A[27:24]),.B(B[27:24]),.cIn(carry[23]),.carry(carry[27:24]));
CLL CLL8 (.A(A[31:28]),.B(B[31:28]),.cIn(carry[27]),.carry(carry[31:28]));

assign sum[32] = carry[31]; 
endmodule