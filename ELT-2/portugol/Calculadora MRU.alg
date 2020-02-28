algoritmo "Calculadora de MRU do torugão"
// Função :    cacular mru
// Autor :          torugão
// Data : 07-03-2017
// Seção de Declarações 
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
escreval ("Qual grandeza você quer calcular? d, v ou t?")
timer(400)
leia (decisao)
se (decisao="d") entao
escreval ("Distancia escolhida, insira o valor de velocidade em km/h:")
leia (V1)
escreval ("Insira o valor do Tempo em horas:")
leia (T1)
escreva ("Distância é igual à:")
escreva (T1*V1)
escreval ("  km")
fimse
se (decisao="v") entao
escreval ("Velocidade escolhida, insira o valor de distancia em km:")
leia (D1)
escreval ("Insira o valor do Tempo em horas:")
leia (T1)
escreva ("Velocidade é igual à:")
escreva (D1/T1)
escreval ("  km/h")
fimse
se (decisao="t") entao
escreval ("Tempo escolhido, insira o valor de velocidade em km/h:")
leia (V1)
escreval ("Insira o valor da distância em km:")
leia (T1)
escreva ("Tempo é igual à:")
escreva (D1/V1)
escreval ("  horas")
fimse
escreval ("você vai fazer mais algum calculo, sim ou não?")
leia(j)
ate (j="não")
fimalgoritmo

