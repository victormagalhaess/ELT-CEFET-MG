algoritmo "somador 1 e 100"
// Fun��o :soma valores e encerra o programa caso o valor esteja entre 1 e 100
// Autor :Victor Hugo Faria & Paulo Henrique Frade
// Data : 29-03-2017
// Se��o de Declara��es 
var
num1,num2,num3: inteiro//declara as vari�veis
inicio
// Se��o de Comandos 
repita
Escreval("Escreva um valor, entre 1 a 100 o programa n�o soma e  encerra")
leia(num1)//L� a resposta da pergunta para a vari�vel num1
Escreval("Escreva outro valor, entre 1 a 100 o programa n�o soma e encerra")
leia(num2)//L� a resposta da pergunta para a vari�vel num2
Se((num1-100)<=0) entao//utiliza l�gica para ver se x ou y est�o entre 1 e 100
num3<-1
fimse
Se((num2-100)<=0) entao
num3<-1
fimse
se (num3=1) entao
escreva(" ")
senao
Escreval("Sua soma �:") //Se n�o est�o entre 1 e 100 escreve a resposta
Escreval(num1+num2)//calcula a soma
fimse
ate(num1<101)//finaliza a estrutura de repeti��o quando num1<101
fimalgoritmo
