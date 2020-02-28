algoritmo "fatorial"
// Função :Calcula o Fatorial dos números
// Autor :Victor Hugo Faria & Paulo Henrique Frade
// Data : 29-03-2017
// Seção de Declarações 
var
numfatorial,num1,num2: inteiro // define as variáveis
inicio
// Seção de Comandos
Escreval("Digite o número cujo fatorial deve ser calculado")// faz uma pergunta
leia(numfatorial)//carrega a resposta para a variavel "numfatorial"
num1<-1 //atribui a variavel num1 o valor 1
para num2 de 1 ate numfatorial faca //estrutura para para fazer uma contagem
num1<-num1*num2 //calcula o fatorial
fimpara
escreva(numfatorial) //escreve a resposta do cálculo
Escreva(" ! é:")
escreval(num1)
fimalgoritmo
