module top
(
  input [7:0] A, B,
  input cIn,
  output compare
);
 
// Internal wires
logic [8:0] sumCRA, sumCLA;

// full adders in series
CRA CRA0(.A(A),.B(B), .cIn(cIn),.sum(sumCRA));

assign compare = sumCLA & sumCRA;