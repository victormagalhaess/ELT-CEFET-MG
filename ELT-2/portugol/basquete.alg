algoritmo "basquete"
// Fun��o :Calcula a m�dia da altura dos jogadores de um time
// Autor :Victor Hugo Faria & Paulo Henrique Frade
// Data : 05/04/2017
// Se��o de Declara��es 
var
comp1,comp2,alturas,numjog: real//declara as vari�veis
inicio
// Se��o de Comandos 
Escreval("Escreva n�mero de jogadores")//faz uma pergunta ao usu�rio
leia(numjog)//l� a resposta para a vari�vel numjog
enquanto comp1<numjog faca//usa a estrutura de repeti��o "enquanto"
Escreval("Escreva as alturas em metros")//faz outra pergunta ao usu�rio
leia(alturas)//l� as respostas para a vari�vel alturas
comp1<-comp1+1//faz as multiplas somas
comp2<-comp2+alturas//fas as multiplas somas
fimenquanto
Escreva("A m�dia das alturas em m �: ")//come�a a escrever a resposta
Escreval(comp2/numjog)//escreve a m�dia das alturas
fimalgoritmo
