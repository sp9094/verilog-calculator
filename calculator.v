module calculator(
    input [3:0] a, b,
    input [1:0] op,
    output reg [7:0] result
);
    always @(*) begin
        case (op)
            2'b00: result = a + b;  // Addition
            2'b01: result = a - b;  // Subtraction
            2'b10: result = a * b;  // Multiplication
            2'b11: if (b != 0) result = a / b;  // Division
                   else result = 8'b00000000;   // Handle division by zero
            default: result = 8'b00000000;
        endcase
    end
endmodule
