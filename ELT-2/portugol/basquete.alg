algoritmo "basquete"
// Função :Calcula a média da altura dos jogadores de um time
// Autor :Victor Hugo Faria & Paulo Henrique Frade
// Data : 05/04/2017
// Seção de Declarações 
var
comp1,comp2,alturas,numjog: real//declara as variáveis
inicio
// Seção de Comandos 
Escreval("Escreva número de jogadores")//faz uma pergunta ao usuário
leia(numjog)//lê a resposta para a variável numjog
enquanto comp1<numjog faca//usa a estrutura de repetição "enquanto"
Escreval("Escreva as alturas em metros")//faz outra pergunta ao usuário
leia(alturas)//lê as respostas para a variável alturas
comp1<-comp1+1//faz as multiplas somas
comp2<-comp2+alturas//fas as multiplas somas
fimenquanto
Escreva("A média das alturas em m é: ")//começa a escrever a resposta
Escreval(comp2/numjog)//escreve a média das alturas
fimalgoritmo
