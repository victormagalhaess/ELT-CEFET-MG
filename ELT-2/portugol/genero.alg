algoritmo "genero"
// Fun��o :L� o sexo de um �ndividuo
// Autor :Victor Hugo Faria & Paulo Henrique Frade
// Data : 29-03-2017
// Se��o de Declara��es 
var
sexo: caractere//vari�vel do tipo caractere
test: inteiro//variavel do tipo inteiro
inicio
// Se��o de Comandos 
repita
test<-0//atribui a "test" o valor inicial de 0
Escreval("Qual � o seu sexo, F ou M?")// faz uma pergunta
leia(sexo)//L� a resposta para a vari�vel "sexo"
Se (sexo="m")entao //analisa as entradas usando o "se"
test<-1//atribui a test o valor de 1
fimse
Se (sexo="f")entao
test<-1//atribui a test o valor de 1
fimse
Se(test=0) entao//se n�o for digitado o que for pedido test=0
Escreval("Apenas F ou M!")//imprime o alerta ao usu�rio
fimse
ate(test=1)  //finaliza a estrutura de repeti��o
fimalgoritmo
