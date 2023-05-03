module SeqDetect_FSM(
    input clk,
    input reset,
    input Bit_Stream,
    output reg Out_BitStream
);
parameter State_Reg_Width = 3;
wire [State_Reg_Width-1:0] S_0 = 3'b000,
                          S_1 = 3'b001,
                          S_11 = 3'b010,
                          S_110 = 3'b011,
                          S_1101 = 3'b100;

reg [State_Reg_Width-1 : 0] Next_State , Curr_State;
integer i = 0;
always @(posedge clk ) begin
    if(reset)begin
        Curr_State <= S_0;
    end
    else begin
         Curr_State <= Next_State;
	 i = i+1;
    end
end

always @(*) begin
    
    Out_BitStream = 0;
    case (Curr_State)

        S_0:begin
            if(Bit_Stream == 1)begin
                Next_State = S_1;
            end
            else begin
                Next_State = S_0;
            end
        end

        S_1:begin
            if(Bit_Stream == 1)begin
                Next_State = S_11;
            end
            else begin
                Next_State = S_0;
            end
        end

        S_11:begin
            if(Bit_Stream == 0)begin
                Next_State = S_110;
            end
            else begin
                Next_State = S_11;
            end
        end

        S_110:begin
            if(Bit_Stream == 1)begin
                Next_State = S_1101;
            end
            else begin
                Next_State = S_0;
            end
        end

        S_1101:begin
            if(Bit_Stream == 0)begin
                Out_BitStream = 1;
                Next_State = S_0;
		$display("Pattern Found at iteration %d",i);
            end
            else begin
                Out_BitStream = 0;
                Next_State = S_11;
            end
        end
    endcase

end

endmodule

