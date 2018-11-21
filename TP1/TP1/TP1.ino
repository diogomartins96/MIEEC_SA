// Entradas
const int sens_entr = 8;
const int sens_sai  = 9;

// Saídas
const int semaf_verde   = 5;
const int semaf_vermelho= 4;
const int canc_entr     = 2;
const int canc_sai      = 3;

// Corre aquado do reset( uma unica vez)
void setup() 
{                
  
  Serial.begin(115200);
  
  // Definição de pinos como Entradas/Saidas.
  pinMode(semaf_verde, OUTPUT);     
  pinMode(semaf_vermelho, OUTPUT);     
  pinMode(canc_entr, OUTPUT);     
  pinMode(canc_sai, OUTPUT);     
  pinMode(sens_entr,INPUT_PULLUP); 
  pinMode(sens_sai,INPUT_PULLUP); 
  
  digitalWrite(semaf_verde, HIGH);
  digitalWrite(semaf_vermelho, HIGH);
  digitalWrite(canc_entr, HIGH);
  digitalWrite(canc_sai, HIGH);
  delay(1000);  //Espera 1000ms (1s)
  digitalWrite(semaf_verde, LOW);
  digitalWrite(semaf_vermelho, LOW);
  digitalWrite(canc_entr, LOW);
  digitalWrite(canc_sai, LOW);
}

// Sequencia de codigo que corre em ciclo
void loop() 
{
  // Se qualquer dos botões carregado, acende todos LEDs, senão apaga-os todos
  if ((digitalRead(sens_entr)==LOW) || (digitalRead(sens_sai)==LOW)) {
    digitalWrite(semaf_verde, HIGH);
    digitalWrite(semaf_vermelho, HIGH);
    digitalWrite(canc_entr, HIGH);
    digitalWrite(canc_sai, HIGH);
  } else {
    digitalWrite(semaf_verde, LOW);
    digitalWrite(semaf_vermelho, LOW);
    digitalWrite(canc_entr, LOW);
    digitalWrite(canc_sai, LOW);
  }

  Serial.print  (digitalRead(sens_entr));
  Serial.println(digitalRead(sens_sai));

  delay(10);                             // 10 ms
}
