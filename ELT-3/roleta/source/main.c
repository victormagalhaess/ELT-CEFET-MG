// INCLUI A BIBLIOTECA NECESS�RIA PARA O FUNCIONAMENTO
#include "msp430.h"

//DECLARA��O DE VARI�VEIS

unsigned short int estado=0;
unsigned short int rol0=0;
unsigned short int rol1=0;
unsigned short int rol2=0;
unsigned short int contador=0;
unsigned short int dezena=0;
unsigned short int unidade=0;
unsigned short int total=0;


void zero()// FUN��O PARA EXIBIR O N�MERO ZERO
{
  // MULTIPLEXA��O
  P2OUT|=0x5F;// 0 EM EM HEXADECIMAL-7 SEGMENTOS
  P2OUT|=0X80;
  P2OUT&=(~0X80);
  P1OUT|=0X01;
  P1OUT&=(~0X01);
  P2OUT&=0X00;

  //L� AS CHAVES  
  if(((~P1IN)&0x20)==0x20){
    __delay_cycles(220000);
    estado++;
    rol0++;
    
  }
  
  //L� AS CHAVES
  if(((~P1IN)&0x40)==0x40){
    __delay_cycles(220000);
    estado++;
    rol1++;
    
  } 
  
  //L� AS CHAVES
  if(((~P1IN)&0x80)==0x80){
    __delay_cycles(220000);
    estado++;
    rol2++;
    
  } 
}

void contabiliza()
{
 
  //L� AS CHAVES
  if(((~P1IN)&0x20)==0x20){
    __delay_cycles(220000);
    rol0++;
  }
  
  //L� AS CHAVES
  if(((~P1IN)&0x40)==0x40){
    __delay_cycles(220000);
    rol1++;
  }
  
  //L� AS CHAVES
  if(((~P1IN)&0x80)==0x80){
    __delay_cycles(220000);
    rol2++;
  }

  //SOMA O TOTAL DE PESSOAS QUE ENTRARAM NO EST�DIO 
  total=(rol0+rol1+rol2);

//SELECIONA QUAL DAS ROLETAS (OU TOTAL) DE PESSOAS APARECERAM NO DISPLAY
  
  if ((P1IN&0x18)==0x18)    
    
  {
    contador=total;  
  }
  
  else if ((P1IN&0x18)==0x08)  
  {
    contador=rol0;  
  }
  
  else if ((P1IN&0x18)==0x10)  
  {     
    contador=rol1;  
  }
  
  else 
  {
    contador=rol2;  
  }
  
  // VERIFICA SE A CAPACIDADE SE EXCEDEU 

  if (total>99){
    estado=2;
  }
  
  dezena=(contador/10);// GRAVA AS DEZENAS NA VARI�VEL DEZENA
  unidade=(contador%10);// GRAVA AS UNIDADES NA VARI�VEL UNIDADE   
}

void mostra_multiplexa()// FUN��O DE MULTIPLEXAR OS DISPLAYS
{
  
  switch(dezena){
  case 0:
    P2OUT|=0x5F;
    P2OUT|=0X80;
    __delay_cycles(300);
    P2OUT&=(~0X80);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;
    
  case 1:
    P2OUT|=0x06;
    P2OUT|=0X80;
    __delay_cycles(300);
    P2OUT&=(~0X80);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;
    
  case 2:
    P2OUT|=0x3B;
    P2OUT|=0X80;
    __delay_cycles(300);
    P2OUT&=(~0X80);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;
    
  case 3:
    P2OUT|=0x2F;
    P2OUT|=0X80;
    __delay_cycles(300);
    P2OUT&=(~0X80);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;
    
  case 4:
    P2OUT|=0x66;
    P2OUT|=0X80;
    __delay_cycles(300);
    P2OUT&=(~0X80);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;
    
  case 5:
    P2OUT|=0x6D;
    P2OUT|=0X80;
    __delay_cycles(300);
    P2OUT&=(~0X80);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;
    
  case 6:
    P2OUT|=0x7D;
    P2OUT|=0X80;
    __delay_cycles(300);
    P2OUT&=(~0X80);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;
    
  case 7:
    P2OUT|=0x07;
    P2OUT|=0X80;
    __delay_cycles(300);
    P2OUT&=(~0X80);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;
    
  case 8:
    P2OUT|=0x7F;
    P2OUT|=0X80;
    __delay_cycles(300);
    P2OUT&=(~0X80);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;
    
  case 9:
    P2OUT|=0x6F;
    P2OUT|=0X80;
    __delay_cycles(300);
    P2OUT&=(~0X80);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;
  }
  
  
  switch(unidade){
  case 0:
    P2OUT|=0x5F;
    P1OUT|=0X01;
    __delay_cycles(300);
    P1OUT&=(~0X01);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;
    
  case 1:
    P2OUT|=0x06;
    P1OUT|=0X01;
    __delay_cycles(300);
    P1OUT&=(~0X01);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;
    
  case 2:
    P2OUT|=0x3B;
    P1OUT|=0X01;
    __delay_cycles(300);
    P1OUT&=(~0X01);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;
    
  case 3:
    P2OUT|=0x2F;
    P1OUT|=0X01;
    __delay_cycles(300);
    P1OUT&=(~0X01);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;
    
  case 4:
    P2OUT|=0x66;
    P1OUT|=0X01;
    __delay_cycles(300);
    P1OUT&=(~0X01);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;
    
  case 5:
    P2OUT|=0x6D;
    P1OUT|=0X01;
    __delay_cycles(300);
    P1OUT&=(~0X01);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;
    
  case 6:
    P2OUT|=0x7D;
    P1OUT|=0X01;
    __delay_cycles(300);
    P1OUT&=(~0X01);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;
    
  case 7:
    P2OUT|=0x07;
    P1OUT|=0X01;
    __delay_cycles(300);
    P1OUT&=(~0X01);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;
    
  case 8:
    P2OUT|=0x7F;
    P1OUT|=0X01;
    __delay_cycles(300);
    P1OUT&=(~0X01);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;
    
  case 9:
    P2OUT|=0x6F;
    P1OUT|=0X01;
    __delay_cycles(300);
    P1OUT&=(~0X01);
    P2OUT&=0X00;
    __delay_cycles(100);
    break;              
  }   
  
}

void erro()// FUN��O QUE EXIBE UM ALERTA DE ERRO QUANDO A CAPACIDADE M�XIMA E EXCEDIDA
{
  
  for (int i=0; i<3; i++){
    
    P2OUT|=0x20;
    P2OUT|=0X80;
    P1OUT|=0X01;
    __delay_cycles(450000);
    P1OUT&=(~0X01);
    P2OUT&=(~0X80);
    P2OUT&=0X00;  
    __delay_cycles(450000);
    
  }
  for (int i=0; i<3; i++){
    P2OUT|=0x79;
    P2OUT|=0X80;
    P1OUT|=0X01;
    __delay_cycles(450000);
    P1OUT&=(~0X01);
    P2OUT&=(~0X80);
    P2OUT&=0X00;  
    __delay_cycles(450000);
    
  }
  
}

void main()// FUN��O PRINCIPAL
{
  
  WDTCTL = WDTPW + WDTHOLD;
  // CONFIGURA��O DOS REGISTRADORES
  P1DIR=0X07;
  P2DIR=0XFF;
  P1REN=0XF8;
  P2REN=0X00;
  P1OUT=0XF8;
  P2OUT=0X00;
  P1SEL=0X00;
  P1SEL2=0X00;
  P2SEL=0X00;
  P2SEL2=0X00; 
  
  while(1){     // LOOP INFINITO
    
    while(estado==0)
    {      
      zero();      
    } 
    
    while(estado==1){
    
      contabiliza(); 
      
      mostra_multiplexa();  
      
    }
    
    while (estado==2){
      
      erro();
      
    }
    
  } 
  
}