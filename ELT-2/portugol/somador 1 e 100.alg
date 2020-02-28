algoritmo "somador 1 e 100"
// Função :soma valores e encerra o programa caso o valor esteja entre 1 e 100
// Autor :Victor Hugo Faria & Paulo Henrique Frade
// Data : 29-03-2017
// Seção de Declarações 
var
num1,num2,num3: inteiro//declara as variáveis
inicio
// Seção de Comandos 
repita
Escreval("Escreva um valor, entre 1 a 100 o programa não soma e  encerra")
leia(num1)//Lê a resposta da pergunta para a variável num1
Escreval("Escreva outro valor, entre 1 a 100 o programa não soma e encerra")
leia(num2)//Lê a resposta da pergunta para a variável num2
Se((num1-100)<=0) entao//utiliza lógica para ver se x ou y estão entre 1 e 100
num3<-1
fimse
Se((num2-100)<=0) entao
num3<-1
fimse
se (num3=1) entao
escreva(" ")
senao
Escreval("Sua soma é:") //Se não estão entre 1 e 100 escreve a resposta
Escreval(num1+num2)//calcula a soma
fimse
ate(num1<101)//finaliza a estrutura de repetição quando num1<101
fimalgoritmo
