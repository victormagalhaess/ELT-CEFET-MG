algoritmo "tabuada"
// Função :escreve uma tabuada pré definida para um número
// Autor :Victor Hugo Faria & Paulo Henrique Frade
// Data : 05/04/2017
// Seção de Declarações 
var
mult, tabu, def: real //declara as variáveis
inicio
// Seção de Comandos
def<-(-1)//atribui a def o valor 1
Escreval(" ~~~~~Tabuada~~~~~~")
Escreval(" Qual número você escolheu para multiplicar?")  //faz uma pergunta
Leia(mult)//Lê a resposta para mult
Escreval("Até que número você quer que seja multiplicado?")//faz outra pergunta
leia(tabu)//Lê a resposta para tabu
enquanto def<tabu faca //usa uma estrutura de repetição para escrever a tabuada
def<-def+1
escreval(mult*def)//escreve conta por conta
fimenquanto
fimalgoritmo
