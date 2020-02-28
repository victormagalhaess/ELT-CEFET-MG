#include "io430.h"

unsigned char Frase1[] = "CRUZEIRO        ";
unsigned char Frase2[] = "VEM HEXA        ";
unsigned char Frase3[] = "DE ARRASCAETA   ";
unsigned char Clear[]  = "                ";

#define RS BIT7
#define Enable BIT6

/* DELAY =======================================================================

Nome: delay.
Descrição: Função de temporização.
Entrada: O número de ciclos desejado que acabará resultando em tempo.

==============================================================================*/

void delay(unsigned int tempinho,unsigned int tempao)
{
  int contX, contY;
  for(contY=0;contY<tempao;contY++)
  {
    for(contX=0;contX<tempinho;contX++);
  }
}

/* ENVIA DADO ==================================================================

Nome: envcod.
Descrição: Envia o dado para que o que estiver em P5OUT seja entendido como
um digito para o circuito interno do Display que será demonstrado.
Entrada: O digito que deverá ser enviado.

==============================================================================*/

void envdad(unsigned char dado)
{
  P5OUT = dado;
  P3OUT |= RS;
  
  P3OUT &= ~Enable;
  P3OUT |= Enable;
  P3OUT &= ~Enable;
  
  delay(23,1);
}

/* ENVIA CODIGO ================================================================

Nome: envcod.
Descrição: Envia o comando para que o que estiver em P5OUT seja entendido como
um comando para o circuito interno do Display.
Entrada: O comando que deverá ser enviado.

==============================================================================*/

void envcod(int codigo)
{
  P5OUT = codigo;
  P3OUT &= ~(RS+Enable);
  
  P3OUT |= Enable;
  P3OUT &= ~Enable;
  
  delay(23,1);
}

/* ENVIA STRING ================================================================

Nome: envstring.
Descrição: Acompanha a frase salva na memoria INFO e então chama a função
ENVIA DADO que envia cada digito para o display até que a ENIVA STRING reconheça 
o final da frase.
Entrada: Endereço inicial da frase desejada.

==============================================================================*/

void envstring(unsigned char *ponteiro)
{
  while(*ponteiro!=0x00)
  {
      envdad(*ponteiro);
      ponteiro++;
  }
}

/* CONFIGURA LCD ===============================================================

Nome: lcd.
Descrição: Fazer configuração base para escrita no display de LCD a partir de
envios de comandos para o display.

==============================================================================*/

void lcd()
{
  P3SEL = 0x00;
  P5SEL = 0x00;
  
  P3DIR |= 0xC0;
  P5DIR |= 0xFF;
  
  envcod(0x38);
  delay(1279,1);
  
  envcod(0x0E);
  
  envcod(0x06);
  
  envcod(0x01);
  delay(510,1);
}

/* LER CHAVES ==================================================================

Nome: ler.
Descrição: Monitora estados de chave na porta P1 e escreve diferentes frases
predifinidas de maneiras diferentes.
Entradas: Chaves conectadas em P1.0 e P1.1
Saídas: Display LCD

==============================================================================*/

void ler()
{
  switch(P1IN&0x03)
  {
    case 0:
      envcod(0x80);
      envstring(Frase1);
      envcod(0xC0);
      envstring(Clear);
      break;
    case 1:
      envcod(0xC0);
      envstring(Frase2);
      envcod(0x80);
      envstring(Clear);
      break;
    case 2:
      envcod(0x80);
      envstring(Frase3);
      envcod(0xC0);
      envstring(Frase3);
      break;
    case 3:
      envcod(0x80);
      envstring(Frase1);
      envcod(0xC0);
      envstring(Clear);
      
      delay(49865,15);
      
      envcod(0xC0);
      envstring(Frase2);
      envcod(0x80);
      envstring(Clear);
      
      delay(49865,15);
      
      envcod(0x80);
      envstring(Frase3);
      envcod(0xC0);
      envstring(Frase3);
      
      delay(49865,15);
      break;
  }
}

int main( void )
{
  // Stop watchdog timer to prevent time out reset
  WDTCTL = WDTPW + WDTHOLD;
  
  P1DIR &= ~(BIT0+BIT1);
  
  lcd();
  
  while(1)
  {
    ler();
  }
  
}











