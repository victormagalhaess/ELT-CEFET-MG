const int tonePin = 11;

#define OCTAVE_OFFSET 0


byte x;



unsigned short int notes[] = {
  0,
  262, 277, 294, 311, 330, 349, 370, 392, 415, 440, 466, 494,
  523, 554, 587, 622, 659, 698, 740, 784, 831, 880, 932, 988,
  1047, 1109, 1175, 1245, 1319, 1397, 1480, 1568, 1661, 1760, 1865, 1976,
  2093, 2217, 2349, 2489, 2637, 2794, 2960, 3136, 3322, 3520, 3729, 3951, 0
};

char *song3 = "nokia:d=4,o=5,b=100:16g#7,16f#7,8a#6,8a#6,16e#7,16d#7,8f#6,8g#6,16d#7,16c#7,8e#6,8g#6,8c#7";

char *song6 = "The Simpsons:d=4,o=5,b=160:c.6,e6,f#6,8a6,g.6,e6,c6,8a,8f#,8f#,8f#,2g,8p,8p,8f#,8f#,8f#,8g,a#.,8c6,8c6,8c6,c6";
char *song9 = "Tetris:d=4,o=5,b=160:e6,8b,8c6,8d6,16e6,16d6,8c6,8b,a,8a,8c6,e6,8d6,8c6,b.,8c6,d6,e6,c6,a,2a,8p,d6,8f6,a6,8g6,8f6,e.6,8c6,e6,8d6,8c6,b,8b,8c6,d6,e6,c6,a,2a";
char *song10 = "WeAreThe:d=16,o=5,b=100:2d6,8c#6,8d6,4c#6,4a,8f#,4b,2f#,8a,2d6,8e6,8f#6,4a6,4f#6,b,2b,4b,4a,8b,4a,4g,4g6,4f#6,8g6,4f#6,4e6,4f#6,4d6,8g6,4f#6,4d6,8g6,4f6,4d6,8g6,4f6,2d6,8c6,8a";


char *song2 = "Looney:d=4,o=5,b=140:32p,c6,8f6,8e6,8d6,8c6,a.,8c6,8f6,8e6,8d6,8d#6,e.6,8e6,8e6,8c6,8d6,8c6,8e6,8c6,8d6,8a,8c6,8g,8a#,8a,8f";

char *song8 = "SonicThe:d=4,o=5,b=125:16c7,32p,8a6,32p,16c7,32p,8b6,32p,16c7,32p,8b6,32p,g6,p,16a6,32p,16e7,32p,8d7,32p,16c7,32p,8b6,32p,16c7,32p,8b6,32p,g6,p,16c7,32p,8a6,32p,16c7,32p,8b6,32p,16c7,32p,8b6,32p,g6,p,16a6,32p,8f6,32p";
char *song4 = "StarWars:d=4,o=5,b=45:32p,32f#,32f#,32f#,8b.,8f#.6,32e6,32d#6,32c#6,8b.6,16f#.6,32e6,32d#6,32c#6,8b.6,16f#.6,32e6,32d#6,32e6,8c#.6,32f#,32f#,32f#,8b.,8f#.6,32e6,32d#6,32c#6,8b.6,16f#.6,32e6,32d#6,32c#6,8b.6,16f#.6,32e6,32d#6,32e6,8c#6";
char *song1 = "A-Team:d=8,o=6,b=125:b5,e.,16g,f#,4e,b,4a.,4f#.,e.,16g,f#,4d,f,2b5,p,b5,e.,16g,f#,4e,b,4d7,c#7,4c7,g#,c.7,16b,a#,4a#5,g,2e";
 
char *song5 = "Californ:d=4,o=5,b=90:8a,8e6,8b6,c7,8e6,16d6,8c6,8f,8c6,8g6,a6,8d6,c6,8a,8e6,8b6,c7,8b6,c7,8e6,16d6,16e6,8c6,8f,8c6,8g6,a6,8e6,d6,8c6,8g6,8c7,8g6,8g,8d6,8g6,8d6,8f,8c6,8f6,8c6,a6,d6,8a,8e6,8b6,c7,8a6,16d6,16e6,8c6";
char *song7 = "Smurfs:d=32,o=5,b=200:4c#6,16p,4f#6,p,16c#6,p,8d#6,p,8b,p,4g#,16p,4c#6,p,16a#,p,8f#,p,8a#,p,4g#,4p,g#,p,a#,p,b,p,c6,p,4c#6,16p,4f#6,p,16c#6,p,8d#6,p,8b,p,4g#,16p,4c#6,p,16a#,p,8b,p,8f,p,4f#";
char *song11 = "MissionImp:d=16,o=6,b=95:32d,32d#,32d,32d#,32d,32d#,32d,32d#,32d,32d,32d#,32e,32f,32f#,32g,g,8p,g,8p,a#,p,c7,p,g,8p,g,8p,f,p,f#,p,g,8p,g,8p,a#,p,c7,p,g,8p,g,8p,f,p,f#,p,a#,g,2d,32p,a#,g,2c#,32p,a#,g,2c,a#5,8c,2p,32p";

void setup(void)
{
   pinMode(5, OUTPUT);
  pinMode(4, INPUT_PULLUP);
  pinMode(3, INPUT_PULLUP);

  for (int i=2; i<14; i++) {
    pinMode(i, INPUT_PULLUP);
  }
}

#define isdigit(n) (n >= '0' && n <= '9')

void play_rtttl(char *p)
{

  byte default_dur = 4;
  byte default_oct = 6;
  int bpm = 63;
  int num;
  long wholenote;
  long duration;
  byte note;
  byte scale;


  while(*p != ':') p++;
  p++;


  if(*p == 'd')
  {
    p++;
    p++;
    num = 0;
    while(isdigit(*p))
    {
      num = (num * 10) + (*p++ - '0');
    }
    if(num > 0) default_dur = num;
    p++;
  }

  if(*p == 'o')
  {
    p++;
    p++;
    num = *p++ - '0';
    if(num >= 3 && num <=7) default_oct = num;
    p++;
  }

  if(*p == 'b')
  {
    p++;
    p++;
    num = 0;
    while(isdigit(*p))
    {
      num = (num * 10) + (*p++ - '0');
    }
    bpm = num;
    p++;
  }

  wholenote = (60 * 1000L / bpm) * 4;

  while(*p)
  {

    num = 0;
    while(isdigit(*p))
    {
      num = (num * 10) + (*p++ - '0');
    }

    if(num) duration = wholenote / num;
    else duration = wholenote / default_dur;


    note = 0;

    switch(*p)
    {
    case 'c':
      note = 1;
      break;
    case 'd':
      note = 3;
      break;
    case 'e':
      note = 5;
      break;
    case 'f':
      note = 6;
      break;
    case 'g':
      note = 8;
      break;
    case 'a':
      note = 10;
      break;
    case 'b':
      note = 12;
      break;
    case 'p':
    default:
      note = 0;
    }
    p++;


    if(*p == '#')
    {
      note++;
      p++;
    }


    if(*p == '.')
    {
      duration += duration/2;
      p++;
    }


    if(isdigit(*p))
    {
      scale = *p - '0';
      p++;
    }
    else
    {
      scale = default_oct;
    }

    scale += OCTAVE_OFFSET;

    if(*p == ',')
      p++;


    if(note)
    {

      tone(tonePin, notes[(scale - 4) * 12 + note]);
      delay(duration);
      noTone(tonePin);
    }

    else
    {

      delay(duration);
    }
  }
}

void loop(void)
{
 


    if (!digitalRead(4)){
      x=x+1;
    }

   
      if (x==1){
        play_rtttl(song1);
        x++;
    }

      if (x==3){
        play_rtttl(song2);
        x++;
      }

    
      if (x==5){
        play_rtttl(song3);
         x++;
      }
 

 
      if (x==7){
        play_rtttl(song4);
        x++;
      }
 


      if (x==9){
        play_rtttl(song5);
        x++;
      }



      if (x==11){
        play_rtttl(song6);
        x++;
      }
    

  
      if (x==13){
        play_rtttl(song7);
        x++;
      }
  

     
      if (x==15){
        play_rtttl(song8);
         x++;
      }
    

    
      if (x==17){
        play_rtttl(song9);
        x++;
      }
  

     
      if (x==19){
        play_rtttl(song10);
        x++;
      }
    

    
      if (x==21){
        play_rtttl(song11);
          x=0;
      }
      
    
 /* else  if (!digitalRead(3)){

    if(!digitalRead(2)){

      for (int i=3; i<14; i++)   {
        while (!digitalRead(i))
        {
          tone (14, notespiano [i-3]);
          digitalWrite(5,HIGH);
        }

        noTone (14);
        digitalWrite(5,LOW);

       }
    }

    if(digitalRead(2), HIGH){

      for (int i=3; i<14; i++)   {
        while (!digitalRead(i))
        {
          tone (14, notespianosustenido [i-3]);
          digitalWrite(5,HIGH);
        }
        noTone (14);
        digitalWrite(5,LOW);
      }
    }
  }*/
}

