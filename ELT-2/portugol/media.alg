algoritmo "m�dia"
// Fun��o :calcular a m�dia das notas de 10 alunos
// Autor :Victor Hugo Faria & Paulo Henrique Frade
// Data : 05/04/2017
// Se��o de Declara��es 
var
aluno: inteiro  //declara as vari�veis
nota1, nota2: real
inicio
// Se��o de Comandos 
repita
Escreval("Escreva o n�mero do aluno")//faz uma pergunta
leia(aluno)//l� a resposta para a vari�vel aluno
escreval("Escreva a primeira nota")//faz outra pergunta
leia(nota1)//l� a resposta para a vari�vel nota1
escreval("Escreva a segunda nota")//faz outra pergunta
leia(nota2)//l� a resposta para a vari�vel nota2
Escreva("A m�dia das notas de ")
escreva(aluno)      //inicia a resposta
Escreval(" �")
Escreval((nota1+nota2)/2) //faz o c�lculo da m�dia
ate (aluno=10)//finaliza a repeti��o quando se alcan�a o 10� aluno
fimalgoritmo
