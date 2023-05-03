module PatternDetect_TB ();

    reg clk_TB;
    assign clk_TB =1;
    always #(50) clk_TB = ~clk_TB; // I wrote 50 since if i define time it gives Error in ModelSim

    reg reset_TB;
    reg Bit_Stream_TB;
    wire Out_BitStream_TB;

SeqDetect_FSM DUT(.clk(clk_TB) , .reset(reset_TB) , .Bit_Stream(Bit_Stream_TB) , .Out_BitStream(Out_BitStream_TB) );

//Test: 11011 1010 1 1010 1111010
task SET_Clear_BIT(input Bit_TB);
begin
    Bit_Stream_TB = Bit_TB;
    #100
    Bit_Stream_TB = 0;
end
endtask

initial begin
   reset_TB = 1;
   SET_Clear_BIT(0);
   reset_TB = 0;

   SET_Clear_BIT(1);
   SET_Clear_BIT(1);
   SET_Clear_BIT(0);
   SET_Clear_BIT(1); 
   SET_Clear_BIT(1);

   SET_Clear_BIT(1);
   SET_Clear_BIT(0);
   SET_Clear_BIT(1);
   SET_Clear_BIT(0);

   SET_Clear_BIT(1);

   SET_Clear_BIT(1);
   SET_Clear_BIT(0);
   SET_Clear_BIT(1);
   SET_Clear_BIT(0);

   SET_Clear_BIT(1);
   SET_Clear_BIT(1);
   SET_Clear_BIT(1);
   SET_Clear_BIT(1);
   SET_Clear_BIT(0);
   SET_Clear_BIT(1);
   SET_Clear_BIT(0);



$finish();
end


endmodule