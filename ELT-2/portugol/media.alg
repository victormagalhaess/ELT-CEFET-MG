algoritmo "média"
// Função :calcular a média das notas de 10 alunos
// Autor :Victor Hugo Faria & Paulo Henrique Frade
// Data : 05/04/2017
// Seção de Declarações 
var
aluno: inteiro  //declara as variáveis
nota1, nota2: real
inicio
// Seção de Comandos 
repita
Escreval("Escreva o número do aluno")//faz uma pergunta
leia(aluno)//lê a resposta para a variável aluno
escreval("Escreva a primeira nota")//faz outra pergunta
leia(nota1)//lê a resposta para a variável nota1
escreval("Escreva a segunda nota")//faz outra pergunta
leia(nota2)//lê a resposta para a variável nota2
Escreva("A média das notas de ")
escreva(aluno)      //inicia a resposta
Escreval(" é")
Escreval((nota1+nota2)/2) //faz o cálculo da média
ate (aluno=10)//finaliza a repetição quando se alcança o 10º aluno
fimalgoritmo
