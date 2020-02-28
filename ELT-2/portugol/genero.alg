algoritmo "genero"
// Função :Lê o sexo de um índividuo
// Autor :Victor Hugo Faria & Paulo Henrique Frade
// Data : 29-03-2017
// Seção de Declarações 
var
sexo: caractere//variável do tipo caractere
test: inteiro//variavel do tipo inteiro
inicio
// Seção de Comandos 
repita
test<-0//atribui a "test" o valor inicial de 0
Escreval("Qual é o seu sexo, F ou M?")// faz uma pergunta
leia(sexo)//Lê a resposta para a variável "sexo"
Se (sexo="m")entao //analisa as entradas usando o "se"
test<-1//atribui a test o valor de 1
fimse
Se (sexo="f")entao
test<-1//atribui a test o valor de 1
fimse
Se(test=0) entao//se não for digitado o que for pedido test=0
Escreval("Apenas F ou M!")//imprime o alerta ao usuário
fimse
ate(test=1)  //finaliza a estrutura de repetição
fimalgoritmo
