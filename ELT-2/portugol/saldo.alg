algoritmo "Calculador de Saldo total"
// Fun��o :Calcula o quanto um usu�rio tem em sua conta
// Autor :Victor Hugo Faria Dias Magalh�es
// Data : 29/03/2017
// Se��o de Declara��es 
var
num, sal, deb, cred, tot: real// define as vari�veis num�ricas
inicio
// Se��o de Comandos 


Escreval("___________________________________________________________________________________")
Escreval ("                            Calculador de saldo")//cabe�alho(est�tico"
Escreval("___________________________________________________________________________________")
Escreval ("Qual � o n�mero da sua conta?")//faz uma pergunta ao usu�rio
leia(num) //L� a resposta para a vari�vel "num"
Escreval ("Qual � o seu saldo?")//faz outra pergunta ao usu�rio
leia(sal)//L� a resposta para a vari�vel "sal"
Escreval ("Qual � o seu d�bito?")//faz outra pergunta ao usu�rio
leia(deb)//L� a resposta para a vari�vel "deb"
Escreval ("Qual � o seu cr�dito?")//faz outra pergunta ao usu�rio
leia(cred)//L� a resposta para a vari�vel cred
tot<-(sal-deb+cred)//calcula o saldo total e carega ele oara a vari�vel "tot"
Escreval("Seu saldo atual, Usu�rio ")//Inicia a resposta
Escreva (num)
Escreva(" � de ")//continua a resposta
escreva(tot)//escreve o saldo atual
escreval(" R$")//finaliza a resposta
Se(tot<0) entao//inicia uma condi��o para calcular entre saldo negativo e positivo
Escreval("Seu saldo � negativo! :(") //fornece a resposta apropriada a alternativa
Senao entao
Escreva("Seu saldo � positivo! :P") //fornece outra mensagem caso a alternativa n�o seja igual a primeira
fimse
fimalgoritmo  //termina o algoritmo
