algoritmo "comparador"
// Fun��o :comparar valores e exibir qual � maior ou menor
// Autor :Victor Hugo Faria & Paulo Henrique Frade
// Data : 05/04/2017
// Se��o de Declara��es
var
num1,menorval,maiorval: inteiro//declara as vari�veis
inicio
// Se��o de Comandos
menorval<-999999999//atribui valores limites iniciais
maiorval<-(-999999999)
Escreval("Escreva n�meros para comparar entre -999999999 e 999999999")
Escreval("e quando quiser finalizar digite 0")//inicia a pergunta ao usu�rio
repita
leia(num1) //l� os n�meros para a vari�vel num1
se(num1=0) entao //encerra o programa se num1=0
escreval("...")
fimse
se(num1>maiorval) entao//se num1>maiorval maiorval passa a ser num1
maiorval<-num1
fimse
se(num1<menorval) entao//se num1<menorval menorval passa a ser num1
menorval<-num1
fimse
ate(num1=0)  //encerra a repeti��o quando num1=0
Escreval("O maior valor foi:")  //escreve o maior e o menor valor
escreval(maiorval)
Escreval("O menor valor foi:")
escreval(menorval)


fimalgoritmo

