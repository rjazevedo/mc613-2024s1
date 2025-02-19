# Atividade 4

!!! note "Objetivos"
    Implementar o primeiro código em Verilog que utilize a placa de desenvolvimento DE1-SoC. Você deve implementar uma calculadora capaz de realizar somas e subtrações.

## Introdução

A placa de desenvolvimento DE1-SoC tem uma série de periféricos que podem ser utilizados para a implementação de circuitos digitais. Nesta atividade, vamos utilizar os switches, os displays de 7 segmentos e os botões da placa para implementar uma calculadora capaz de realizar somas e subtrações.

![Placa DE1-SoC](img/DE1-SoC.jpeg)

## Materiais

Antes de prosseguir, faça o [tutorial de uso do kit de desenvolvimento DE1-SoC](quartus.md).

Você já fez o [Tutorial de Verilog](https://www.ic.unicamp.br/~rodolfo/Cursos/verilog)?

## Descrição

Seu circuito deve ter as seguintes propriedades:

* O total atual deve sempre ser mostrado no display de 7 segmentos, para isso você precisa implementar conversor de binário para BCD.
* Cada número sempre deverá ser inserido em binário, através dos switches da placa.
* Reserve o primeiro botão (da esquerda) da placa para apenas mostrar o valor, selecionado nos switches de entrada, no display de 7 segmentos. Isso serve para você depurar sua entrada. Enquanto o botão estiver pressionado, você deve mostrar o valor dos switches no discplay. Quando o botão for solto, você pode retornar ao modelo anterior e mostrar o total atual.
* Reserve o próximo botão para efetuar a soma. Toda vez que ele for pressionado, o total que está mostrado no display deve ser adicionado do valor dos switches e o novo total deve ser mostrado.
* Reserve o próximo botão para efetuar a subtração de forma similar ao que você fez com a soma.
* Reserve um último botão para zerar o total.

Você deve implementar o circuito em Verilog, juntamente com um testbench para verificar as condições de funcionamento. Ao utilizar o Quartus, você não incluirá o testbench no seu projeto, mas deve submetê-lo junto com o código Verilog.

O código base está disponível no GitHub Classroom. O código tem poucos testes e você deve adicionar seus testes extras para garantir que o circuito funcione corretamente.

## Algumas dicas de implementação

Para uma melhor implementação, crie e utilize um módulo para fazer a conversão de valor para o display de 7 segmentos. Coloque num arquivo separado e utilize esse componente para cada um dos displays disponíveis na placa. 

Cuidado com os botões que ficarão apertados por mais de um ciclo de clock.

!!! task "Tarefa 1"
    Implemente a calculadora com os valores em hexadecimal no display de 7 segmentos. Essa versão não é para entrega.

!!! task "Tarefa 2"
    Implemente a calculadora com os valores em decimal no display de 7 segmentos. Essa versão é para entrega conforme GitHub Classroom.

!!! note "Conclusão"
    Agora você já sabe não só projetar hardware em Verilog como também programar na placa de desenvolvimento com FPGA utilizada nessa disciplina. A partir de agora, você pode começar a pensar em projetos mais complexos e interessantes para a disciplina.

!!! prazo "Data de entrega"
    A data de entrega será até dia 03/04 até as 15h
