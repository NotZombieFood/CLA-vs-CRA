/*
            --------------
            |            |
            |            |
      A --->|            |
            |     FA     |----> cOut
      B --->|            |----> sum
            |            |
    cIn --->|            |-
            |            |
            --------------


*/
module FA
(
  input A,B, cIn
  output sum, cOut
);
  
   assign cOut = (A&B)+(A&cIn)+(B&cIn);
   assign sum = A^B^C;

endmodule