module testbench_8;

    reg [7:0] a, b;
    wire [9:0] ps1, ps2, ps3, ps4;
    wire [15:0] p;
    integer i, j;

    carryaware80444 dut (
        .a(a),
        .b(b),
        .ps1(ps1),
        .ps2(ps2),
        .ps3(ps3),
        .ps4(ps4),
        .p(p)
    );

initial 
begin

//a=8'b11110101; b=8'b00010001; #1;
//a=8'b11110101; b=8'b00010011; #1;
//a=8'b11110111; b=8'b00010011; #1;

//$finish;

    for (j = 0; j <= 255; j=j + 1) begin
        for (i = 0; i <= 255; i=i + 1) begin
            b=j;
            a=i;
            #0.01;
            $display ("%d",$signed(p));
        end
    end
    $stop;
    
end                        
endmodule
