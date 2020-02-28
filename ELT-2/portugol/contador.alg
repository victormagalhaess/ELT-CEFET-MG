algoritmo "contador"
// Função : contar
// Autor : Victor Hugo & Paulo Henrique
// Data : 05/04/2017
// Seção de Declarações
var
valin, valfim: inteiro//declara as variáveis

inicio
// Seção de Comandos
Escreval("~~~~Contador~~~~")
Escreval("Qual é o seu valor inicial?") //faz uma pergunta
leia(valin)//Lê a resposta para a variável valin
Escreval("Qual é o seu valor final?")//faz outra pergunta
leia(valfim)//Lê a resposta para a variável valfim
Se(valin>valfim) entao//usa lógica para impedir erros
escreval("o 1º precisa ser menor que o último!")//imprime um alerta
senao
enquanto valin<valfim faca //estrutura de repetiçaõ enquanto
valin<-valin+1//soma-se 1 ao valor inicial
Escreval(valin)//escrev-se o valor inicial
fimenquanto
fimse
fimalgoritmo
