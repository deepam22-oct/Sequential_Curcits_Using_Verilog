// Behavioral Modeling

module decoder_2_4 (
  input  [1:0] in,
  output reg [3:0] out
);

always @(*) begin
  case (in)
    2'b00: out = 4'b0001;
    2'b01: out = 4'b0010;
    2'b10: out = 4'b0100;
    2'b11: out = 4'b1000;
    default: out = 4'b0000;
  endcase
end

endmodule

// one-hot output desing 

module decoder_2_4(
  input  [1:0] in,
  output reg [3:0] out
);

always @(*) begin
  out = 0;
  out[in] = 1'b1;   // one-hot output
end

endmodule
