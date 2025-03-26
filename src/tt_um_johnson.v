module tt_um_johnson (
    input         clk,
    input         rst_n,    // Active-low reset
    input         ena,
    input  [7:0]  ui_in,    // Dedicated input (unused in this design)
    output reg [7:0] uo_out, // Dedicated output (your design output)
    input  [7:0]  uio_in,   // IO input path (unused)
    output [7:0]  uio_out,  // IO output path (unused)
    output [7:0]  uio_oe    // IO enable (unused)
);

// Tie unused IO to default values (or leave unconnected as needed)
assign uio_out = 8'b0;
assign uio_oe  = 8'b0;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        uo_out <= 8'b0;
    else
        // Perform a Johnson counter shift
        uo_out <= {~uo_out[7], uo_out[6:0]};
end

endmodule
