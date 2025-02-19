# Atividade 5

!!! note "Objetivos"
    Implementar um módulo de hardware em Verilog para utilizar a saída VGA do kit de desenvolvimento DE1-SoC da Terasic, Altera.

## Introdução

A placa de desenvolvimento DE1-SoC tem uma série de periféricos que podem ser utilizados para a implementação de circuitos digitais. Nesta atividade, vamos utilizar a saída VGA do kit DE1-SoC para gerar um sinal de vídeo. Informações detalhadas sobre temporização e conexão podem ser encontradas na página 32 do manual do kit, que está disponível no Google Classroom e também no site do fabricante.

## Detalhes

O sinal VGA é gerado através de um mecanismo de varredura na tela do computador. A varredura será sempre por linhas e, no nosso caso, seguirá por todas as linhas em sequência (da linha 0 até a última conforme a resolução). Dentro de cada linha, o processo se repete coluna a coluna, da coluna 0 (primeira) até a última conforme a resolução. 

O processo de geração de sinal começa com a sincronização vertical, que indica o início de uma nova imagem. Em seguida, a sincronização horizontal indica o início de uma nova linha. Entre as sincronizações, temos o sinal de vídeo, que é o sinal que efetivamente desenha a imagem na tela. Durante cada sincronização, os dados de cores (RGB) devem ser zero. 

O sinal de vídeo é composto por 3 sinais, um para cada cor (R, G e B). Cada sinal de cor é um sinal analógico que varia de 0 a 0.7V, que é gerado a partir de 8 bits fornecidos como saída pela FPGA e convertidos através de um DAC (conversor digital analógico). Para gerar o sinal de vídeo, você deve utilizar um contador para gerar os sinais de sincronização vertical e horizontal e um gerador de cores para gerar os sinais de cor.

Veja as figuras 3-22, 3-23 e as tabelas 3-14, 3-15 e 3-16 do manual do kit para detalhes sobre a temporização e a conexão dos sinais.

## O que fazer

Você deve criar um módulo VGA em Verilog que seja capaz de gerar um sinal de vídeo VGA na resolução 640x480. O mesmo módulo deve ser utilizado em todas as tarefas abaixo. Você pode criar outros módulos extras para cada tarefa mas todos tem que compartilhar o mesmo módulo VGA. Implemente o testbench para o módulo VGA no arquivo `tb_vga.v`.

!!! task "Tarefa 1"
    Faça um circuito que seja capaz de gerar uma imagem VGA de 640x480 pixels. A imagem deve ser uma imagem estática, ou seja, não precisa ser atualizada. A imagem deve ser composta por 3 cores: vermelho, verde e azul. Cada cor deve ocupar 1/3 da tela na vertical. O arquivo de alto nível deve ser o `top1.v`.

!!! task "Tarefa 2"
    Faça um circuito que seja capaz de gerar uma imagem VGA de 640x480 pixes. A imagem deve ser de uma cor base (preta) e permitir, através de 3 botões, os valores das cores sejam incrementados. A cor resultante deve ser mostrada na tela. Você pode incrementar os valores das cores de 8 em 8. O arquivo de alto nível deve ser o `top2.v`.

!!! task "Tarefa 3"
    Faça um circuito que seja capaz de gerar uma imagem VGA de 640x480 pixels. A imagem deve ser de uma cor base (preta) e ter um quadrado de 16x16 ao centro da tela com uma cor diferente da cor base. Deve ser possível utilizar os 4 botões para movimentar o quadrado para cima, para baixo, para a esquerda e para a direita na tela. Ao chegar em uma borda, o quadrado deve ser transposto para o outro lado da tela. Você deve fazer o passo de 16 pixels. O arquivo de alto nível deve ser o `top3.v`.

## Entrega

O código deve ser entregue no GitHub Classroom. O código deve ser entregue até o dia 17/04 até as 15h.
