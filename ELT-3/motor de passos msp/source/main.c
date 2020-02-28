#include "io430.h"

unsigned char Tecla=0;
unsigned char Escreval[ ]=("stado eh merda");

// Defines comuns às duas versões de kits
// opçoes para o bit RS do display LCD
#define Dado 1                                   // Envio de dados 
#define Comando 0                                // Envio de comandos



#define _5ms 0.005*750000
#define _10ms 0.01*750000
#define _2ms (int)(0.002*750000)
#define _100us 0.0001*750000
#define _500ms 0.5*750000
#define _50ms 0.05*750000
#define _1s 1*750000
#define _25ms 0.025*750000


unsigned char vel[ ]=("VELOCIDADE: ");
unsigned char EST1[ ]=("PARADO");
unsigned char EST2[ ]=("ESQUERDA");
unsigned char EST3[ ]=("DIREITA");
unsigned char apaga[ ]= ("                ");


/* A intenção é criar um conjunto de subrotinas que sejam compiladas de acordo
com o processador selecionado. Para tal vamos utilizar alguns comandos
direcionados ao assembler que permitem implementar o que é conhecido como
assembly condicional.

Veja o exemplo abaixo de como vamos estruturar esta montagem condicional do 
código.*/

#if defined (__MSP430F1611__)
// Dando nomes mais interessantes para os bits das portas P2, P3 e P5
// Porta P2 - conexõeos com o teclado
#define TecCol       P2IN                       // As colunas do teclado estão conectadas 
#define TecCol_dir   P2DIR                       // na porta P2  
#define TecCol_sel   P2SEL        
#define TecC0        BIT0                        // Cada uma das colunas do teclado
#define TecC1        BIT1
#define TecC2        BIT2

// Porta P3 - conexões com o teclado
#define TecLin       P3OUT                       // As linhas do teclado estão conectadas na
#define TecLin_dir   P3DIR                       // porta P3
#define TecLin_sel   P3SEL                                                                                
#define TecL0        BIT0                        // Cada uma das linhas do teclado
#define TecL1        BIT1
#define TecL2        BIT2
#define TecL3        BIT3

// Porta P3 - conexões com o display
#define LCDCtl       P3OUT                       // Os bit En e RS estão conecetados na 
#define LCDCtl_dir   P3DIR                       // porta P3
#define LCDCtl_sel   P3SEL        
#define LCDEn        BIT6                        // Enable  = Bit de controle do LCD
#define LCDRS        BIT7                        

// Porta P5 - conexões com o LCD 
#define LCDPort      P5OUT                       // Os bits de dados do LCD estão conectados
#define LCDPort_dir  P5DIR                       // na porta P5
#define LCDPort_sel  P5SEL
#define LCDData      0xFF                        // O barramento de 8 bits do display utiliza
                                                 // toda a porta P5
                                                 
// Primeira palavra de configuração do display LCD para o kit F1611
#define LCD_DL       BIT4                        // BIT4 = DL, 1 = barramento de 8 bits, 0 = 4 bits
#define LCD_N        BIT3                        // BIT3 = N, 1 = 2 linhas, 0 = 1 linha
#define LCD_F        0                           // BIT2 = f, 1 = matriz 5x10, 0 = matriz 5x8

// Digite aqui as rotinas específicas para o kit do laboratório
void Envia(unsigned char caracter)
{
  LCDPort = caracter;
  LCDCtl &= ~LCDEn; 
  LCDCtl |= LCDEn;
  LCDCtl &= ~LCDEn;
}

void TestaColuna(unsigned char *APT_TEC,unsigned char *TAB_TEC)
{
  if(TecCol&TecC0)                              // Testa se a tecla apertada é da coluna 0
    APT_TEC++;
  
  else if(TecCol&TecC1)                         // Testa se a tecla apertada é da coluna 1
    APT_TEC = APT_TEC + 2;
  
  else if (TecCol&TecC2)                        // Testa se a tecla apertada é da coluna 2
    APT_TEC = APT_TEC + 3;                     
  
  else
    APT_TEC = TAB_TEC;
  
  Tecla = *APT_TEC;                             // Salva na variável Tecla o número selecionado no teclado
  //TecLin |= (TecL0+TecL1+TecL2+TecL3);
}

// Função de atendimento da Interrupção do periférico
#pragma vector=PORT2_VECTOR
__interrupt void Teclado()
{
  unsigned char TAB_TEC[] = {"\0""321654987E0A"};
  unsigned char *APT_TEC;
  
  APT_TEC = TAB_TEC;
  
// Desabilita o atendimento de INTs de P2 para não gerar novas interrupçoes 
// durante o periodo da trepidação  
  //P2IE  &= ~(BIT0+BIT1+BIT2);
  
// Resseta os flags de interrupção que, porventura, tenham sido setados
  //P2IFG &= ~(BIT0+BIT1+BIT2);
 
  __delay_cycles(_25ms);
  
  if(!(TecCol&(TecC0+TecC1+TecC2)))
      P2IFG &= ~(BIT0+BIT1+BIT2);
  
  else
  {
    TecLin &= ~(TecL1+TecL2+TecL3);
    TecLin |= TecL0;
    
    if(TecCol&(TecC0+TecC1+TecC2))
      TestaColuna(APT_TEC,TAB_TEC);
     
    else
    {
      TecLin &= ~(TecL0+TecL2+TecL3);
      TecLin |= TecL1;
      APT_TEC = APT_TEC + 3;
      
      if(TecCol&(TecC0+TecC1+TecC2))
        TestaColuna(APT_TEC,TAB_TEC);
      
      else
      {
        TecLin &= ~(TecL0+TecL1+TecL3);
        TecLin |= TecL2;
        APT_TEC = APT_TEC + 3;
        
        if(TecCol&(TecC0+TecC1+TecC2))
        TestaColuna(APT_TEC,TAB_TEC);
        
        else
        {
          TecLin &= ~(TecL0+TecL1+TecL2);
          TecLin |= TecL3;
          APT_TEC = APT_TEC + 3;
          
          if(TecCol&(TecC0+TecC1+TecC2))
          TestaColuna(APT_TEC,TAB_TEC);
          
          else
          {
            APT_TEC = TAB_TEC;
            Tecla = *APT_TEC;
            TecLin |= (TecL0+TecL1+TecL2+TecL3);
          }
        }
      }
    }
  
  }
  TecLin |= (TecL0+TecL1+TecL2+TecL3);
  P2IFG &= ~(BIT0+BIT1+BIT2);
  asm("EINT");
}
 
void ConfigTec()
{
  TecCol_sel &= ~(TecC0+TecC1+TecC2);
  TecCol_dir &= ~(TecC0+TecC1+TecC2);
  
  TecLin_sel &= ~(TecL0+TecL1+TecL2+TecL3);
  TecLin_dir |= (TecL0+TecL1+TecL2+TecL3);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////

#elif defined (__MSP430G2553__)
// Digite aqui as rotinas específicas para o seu kit com o G2553
// Dando nomes mais interessantes para os bits das portas P1 e P2
// Porta P1 - conexões com o LCD 
#define LCDPort      P1OUT                       // Os bits de dados do LCD estão conectados
#define LCDPort_dir  P1DIR                       // na porta P1
#define LCDPort_sel  P1SEL
#define LCDData      (BIT4+BIT5+BIT6+BIT7)       // Barramento de 4 bits do display

// Porta P1 - conexõeos com o teclado
#define LedVm        BIT0                        // Leds que já vêm montado no kit
#define LedVd        BIT1
#define ChS2         BIT3                        // Micro chave que já vem montada no kit
              
#define TecLin       P1OUT                       // As linhas do teclado estão conectadas na
#define TecLin_dir   P1DIR                       // porta P1
#define TecLin_sel   P1SEL                                                                                
#define TecL1        BIT4                        // Cada uma das linhas do teclado
#define TecL2        BIT5
#define TecL3        BIT6
#define TecL4        BIT7

// Porta P2
#define LCDCtl       P2OUT                       // Os bit En e RS estão conecetados na 
#define LCDCtl_dir   P2DIR                       // porta P2
#define LCDCtl_sel   P2SEL        
#define LCDEn        BIT1                        // Enable  = Bit de controle do LCD
#define LCDRS        BIT0                        // Este bit é compartilhado com a coluna 1
                                                 // do teclado e o pino RS do LCD. Como
                                                 // coluna deve ser uma entrada e como RS
                                                 // deve ser uma saída. Cada um das rotinas 
                                                 // de teclado e display devem fazer a
                                                 // configuração adequada do bit
#define TecCol       P2OUT                       // As colunas do teclado estão conectadas 
#define TecCol_dir   P2DIR                       // na porta P2  
#define TecCol_sel   P2SEL        
#define TecC1        BIT0                        // Cada uma das colunas do teclado
#define TecC2        BIT5
#define TecC3        BIT6
#define TecC4        BIT7

// Primeira palavra de configuração do display LCD para o kit LaunchPad
#define LCD_DL       0                           // BIT4 = DL, 1 = barramento de 8 bits, 0 = 4 bits
#define LCD_N        BIT3                        // BIT3 = N, 1 = 2 linhas, 0 = 1 linha
#define LCD_F        0                           // BIT2 = f, 1 = matriz 5x10, 0 = matriz 5x8

// Digite aqui as rotinas específicas para o seu kit com o G2553
void Envia()
{
  unsigned char leLCD;
  unsigned char desloc;
  
  desloc = caracter;
  leLCD = LCDPort;
  leLCD &= ~0xF0;
  desloc &= ~0x0F;
  desloc = (desloc + leLCD);
  LCDPort = desloc;
  LCDCtl &= ~LCDEn; 
  LCDCtl |= LCDEn;
  LCDCtl &= ~LCDEn;
  
  desloc = caracter;
  desloc &= ~0xF0;
  desloc = (desloc<<4);
  leLCD = LCDPort;
  leLCD &= ~0xF0;
  desloc = (desloc + leLCD);
  LCDPort = desloc;
  LCDCtl &= ~LCDEn; 
  LCDCtl |= LCDEn;
  LCDCtl &= ~LCDEn;
}
///////////////////////////////////////////////////////////////////////////

#else
#error "****** Voce esqueceu de selecionar o processador adequado. *****"
#endif

// Subrotinas comuns a ambos os kits
// Nome: ConfigIO
// Configura as portas E/S conectadas ao display LCD e ao teclado
// Parâmetros: sem parâmetros
void ConfigIO()
{
  LCDPort_dir |= LCDData;
  LCDCtl_dir |= (LCDRS+LCDEn);
  LCDCtl &= ~(LCDRS+LCDEn);
  P1DIR=0XFF;
  P1OUT=0X00;
}

void esquerda (unsigned char velocity)
{
  unsigned char esquerda[4]={0X0C, 0x06, 0x03, 0x09};

static unsigned char dir0= 0;

P1OUT=esquerda[dir0];

for (int cont=0; cont<(10-velocity); cont++){
  __delay_cycles(1500);
}

dir0++;

if (dir0>3){
  dir0=0;
}
}


void direita (unsigned char velocity)
{
  unsigned char direita[4]={0X0C, 0x09, 0x03, 0x06};

static unsigned char dir0= 0;

P1OUT=direita[dir0];

for (int cont=0; cont<(10-velocity); cont++){
  __delay_cycles(1500);
}

dir0++;

if (dir0>3){
  dir0=0;
}
}


// Nome: Delay
// Função: atraso calculado em função de R11 e R12
//         R11 é o ajuste grosso (Y) e 
//         R12 é o ajuste fino (X)
//         A equação do número de estados é:
//
//         T = 3XY + 4Y + 18
//
//         A freq. de clock inicial do F2553 é de aprox. 1,2 MHz
//
// Parâmetros:
//    Entrada: R11 (Y) é ajuste grosso e R12 (X) é o ajuste fino
//    Saída: não tem
void Delay(unsigned int tempinho,unsigned int tempao)
{
  int contX, contY;
  for(contY=0;contY<tempao;contY++)
  {
    for(contX=0;contX<tempinho;contX++);
  }
}

// Nome: Delay100us
// Função: atraso de 100 us 
//         A subrotina adiciona 20 ciclos a equação da subrotina Delay
//         Para 100 us, com clock de 1,2 MHz, são necessários 120 ciclos.
//         Os parâmetros X e Y foram calculados para T = 100
//         Y = 1 e X = 26
// Parâmetros:
//    Entrada: não tem
//    Saída: não tem
void Delay100us()
{
  Delay(26,1);
}

// Nome: Delay2ms
// Função: atraso de 2 ms 
//         A subrotina adiciona 20 ciclos a equação da subrotina Delay
//         Para 2ms, com clock de 1,2 MHz, são necessários 2400 ciclos.
//         Os parâmetros X e Y foram calculados para T = 2380
//         Y = 1 e Y = 786
// Parâmetros:
//    Entrada: não tem
//    Saída: não tem
void Delay2ms()
{
  Delay(786,1);
}

// Nome: Delay5ms
// Função: atraso de 5 ms 
//         A subrotina adiciona 20 ciclos a equação da subrotina Delay
//         Para 5ms, com clock de 1,2 MHz, são necessários 6000 ciclos.
//         Os parâmetros X e Y foram calculados para T = 5980
//         Y = 1 e Y = 1986
// Parâmetros:
//    Entrada: não tem
//    Saída: não tem
void Delay5ms()
{
  Delay(1986,1);
}


// Nome: EnviaComando
// Função: envia um byte que atuará no configuração do display
//         O bit de controle RS é levado a '0' para sinalizar COMANDO
// Parâmetros:
//    Entrada: R10 contem o caracter a ser enviado
//    Saída: configuração do display
void EnviaComando(unsigned char caracter)
{
  LCDCtl &= ~LCDRS;
  Envia(caracter);
  Delay100us();
}


// Nome: ConfigLCD
// Envia os comandos de inicializaçãO para o display LCD
// Parâmetros: sem parâmetros
void ConfigLCD()
{

  EnviaComando(BIT5+LCD_DL+LCD_N+LCD_F);
  Delay5ms();
  EnviaComando(0x0E);
  EnviaComando(0x06);
  EnviaComando(0x01);
  Delay2ms();
}

// Nome: EnviaDado
// Função: envia um byte que deve corresponder a um dos código da tabela ASCII
//          Para trabalhar de forma casada, utilizar a subrotina Envia.
//          O bit de controle RS é levado a '1' para sinalizar DADO
// Parâmetros:
//    Entrada: R10 contem o caracter a ser enviado
//    Saída: o caracter será exibido no display
void EnviaDado(unsigned char caracter)
{
  LCDCtl |= LCDRS;
  Envia(caracter);
  Delay100us();
}

// Nome: EnviaString
// Função: envia uma string de caracteres para o display LCD. Fica em loop até
//         encontrar o 00h, no final da string (null terminated string)
// Parâmetros:
//    Entrada: R11 contem o endereço inicial da string 
//    Saída: o display exibe a string
void EnviaString(unsigned char *ponteiro)
{
  while(*ponteiro!=0x00)
  {
      EnviaDado(*ponteiro);
      ponteiro++;
  }
}

 int main( void )
{
  int velocidade=5;
  unsigned char giro=0;
  // Stop watchdog timer to prevent time out reset
  
  WDTCTL = WDTPW + WDTHOLD;
  
  ConfigIO();
  ConfigLCD();
  
   ConfigTec();
  
  P2IES &= ~(TecC0+TecC1+TecC2);
  P2IE |= (TecC0+TecC1+TecC2);
  
  TecLin |= (TecL0+TecL1+TecL2+TecL3);
  
  // Reabilita as interrupções gerais, permintindo o aninhamento
  asm("EINT");
  
  EnviaComando(0x80);
  TecLin |= (TecL0+TecL1+TecL2+TecL3);
  
  EnviaString(vel);
    EnviaComando(0x8D);
    EnviaDado(velocidade+0x30); 
    EnviaComando(0xc0);
    EnviaString(EST1); 
  
  while(1)
  {
  
    
    if (Tecla)
    { 
    
    switch (Tecla)
    {
    case 0x35 :
    EnviaComando(0xc0);
    EnviaString(apaga);   
    EnviaComando(0xc0);
    EnviaString(EST1);
    giro=0;
    break;
    
    case 0x36 :
      EnviaComando(0xc0);
    EnviaString(apaga);   
    EnviaComando(0xc0);
    EnviaString(EST3);
    giro=1;
    break;
    
    case 0x34 :
     EnviaComando(0xc0);
    EnviaString(apaga);   
    EnviaComando(0xc0);
    EnviaString(EST2);   
    giro=2;
    break;
    
    case 0x32 :
    velocidade++;
    EnviaComando(0x80);
    EnviaString(vel);
    EnviaString(apaga);
    EnviaComando(0x8D);
     if(velocidade>9){
      velocidade=9;
    }
    EnviaDado(velocidade+0x30); 
    break;
    
    case 0x38 :
    velocidade--;
    EnviaComando(0x80);
    EnviaString(vel);
    EnviaString(apaga);
    EnviaComando(0x8D); 
     if(velocidade<1){
      velocidade=1;
    }
    EnviaDado(velocidade+0x30);  
    break;
    
    default:
    Tecla=0; 
   
    
    }
    Tecla=0;
    } 
    
   

    if (giro==1){
    direita(velocidade);
    }
    if (giro==2){
    esquerda(velocidade);
    }
    
    
      
          
    
     
  }
  
  return 0;
}

