algoritmo "Calculadora de MRU do torug�o"
// Fun��o :    cacular mru
// Autor :          torug�o
// Data : 07-03-2017
// Se��o de Declara��es 
var
V1: real
D1: real
T1: real
decisao: caractere
j: caractere
inicio
repita
limpatela
escreval ("Calculadora de MRU do Torugo")
timer(400)
escreval ("Pressione ESC para finalizar o programa a qualquer momento")
timer(400)
escreval ("Qual grandeza voc� quer calcular? d, v ou t?")
timer(400)
leia (decisao)
se (decisao="d") entao
escreval ("Distancia escolhida, insira o valor de velocidade em km/h:")
leia (V1)
escreval ("Insira o valor do Tempo em horas:")
leia (T1)
escreva ("Dist�ncia � igual �:")
escreva (T1*V1)
escreval ("  km")
fimse
se (decisao="v") entao
escreval ("Velocidade escolhida, insira o valor de distancia em km:")
leia (D1)
escreval ("Insira o valor do Tempo em horas:")
leia (T1)
escreva ("Velocidade � igual �:")
escreva (D1/T1)
escreval ("  km/h")
fimse
se (decisao="t") entao
escreval ("Tempo escolhido, insira o valor de velocidade em km/h:")
leia (V1)
escreval ("Insira o valor da dist�ncia em km:")
leia (T1)
escreva ("Tempo � igual �:")
escreva (D1/V1)
escreval ("  horas")
fimse
escreval ("voc� vai fazer mais algum calculo, sim ou n�o?")
leia(j)
ate (j="n�o")
fimalgoritmo

