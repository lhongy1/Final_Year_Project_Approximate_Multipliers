module imageTest;

    reg [7:0] a, b;
    wire [9:0] ps1, ps2, ps3, ps4;
    wire [15:0] p;
    integer i;
    integer file1, file2;
    integer image_data1 [0:65535];
    integer image_data2 [0:65535];

    carryaware84444 dut (
        .a(a),
        .b(b),
        .ps1(ps1),
        .ps2(ps2),
        .ps3(ps3),
        .ps4(ps4),
        .p(p)
    );

    initial begin
        file1 = $fopen("lena.txt", "r");
        if (file1 == 0) begin
            $display("Error: could not open file image_data1.txt");
            $finish;
        end

        file2 = $fopen("slope.txt", "r");
        if (file2 == 0) begin
            $display("Error: could not open file image_data2.txt");
            $finish;
        end

        i = 0;
        while (!$feof(file1) && !$feof(file2) && i < 65536) begin
            $fscanf(file1, "%d\n", image_data1[i]);
            $fscanf(file2, "%d\n", image_data2[i]);
            i = i + 1;
        end
        $fclose(file1);
        $fclose(file2);

        for (i = 0; i < 65536; i = i + 1) begin
            a = image_data1[i];
            b = image_data2[i];
            
            #0.01;
            $display ("%d", $signed(p));

        end
        
        $display("Image multiplication completed.");
        $finish;
    end

endmodule
