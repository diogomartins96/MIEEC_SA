#include "sa.h"

// Definir pinos atribuídos a cada variável
const int pino_sens_entr     = 9;  // Entrada
const int pino_sens_sai      = 8;  // Entrada
const int pino_semaf_verde   = 5;  // Saída
const int pino_semaf_vermelho= 4;  // Saída
const int pino_canc_entr     = 3;  // Saída
const int pino_canc_sai      = 2;  // Saída

const int total_timers  = 8;
timer_t timer[total_timers];

// Estas variáveis são atualizadas automaticamente no início do ciclo
byte sens_entr;
byte sens_sai;

// Estas variáveis são escritas efetivamente para as saídas no final do ciclo
byte semaf_verde;
byte semaf_vermelho;
byte canc_entr;
byte canc_sai;




// Atualizar os timer para refletirem o seu valor atual durante o ciclo de controlo
void refresh_timers(void)
{
 byte i;
 for(i = 0; i < total_timers; i++)
   refresh_timer(timer[i]);
}


// Ler e atualizar as variaveis correspondentes as entradas
void read_inputs(void)
{
  sens_entr = digitalRead(pino_sens_entr);    
  sens_sai  = digitalRead(pino_sens_sai);    
}


// Ler e atualizar as variaveis correspondentes as saidas
void write_outputs(void)
{
  digitalWrite(pino_semaf_verde, semaf_verde);
  digitalWrite(pino_semaf_vermelho, semaf_vermelho);
  digitalWrite(pino_canc_entr, canc_entr);
  digitalWrite(pino_canc_sai, canc_sai);
}


long previousMillis = 0; 

// Sequencia de codigo que corre em ciclo
void loop() 
{
  unsigned long currentMillis = millis();
  if(currentMillis - previousMillis > 10) {   // 10 ms
    
    refresh_timers();
    read_inputs();
  
    loop_10ms();
    
    write_outputs();
  }
}


// Corre aquado do reset( uma unica vez)
void setup() 
{                
  
  Serial.begin(115200);  // Configura a velocidade das comunicações porta serie
  
  // Definição de pinos como Entradas/Saidas.
  pinMode(pino_semaf_verde, OUTPUT);     
  pinMode(pino_semaf_vermelho, OUTPUT);     
  pinMode(pino_canc_entr, OUTPUT);     
  pinMode(pino_canc_sai, OUTPUT);     
  pinMode(pino_sens_entr, INPUT_PULLUP); 
  pinMode(pino_sens_sai, INPUT_PULLUP); 
  
  digitalWrite(pino_semaf_verde, HIGH);
  digitalWrite(pino_semaf_vermelho, HIGH);
  digitalWrite(pino_canc_entr, HIGH);
  digitalWrite(pino_canc_sai, HIGH);
  delay(500);  //Espera 500ms (0.5s)

  digitalWrite(pino_semaf_verde, LOW);
  digitalWrite(pino_semaf_vermelho, LOW);
  digitalWrite(pino_canc_entr, LOW);
  digitalWrite(pino_canc_sai, LOW);
  delay(500);  //Espera 500ms
  
  timer[0].p = 10; // 1 segundo
}


///////////////////////////////////////////////////////////////


byte estado = 0;       // Variável Global

// A função seguinte é chamada a cada 10ms

void loop_10ms(void)   // Alterar apenas o código desta função
{
  // Calcular o próximo estado
  if ((estado == 0) && (sens_entr == 0)) {
    estado = 1;
    start_timer(timer[0]);
  } else if ((estado == 1) && (timer[0].q == 1)) {
    estado = 0;
  }
  
  // Calcular as saidas 
  semaf_verde    = (estado == 0);
  semaf_vermelho = (estado == 1);

  // Comunicar dados relevantes
  Serial.print  (estado);
  Serial.print  ("  ");
  Serial.print  (sens_entr);
  Serial.println(sens_sai);
}



