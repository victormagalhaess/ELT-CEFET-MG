algoritmo "Calculador de Saldo total"
// Função :Calcula o quanto um usuário tem em sua conta
// Autor :Victor Hugo Faria Dias Magalhães
// Data : 29/03/2017
// Seção de Declarações 
var
num, sal, deb, cred, tot: real// define as variáveis numéricas
inicio
// Seção de Comandos 


Escreval("___________________________________________________________________________________")
Escreval ("                            Calculador de saldo")//cabeçalho(estético"
Escreval("___________________________________________________________________________________")
Escreval ("Qual é o número da sua conta?")//faz uma pergunta ao usuário
leia(num) //Lê a resposta para a variável "num"
Escreval ("Qual é o seu saldo?")//faz outra pergunta ao usuário
leia(sal)//Lê a resposta para a variável "sal"
Escreval ("Qual é o seu débito?")//faz outra pergunta ao usuário
leia(deb)//Lê a resposta para a variável "deb"
Escreval ("Qual é o seu crédito?")//faz outra pergunta ao usuário
leia(cred)//Lê a resposta para a variável cred
tot<-(sal-deb+cred)//calcula o saldo total e carega ele oara a variável "tot"
Escreval("Seu saldo atual, Usuário ")//Inicia a resposta
Escreva (num)
Escreva(" é de ")//continua a resposta
escreva(tot)//escreve o saldo atual
escreval(" R$")//finaliza a resposta
Se(tot<0) entao//inicia uma condição para calcular entre saldo negativo e positivo
Escreval("Seu saldo é negativo! :(") //fornece a resposta apropriada a alternativa
Senao entao
Escreva("Seu saldo é positivo! :P") //fornece outra mensagem caso a alternativa não seja igual a primeira
fimse
fimalgoritmo  //termina o algoritmo
