algoritmo "Calculadora de Estoque"
// Função :Calcula se é necessário ou não repor o estoquee
// Autor :Victor Hugo Faria Dias Magalhães
// Data : 29/03/2017
// Seção de Declarações 
var
atu, max, min, med: real//define variáveis numéricas
inicio
// Seção de Comandos 

Escreval("___________________________________________________________________________________")
Escreval ("                         Calculador de compra e estoques")//Cabeçalho (estético)
Escreval("___________________________________________________________________________________")
Escreval("Qual é a quantidade atual de produtos em estoque?") //faz uma pergunta ao usuário
leia(atu)//carrega essas respostas para a variável "atu"
Escreval("Qual é a quantidade máxima possível?")//faz outra pergunta ao usuário
leia(max)//carrega a resposta para a variável "max"
Escreval("Qual é a quantidade mínima possível?")//faz mais uma pergunta ao usuário
leia(min)//carrega a resposta para a variável "min"
med<-(max+min)/2  //carrega a resposta da equação da média para a variável "med"
se (atu<med) entao//impõe uma condição e
escreval("Efetuar compra!")//Escreve uma resposta
senao entao
escreval("Não efetuar compra")//escreve outra resposta
fimse
fimalgoritmo //finaliza o algoritmo
