algoritmo "tabuada"
// Fun��o :escreve uma tabuada pr� definida para um n�mero
// Autor :Victor Hugo Faria & Paulo Henrique Frade
// Data : 05/04/2017
// Se��o de Declara��es 
var
mult, tabu, def: real //declara as vari�veis
inicio
// Se��o de Comandos
def<-(-1)//atribui a def o valor 1
Escreval(" ~~~~~Tabuada~~~~~~")
Escreval(" Qual n�mero voc� escolheu para multiplicar?")  //faz uma pergunta
Leia(mult)//L� a resposta para mult
Escreval("At� que n�mero voc� quer que seja multiplicado?")//faz outra pergunta
leia(tabu)//L� a resposta para tabu
enquanto def<tabu faca //usa uma estrutura de repeti��o para escrever a tabuada
def<-def+1
escreval(mult*def)//escreve conta por conta
fimenquanto
fimalgoritmo
