algoritmo "Calculador de peso ideal"
// Fun��o :Calcula o peso ideal para a pessoa a partir da altura da mesma
// Autor :Victor Hugo Faria Dias Magalh�es
// Data : 29/03/2017
// Se��o de Declara��es 
var
sexo, nome, opcao: caractere//define vari�veis de texto
altura: real  //define vari�veis num�ricas
inicio
// Se��o de Comandos
repita
limpatela
Escreval("___________________________________________________________________________________")
Escreval ("                            CALCULADOR DE PESO IDEAL")//Cabe�alho(est�tico)
Escreval("___________________________________________________________________________________")
Escreval ("Qual � o Seu Nome?")//faz uma pergunta ao usu�rio
Leia(nome)//L� a resposta para a vari�vel "nome"
EScreval ("Qual � o seu sexo? M para masculino e F para feminino")//faz outra pergunta ao usu�rio
Leia(sexo)//L� a resposta para a vari�vel "sexo"
Escreval("qual � a sua altura em metros?")//faz outra pergunta ao usu�rio
Leia(altura)//L� a resposta para a vari�vel "altura"
Se (sexo="m") entao //define o c�lculo masculino a partir da vari�vel "sexo"
Escreva ("Seu peso ideal ")//inicia a resposta
Escreva(nome)//escreve o nome do usu�rio
Escreva(" � ")//continua a resposta
Escreva ((72.7*altura)-58)//calcula o valor do peso ideal masculino a partir da "altura"
Escreval (" kg")//finaliza a resposta
fimse
Se (sexo="f") entao// define o c�lculo feminino a partir da v�riavel "sexo"
Escreva ("Seu peso ideal ")//inicia a resposta
Escreva(nome)//escreve o nome do usu�rio
Escreva(" � ")//continua a resposta
Escreva ((62.1*altura)-44.7)//calcula o valor do peso ideal feminino a partir da "altura"
Escreval (" kg") //finaliza a resposta
fimse
Escreval ("Quer calcular mais alguma coisa? S para sim e N para n�o")//faz outra pergunta
leia(opcao) //l� a resposta para a vari�vel "opcao"
ate(opcao="n")//define se o programa reinicia a partir da vari�vel "opcao"


fimalgoritmo
