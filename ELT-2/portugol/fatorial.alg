algoritmo "fatorial"
// Fun��o :Calcula o Fatorial dos n�meros
// Autor :Victor Hugo Faria & Paulo Henrique Frade
// Data : 29-03-2017
// Se��o de Declara��es 
var
numfatorial,num1,num2: inteiro // define as vari�veis
inicio
// Se��o de Comandos
Escreval("Digite o n�mero cujo fatorial deve ser calculado")// faz uma pergunta
leia(numfatorial)//carrega a resposta para a variavel "numfatorial"
num1<-1 //atribui a variavel num1 o valor 1
para num2 de 1 ate numfatorial faca //estrutura para para fazer uma contagem
num1<-num1*num2 //calcula o fatorial
fimpara
escreva(numfatorial) //escreve a resposta do c�lculo
Escreva(" ! �:")
escreval(num1)
fimalgoritmo
