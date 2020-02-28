algoritmo "Calculador de peso ideal"
// Função :Calcula o peso ideal para a pessoa a partir da altura da mesma
// Autor :Victor Hugo Faria Dias Magalhães
// Data : 29/03/2017
// Seção de Declarações 
var
sexo, nome, opcao: caractere//define variáveis de texto
altura: real  //define variáveis numéricas
inicio
// Seção de Comandos
repita
limpatela
Escreval("___________________________________________________________________________________")
Escreval ("                            CALCULADOR DE PESO IDEAL")//Cabeçalho(estético)
Escreval("___________________________________________________________________________________")
Escreval ("Qual é o Seu Nome?")//faz uma pergunta ao usuário
Leia(nome)//Lê a resposta para a variável "nome"
EScreval ("Qual é o seu sexo? M para masculino e F para feminino")//faz outra pergunta ao usuário
Leia(sexo)//Lê a resposta para a variável "sexo"
Escreval("qual é a sua altura em metros?")//faz outra pergunta ao usuário
Leia(altura)//Lê a resposta para a variável "altura"
Se (sexo="m") entao //define o cálculo masculino a partir da variável "sexo"
Escreva ("Seu peso ideal ")//inicia a resposta
Escreva(nome)//escreve o nome do usuário
Escreva(" é ")//continua a resposta
Escreva ((72.7*altura)-58)//calcula o valor do peso ideal masculino a partir da "altura"
Escreval (" kg")//finaliza a resposta
fimse
Se (sexo="f") entao// define o cálculo feminino a partir da váriavel "sexo"
Escreva ("Seu peso ideal ")//inicia a resposta
Escreva(nome)//escreve o nome do usuário
Escreva(" é ")//continua a resposta
Escreva ((62.1*altura)-44.7)//calcula o valor do peso ideal feminino a partir da "altura"
Escreval (" kg") //finaliza a resposta
fimse
Escreval ("Quer calcular mais alguma coisa? S para sim e N para não")//faz outra pergunta
leia(opcao) //lê a resposta para a variável "opcao"
ate(opcao="n")//define se o programa reinicia a partir da variável "opcao"


fimalgoritmo
