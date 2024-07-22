module calculator_tb;
    reg [3:0] a, b;
    reg [1:0] op;
    wire [7:0] result;
    
    calculator uut (
        .a(a),
        .b(b),
        .op(op),
        .result(result)
    );
    
    initial begin
        // Test Addition
        a = 4'd5; b = 4'd3; op = 2'b00;
        #10;
        $display("Addition: %d + %d = %d", a, b, result);

        // Test Subtraction
        a = 4'd5; b = 4'd3; op = 2'b01;
        #10;
        $display("Subtraction: %d - %d = %d", a, b, result);

        // Test Multiplication
        a = 4'd5; b = 4'd3; op = 2'b10;
        #10;
        $display("Multiplication: %d * %d = %d", a, b, result);

        // Test Division
        a = 4'd6; b = 4'd3; op = 2'b11;
        #10;
        $display("Division: %d / %d = %d", a, b, result);

        // Test Division by Zero
        a = 4'd6; b = 4'd0; op = 2'b11;
        #10;
        $display("Division by Zero: %d / %d = %d", a, b, result);
        
        $stop;
    end
endmodule
