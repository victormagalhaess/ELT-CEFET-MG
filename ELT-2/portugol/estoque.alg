algoritmo "Calculadora de Estoque"
// Fun��o :Calcula se � necess�rio ou n�o repor o estoquee
// Autor :Victor Hugo Faria Dias Magalh�es
// Data : 29/03/2017
// Se��o de Declara��es 
var
atu, max, min, med: real//define vari�veis num�ricas
inicio
// Se��o de Comandos 

Escreval("___________________________________________________________________________________")
Escreval ("                         Calculador de compra e estoques")//Cabe�alho (est�tico)
Escreval("___________________________________________________________________________________")
Escreval("Qual � a quantidade atual de produtos em estoque?") //faz uma pergunta ao usu�rio
leia(atu)//carrega essas respostas para a vari�vel "atu"
Escreval("Qual � a quantidade m�xima poss�vel?")//faz outra pergunta ao usu�rio
leia(max)//carrega a resposta para a vari�vel "max"
Escreval("Qual � a quantidade m�nima poss�vel?")//faz mais uma pergunta ao usu�rio
leia(min)//carrega a resposta para a vari�vel "min"
med<-(max+min)/2  //carrega a resposta da equa��o da m�dia para a vari�vel "med"
se (atu<med) entao//imp�e uma condi��o e
escreval("Efetuar compra!")//Escreve uma resposta
senao entao
escreval("N�o efetuar compra")//escreve outra resposta
fimse
fimalgoritmo //finaliza o algoritmo
