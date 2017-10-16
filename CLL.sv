module CLL 
(
  input [3:0] A, B,
  input cIn,
  output  [3:0] carry
);

// Wires
logic [3:0] P,G;

// Generating
assign G[0] = A[0]&B[0];
assign G[1] = A[1]&B[1];
assign G[2] = A[2]&B[2];
assign G[3] = A[3]&B[3];

// Propagating
assign P[0] = A[0]+B[0];
assign P[1] = A[1]+B[1];
assign P[2] = A[2]+B[2];
assign P[3] = A[3]+B[3];

// Equations 
assign carry[0] = G[0]+(P[0]&cIn);
assign carry[1] = G[1]+(G[0]&P[1])+(cIn&P[0]&P[1]);
assign carry[2] = G[2]+(G[1]&P[2])+(G[0]&P[1]&P[2])+(cIn&P[0]&P[1]&P[2]);
assign carry[3] = G[3]+(G[2]&P[3])+(G[1]&P[2]&P[3])+(G[0]&P[1]&P[2]&P[3])+(cIn&P[0]&P[1]&P[2]&P[3]);

endmodule