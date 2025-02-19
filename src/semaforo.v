module Semaforo(
    input wire clk,
    input wire reset,
    input wire pedestre,
    output reg luzVerde,
    output reg luzAmarela,
    output reg luzVermelha
);

reg [1:0] estado;
reg [4:0] tempo;
reg zeraTempo;

always @(posedge clk) begin
    if (zeraTempo)
        tempo = 0;
    else
        tempo = tempo + 1;
end


always @(posedge clk) begin
  if (reset == 1) begin
    estado = 2'b00;
    zeraTempo = 1;
  end
  else begin
    zeraTempo = 0;
    case (estado)
      2'b00: begin
        if (tempo == 5'd20) begin
          estado = 2'b01;
          zeraTempo = 1;
        end
        else if (pedestre) begin
          estado = 2'b01;
          zeraTempo = 1;
        end
      end
      2'b01: begin
        if (tempo == 5'd10) begin
          estado = 2'b10;
          zeraTempo = 1;
        end
      end
      2'b10: begin
        if (tempo == 5'd30) begin
          estado = 2'b00;
          zeraTempo = 1;
        end
      end
      default: begin
        estado = 2'b00;
        zeraTempo = 1;
      end
    endcase
  end
end


always @(estado) begin
  case (estado)
    2'b00: begin
      luzVerde <= 1;
      luzAmarela <= 0;
      luzVermelha <= 0;
    end
    2'b01: begin
      luzVerde <= 0;
      luzAmarela <= 1;
      luzVermelha <= 0;
    end
    2'b10: begin
      luzVerde <= 0;
      luzAmarela <= 0;
      luzVermelha <= 1;
    end
    default: begin
      luzVerde <= 0;
      luzAmarela <= 0;
      luzVermelha <= 0;
    end
  endcase
end

endmodule
