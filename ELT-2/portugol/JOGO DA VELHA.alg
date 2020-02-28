algoritmo "JOGO DA VELHA"
// Função : JOGAR JOGO DA VELHA
// Autores : Victor Hugo Faria & Paulo Henrique Frade
// Data : 15-06-2017
// Seção de Declarações

var
y,z,w,r,f,k,u,a: inteiro
x, cor, c1, c2, c3, c4, c5, c6, c7, c8, c9, nome, l1, l2, l3, l4, l5, l6, l7, l8, l9, l10, nome2, modo, por: caractere
jogadas: vetor[1..5] de caractere

procedimento loading
inicio

escreval("CARREGANDO |",l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,"| ",por)

fimprocedimento

procedimento vazio
inicio
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
fimprocedimento

procedimento ll1
inicio
l1<-("#")
por<-("10%")
fimprocedimento

procedimento ll2
inicio
l2<-("#")
por<-("20%")
fimprocedimento

procedimento ll3
inicio
l3<-("#")
por<-("30%")
fimprocedimento

procedimento ll4
inicio
l4<-("#")
por<-("40%")
fimprocedimento

procedimento ll5
inicio
l5<-("#")
por<-("50%")
fimprocedimento

procedimento ll6
inicio
l6<-("#")
por<-("60%")
fimprocedimento

procedimento ll7
inicio
l7<-("#")
por<-("70%")
fimprocedimento

procedimento ll8
inicio
l8<-("#")
por<-("80%")
fimprocedimento

procedimento ll9
inicio
l9<-("#")
por<-("90%")
fimprocedimento

procedimento ll10
inicio
l10<-("#")
por<-("100%")
fimprocedimento

procedimento lpro
inicio
l1<-(" ")
l2<-(" ")
l3<-(" ")
l4<-(" ")
l5<-(" ")
l6<-(" ")
l7<-(" ")
l8<-(" ")
l9<-(" ")
l10<-(" ")
por<-("0%")
fimprocedimento

procedimento tabul1
inicio
 Escreval(" ",nome2,"= O  ",nome,"= X       Dificuldade=", a)
escreval("")
escreval("")
escreval("          |          |")
escreval("          |          |")
escreval("   ",c1,"      |   ",c2,"      |   ",c3," ")
escreval("          |          |")
escreval("_________1|_________2|__________3")
escreval("          |          |")
escreval("          |          |")
escreval("   ",c4,"      |   ",c5,"      |    ",c6," ")
escreval("          |          |")
escreval("_________4|_________5|__________6")
escreval("          |          |")
escreval("          |          |")
escreval("  ",c7,"       |  ",c8,"       |  ",c9,"  ")
escreval("          |          |")
escreval("         7|         8|          9")
Escreval("")
escreval("")

fimprocedimento

procedimento tabuleiro
inicio
repita
 Escreval(" ",nome2,"= O  ",nome,"= X       Dificuldade=", a)
escreval("")
escreval("")
escreval("          |          |")
escreval("          |          |")
escreval("   ",c1,"      |   ",c2,"      |   ",c3," ")
escreval("          |          |")
escreval("_________1|_________2|__________3")
escreval("          |          |")
escreval("          |          |")
escreval("   ",c4,"      |   ",c5,"      |    ",c6," ")
escreval("          |          |")
escreval("_________4|_________5|__________6")
escreval("          |          |")
escreval("          |          |")
escreval("  ",c7,"       |  ",c8,"       |  ",c9,"  ")
escreval("          |          |")
escreval("         7|         8|          9")
   Escreval("")
   escreval("")
   Escreval("Escreva a coordenada da sua jogada (exemplo primeira casa c1, segunda c2... etc.)")
   leia(cor)
   se (cor="c1") ou (cor="c2") ou (cor="c3")  ou (cor="c4") ou (cor="c5") ou (cor="c6") ou (cor="c7") ou (cor="c8") ou (cor="c9") entao
      limpatela
      z<-2
   senao
      limpatela
   fimse
ate z=2
jogadas[1]<-cor
z<-0
fimprocedimento

procedimento title
inicio
repita
timer(100)
   Escreval("     ,--. .-'),-----.   ,----.     .-'),-----. ")
   Escreval(" .-')| ,|( OO'  .-.  ' '  .-./-') ( OO'  .-.  '")
   Escreval("( OO |(_|/   |  | |  | |  |_( 0  )/   |  | |  |")
   Escreval("| `-'|  |\_) |  |\|  | |  | .--, \\_) |  |\|  |")
   Escreval(",--. |  |  \ |  | |  |(|  | '. (_/  \ |  | |  |")
   Escreval("|  '-'  /   `'  '-'  ' |  '--'  |    `'  '-'  '")
   Escreval(" `-----'      `-----'   `------'       `-----' ")

   Escreval("                                  ")

   Escreval("   _ .-') _     ('-.                (`-.      ('-.            ('-. .-.   ('-.      ")
   Escreval("  ( (  OO) )   ( OO ).-.          _(OO  )_  _(  OO)          ( OO )  /  ( OO ).-.  ")
   Escreval("   \     .'_   / . --. /      ,--(_/   ,. \(,------.,--.     ,--. ,--.  / . --. /     ")
   Escreval("   ,`'--..._)  | \-.  \       \   \   /(__/ |  .---'|  |.-') |  | |  |  | \-.  \         ")
   Escreval("   |  |  \  '.-'-'  |  |       \   \ /   /  |  |    |  | OO )|   .|  |.-'-'  |  |           ")
   Escreval("   |  |   ' | \| |_.'  |        \   '   /, (|  '--. |  |`-' ||       | \| |_.'  |              ")
   Escreval("   |  |   / :  |  .-.  |         \     /__) |  .--'(|  '---.'|  .-.  |  |  .-.  |                 ")
   Escreval("   |  '--'  /  |  | |  |          \   /     |  `---.|      | |  | |  |  |  | |  |                    ")
   Escreval("   `-------'   `--' `--'           `-'      `------'`------' `--' `--'  `--' `--'                       ")

timer(0)
   Escreval("")
   escreval("Feito por Victor Hugo e Paulo Henrique ELT-2A 2017")
   escreval("")
   escreval("Pressione enter para começar a jogar")

   leia(x)
   se (x="") entao
      limpatela
      y<-2
   senao
      limpatela
   fimse
ate y=2
fimprocedimento

procedimento preload
inicio
c1<-(" ")
c2<-(" ")
c3<-(" ")
c4<-(" ")
c5<-(" ")
c6<-(" ")
c7<-(" ")
c8<-(" ")
c9<-(" ")
fimprocedimento

procedimento escolhe1
inicio
escolha cor
caso("c1")
   se c1=(" ") entao
      c1<-("X")
      w<-2
   senao
      tabuleiro
   fimse
caso("c2")
   se c2=(" ") entao
      c2<-("X")
      w<-2
   senao
      tabuleiro
   fimse
caso("c3")
   se c3=(" ") entao
      c3<-("X")
      w<-2
   senao
      tabuleiro
   fimse
caso("c4")
   se c4=(" ") entao
      c4<-("X")
      w<-2
   senao
      tabuleiro
   fimse
caso("c5")
   se c5=(" ") entao
      c5<-("X")
      w<-2
   senao
      tabuleiro
   fimse
caso("c6")
   se c6=(" ") entao
      c6<-("X")
      w<-2
   senao
      tabuleiro
   fimse
caso("c7")
   se c7=(" ") entao
      c7<-("X")
      w<-2
   senao
      tabuleiro
   fimse
caso("c8")
   se c8=(" ") entao
      c8<-("X")
      w<-2
   senao
      tabuleiro
   fimse
caso("c9")
   se c9=(" ") entao
      c9<-("X")
      w<-2
   senao
      tabuleiro
   fimse
fimescolha
fimprocedimento


procedimento escolhe2
inicio
escolha cor
caso("c1")
   se c1=(" ") entao
      c1<-("O")
      w<-2
   senao
      tabuleiro
   fimse
caso("c2")
   se c2=(" ") entao
      c2<-("O")
      w<-2
   senao
      tabuleiro
   fimse
caso("c3")
   se c3=(" ") entao
      c3<-("O")
      w<-2
   senao
      tabuleiro
   fimse
caso("c4")
   se c4=(" ") entao
      c4<-("O")
      w<-2
   senao
      tabuleiro
   fimse
caso("c5")
   se c5=(" ") entao
      c5<-("O")
      w<-2
   senao
      tabuleiro
   fimse
caso("c6")
   se c6=(" ") entao
      c6<-("O")
      w<-2
   senao
      tabuleiro
   fimse
caso("c7")
   se c7=(" ") entao
      c7<-("O")
      w<-2
   senao
      tabuleiro
   fimse
caso("c8")
   se c8=(" ") entao
      c8<-("O")
      w<-2
   senao
      tabuleiro
   fimse
caso("c9")
   se c9=(" ") entao
      c9<-("O")
      w<-2
   senao
      tabuleiro
   fimse
fimescolha
fimprocedimento

procedimento jogadam
inicio
r<-randi(8)

escolha r
caso 0
   se c1=(" ") entao
      c1<-("O")
      f<-2
   fimse
caso 1
   se c2=(" ") entao
      c2<-("O")
      f<-2
   fimse
caso 2
   se c3=(" ") entao
      c3<-("O")
      f<-2
   fimse
caso 3
   se c4=(" ") entao
      c4<-("O")
      f<-2
   fimse
caso 4
   se c5=(" ") entao
      c5<-("O")
      f<-2
   fimse
caso 5
   se c6=(" ") entao
      c6<-("O")
      f<-2
   fimse
caso 6
   se c7=(" ") entao
      c7<-("O")
      f<-2
   fimse
caso 7
   se c8=(" ") entao
      c8<-("O")
      f<-2
   fimse
caso 8
   se c9=(" ") entao
      c9<-("O")
      f<-2
   fimse
fimescolha
fimprocedimento

procedimento teste
inicio
se c1=("X") entao
   se c2=("X") entao
      se c3=("X") entao
         tabul1
         Escreval(nome, "  VOCÊ GANHOU!!!! ", nome2, " VOCÊ PERDEU!!!! ")
      fimalgoritmo
   fimse
fimse
fimse

se c1=("X")  entao
se c4=("X") entao
   se c7=("X") entao
      tabul1
      Escreval(nome, "  VOCÊ GANHOU!!!! ", nome2, " VOCÊ PERDEU!!!! ")
   fimalgoritmo
fimse
fimse
fimse

se c1=("X") entao
se c5=("X") entao
se c9=("X") entao
   tabul1
   Escreval(nome, "  VOCÊ GANHOU!!!! ", nome2, " VOCÊ PERDEU!!!! ")
fimalgoritmo
fimse
fimse
fimse

se c5=("X") entao
se c2=("X") entao
se c8=("X") entao
tabul1
Escreval(nome, "  VOCÊ GANHOU!!!! ", nome2, " VOCÊ PERDEU!!!! ")
fimalgoritmo
fimse
fimse
fimse

se c4=("X") entao
se c5=("X") entao
se c6=("X") entao
tabul1
Escreval(nome, "  VOCÊ GANHOU!!!! ", nome2, " VOCÊ PERDEU!!!! ")
fimalgoritmo
fimse
fimse
fimse

se c3=("X") entao
se c6=("X") entao
se c9=("X") entao
tabul1
Escreval(nome, "  VOCÊ GANHOU!!!! ", nome2, " VOCÊ PERDEU!!!! ")
fimalgoritmo
fimse
fimse
fimse

se c3=("X") entao
se c5=("X") entao
se c7=("X") entao
tabul1
Escreval(nome, "  VOCÊ GANHOU!!!! ", nome2, " VOCÊ PERDEU!!!! ")
fimalgoritmo
fimse
fimse
fimse

se c7=("X") entao
se c8=("X") entao
se c9=("X") entao
tabul1
Escreval(nome, "  VOCÊ GANHOU!!!! ", nome2, " VOCÊ PERDEU!!!! ")
fimalgoritmo
fimse
fimse
fimse



se c1=("O") entao
se c2=("O") entao
se c3=("O") entao
tabul1
Escreval(nome, " VOCÊ PERDEU!!!! ", nome2, " VOCÊ GANHOU!!!! ")
fimalgoritmo
fimse
fimse
fimse

se c1=("O")  entao
se c4=("O") entao
se c7=("O") entao
tabul1
Escreval(nome, " VOCÊ PERDEU!!!! ", nome2, " VOCÊ GANHOU!!!! ")
fimalgoritmo
fimse
fimse
fimse

se c1=("O") entao
se c5=("O") entao
se c9=("O") entao
tabul1
Escreval(nome, " VOCÊ PERDEU!!!! ", nome2, " VOCÊ GANHOU!!!! ")
fimalgoritmo
fimse
fimse
fimse

se c5=("O") entao
se c2=("O") entao
se c8=("O") entao
tabul1
Escreval(nome, " VOCÊ PERDEU!!!! ", nome2, " VOCÊ GANHOU!!!! ")
fimalgoritmo
fimse
fimse
fimse

se c4=("O") entao
se c5=("O") entao
se c6=("O") entao
tabul1
Escreval(nome, " VOCÊ PERDEU!!!! ", nome2, " VOCÊ GANHOU!!!! ")
fimalgoritmo
fimse
fimse
fimse

se c3=("O") entao
se c6=("O") entao
se c9=("O") entao
tabul1
Escreval(nome, " VOCÊ PERDEU!!!! ", nome2, " VOCÊ GANHOU!!!! ")
fimalgoritmo
fimse
fimse
fimse

se c3=("O") entao
se c5=("O") entao
se c7=("O") entao
tabul1
Escreval(nome, " VOCÊ PERDEU!!!! ", nome2, " VOCÊ GANHOU!!!! ")
fimalgoritmo
fimse
fimse
fimse

se c7=("O") entao
se c8=("O") entao
se c9=("O") entao
tabul1
Escreval(nome, " VOCÊ PERDEU!!!! ", nome2, " VOCÊ GANHOU!!!! ")
fimalgoritmo
fimse
fimse
fimse
fimprocedimento

procedimento veri
inicio
k<-randi(9)

se k<a entao
se u<>2 entao
se c1=("X") entao
se c2=("X") entao
se c3=(" ") entao
c3<-("O")
u<-2
fimse
fimse
fimse
fimse
se u<>2 entao
se c1=("X") entao
se c3=("X") entao
se c2=(" ") entao
c2<-("O")
u<-2
fimse
fimse
fimse
fimse
se u<>2 entao
se c1=("X") entao
se c4=("X") entao
se c7=(" ") entao
c7<-("O")
u<-2
fimse
fimse
fimse
fimse
se u<>2 entao
se c1=("X") entao
se c7=("X") entao
se c4=(" ") entao
c4<-("O")
u<-2
fimse
fimse
fimse
fimse
se u<>2 entao
se c1=("X") entao
se c5=("X") entao
se c9=(" ") entao
c9<-("O")
u<-2
fimse
fimse
fimse
fimse
se u<>2 entao
se c1=("X") entao
se c9=("X") entao
se c5=(" ") entao
c5<-("O")
u<-2
fimse
fimse
fimse
fimse
se u<>2 entao
se c3=("X") entao
se c2=("X") entao
se c1=(" ") entao
c1<-("O")
u<-2
fimse
fimse
fimse
fimse
se u<>2 entao
se c3=("X") entao
se c6=("X") entao
se c9=(" ") entao
c9<-("O")
u<-2
fimse
fimse
fimse
fimse
se u<>2 entao
se c3=("X") entao
se c9=("X") entao
se c6=(" ") entao
c6<-("O")
u<-2
fimse
fimse
fimse
fimse
se u<>2 entao
se c3=("X") entao
se c5=("X") entao
se c7=(" ") entao
c7<-("O")
u<-2
fimse
fimse
fimse
fimse
se u<>2 entao
se c3=("X") entao
se c7=("X") entao
se c5=(" ") entao
c5<-("O")
u<-2
fimse
fimse
fimse
fimse
se u<>2 entao
se c4=("X") entao
se c7=("X") entao
se c1=(" ") entao
c1<-("O")
u<-2
fimse
fimse
fimse
fimse
se u<>2 entao
se c4=("X") entao
se c5=("X") entao
se c6=(" ") entao
c6<-("O")
u<-2
fimse
fimse
fimse
fimse
se u<>2 entao
se c4=("X") entao
se c6=("X") entao
se c5=(" ") entao
c5<-("O")
u<-2
fimse
fimse
fimse
fimse
se u<>2 entao
se c5=("X") entao
se c6=("X") entao
se c4=(" ") entao
c4<-("O")
u<-2
fimse
fimse
fimse
fimse
se u<>2 entao
se c5=("X") entao
se c7=("X") entao
se c3=(" ") entao
c3<-("X")
u<-2
fimse
fimse
fimse
fimse
se u<>2 entao
se c5=("X") entao
se c9=("X") entao
se c1=(" ") entao
c1<-("O")
u<-2
fimse
fimse
fimse
fimse
se u<>2 entao
se c6=("X") entao
se c2=("X") entao
se c9=(" ") entao
c9<-("O")
u<-2
fimse
fimse
fimse
fimse
se u<>2 entao
se c7=("X") entao
se c9=("X") entao
se c8=(" ") entao
c8<-("O")
u<-2
fimse
fimse
fimse
fimse
se u<>2 entao
se c7=("X") entao
se c8=("X") entao
se c9=(" ") entao
c9<-("O")
u<-2
fimse
fimse
fimse
fimse
fimse
fimprocedimento




inicio
// Seção de Comandos
escreval ("DIGITE CPU para jogar com a máquina e PLAYER para jogar player vs player")
leia(modo)
se modo=("CPU") entao
nome2<-("CPU")
escreval("Por favor escreva seu nome")
leia(nome)
limpatela
REPITA
escreval("                                            _                             ")
escreval("       _   _ __   | |     __    __    __|' / \ ' __       |  __| __  __| _  ")
escreval("      /_/ ( /  / \| |/ \ /  |  /  |  /  || |=  |/   |   | | /  |/  |/  |/_/   ")
escreval("      \__ _)\__\_/| |   |\__|  \__|  \__|| |   |\__ \__/| | \__|\__|\__|\__     ")
escreval("")
ESCREVAL ("1=EXTREMAMENTE FÁCIL")
ESCREVAL ("2=FACÍLIMO")
ESCREVAL("3=MUITO FACIL")
ESCREVAL("4=RAZOAVELMENTE FACIL")
ESCREVAL("5=FÁCIL")
ESCREVAL("6=NORMAL")
ESCREVAL("7=LIGEIRAMENTE DIFÍCIL")
ESCREVAL("8=DIFÍCIL")
ESCREVAL("9=DIFICILÍMO")
ESCREVAL("10+=EXTREMAMENTE DIFICIL")
LEIA(A)
LIMPATELA
ATE A<>0

lpro
vazio
timer(20)
loading
timer(0)
vazio
ll1
limpatela
vazio
timer(20)
loading
timer(0)
vazio
ll2
limpatela
vazio
timer(20)
loading
timer(0)
vazio
ll3
limpatela
vazio
timer(20)
loading
timer(0)
vazio
ll4
limpatela
vazio
timer(20)
loading
timer(0)
vazio
ll5
limpatela
vazio
timer(20)
loading
timer(0)
vazio
ll6
limpatela
vazio
timer(20)
loading
timer(0)
vazio
ll7
limpatela
vazio
timer(20)
loading
timer(0)
vazio
ll8
limpatela
vazio
timer(20)
loading
timer(0)
vazio
ll9
limpatela
vazio
timer(20)
loading
timer(0)
vazio
ll10
limpatela
vazio
timer(20)
loading
timer(0)
vazio

ESCREVAL("TUDO PRONTO")
TIMER(1000)
ESCREVAL("VAMOS JOGAR!!!")
escreval("")
TIMER(0)
limpatela
preload
  se a=171199 entao
      escreval("Você ganhou usando o código")
      fimalgoritmo
     fimse
title

tabuleiro
repita
escolhe1
ate w=2
w<-0
repita
jogadam
ate f=2
f<-0
teste
tabuleiro
repita
escolhe1
ate w=2
w<-0
veri
se u<>2 entao
repita
jogadam
ate f=2
f<-0
fimse
u<-0
teste
tabuleiro
repita
escolhe1
ate w=2
w<-0
veri
se u<>2 entao
repita
jogadam
ate f=2
f<-0
fimse
u<-0
teste
tabuleiro
repita
escolhe1
ate w=2
w<-0
veri
se u<>2 entao
repita
jogadam
ate f=2
f<-0
fimse
u<-0
teste
tabuleiro
repita
escolhe1
ate w=2
w<-0
teste
tabul1
Escreval (nome, "  DEU VELHA!!! EMPATE")
fimse

se modo=("PLAYER") entao
Escreval("Escreva o nome do player 1")
leia(nome)
Escreval("Escreva o nome do player 2")
leia(nome2)
limpatela
lpro
vazio
timer(20)
loading
timer(0)
vazio
ll1
limpatela
vazio
timer(20)
loading
timer(0)
vazio
ll2
limpatela
vazio
timer(20)
loading
timer(0)
vazio
ll3
limpatela
vazio
timer(20)
loading
timer(0)
vazio
ll4
limpatela
vazio
timer(20)
loading
timer(0)
vazio
ll5
limpatela
vazio
timer(20)
loading
timer(0)
vazio
ll6
limpatela
vazio
timer(20)
loading
timer(0)
vazio
ll7
limpatela
vazio
timer(20)
loading
timer(0)
vazio
ll8
limpatela
vazio
timer(20)
loading
timer(0)
vazio
ll9
limpatela
vazio
timer(20)
loading
timer(0)
vazio
ll10
limpatela
vazio
timer(20)
loading
timer(0)
vazio

ESCREVAL("TUDO PRONTO")
TIMER(1000)
ESCREVAL("VAMOS JOGAR!!!")
escreval("")
TIMER(0)
limpatela
preload
title
escreval(nome, " é a sua vez")
tabuleiro
repita
escolhe1
ate w=2
w<-0
escreval(nome2, " é a sua vez")
tabuleiro
repita
escolhe2
ate w=2
w<-0
escreval(nome, " é a sua vez")
tabuleiro
repita
escolhe1
ate w=2
w<-0
escreval(nome2, " é a sua vez")
tabuleiro
repita
escolhe2
ate w=2
w<-0
escreval(nome, " é a sua vez")
tabuleiro
repita
escolhe1
ate w=2
w<-0
teste
escreval(nome2, " é a sua vez")
tabuleiro
repita
escolhe2
ate w=2
w<-0
teste
escreval(nome, " é a sua vez")
tabuleiro
repita
escolhe1
ate w=2
w<-0
teste
escreval(nome2, " é a sua vez")
tabuleiro
repita
escolhe2
ate w=2
w<-0
teste
escreval(nome, " é a sua vez")
tabuleiro
repita
escolhe1
ate w=2
w<-0
teste
tabul1
Escreval("Deu velha, empate!!!")
fimse


fimalgoritmo
