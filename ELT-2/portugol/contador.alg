algoritmo "contador"
// Fun��o : contar
// Autor : Victor Hugo & Paulo Henrique
// Data : 05/04/2017
// Se��o de Declara��es
var
valin, valfim: inteiro//declara as vari�veis

inicio
// Se��o de Comandos
Escreval("~~~~Contador~~~~")
Escreval("Qual � o seu valor inicial?") //faz uma pergunta
leia(valin)//L� a resposta para a vari�vel valin
Escreval("Qual � o seu valor final?")//faz outra pergunta
leia(valfim)//L� a resposta para a vari�vel valfim
Se(valin>valfim) entao//usa l�gica para impedir erros
escreval("o 1� precisa ser menor que o �ltimo!")//imprime um alerta
senao
enquanto valin<valfim faca //estrutura de repeti�a� enquanto
valin<-valin+1//soma-se 1 ao valor inicial
Escreval(valin)//escrev-se o valor inicial
fimenquanto
fimse
fimalgoritmo
