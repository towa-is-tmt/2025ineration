//week03-1 pinMode_8_OUTPUT_tone_8_800_1000
void setup() {
  // put your setup code here, to run once:
  pinMode(8,OUTPUT); //負責發聲
  tone(8,1600, 1000);
  delay(1000);
  pinMode(8,OUTPUT); //負責發聲
  tone(8,800, 1000);
  delay(1000);
  pinMode(8,OUTPUT); //負責發聲
  tone(8,400, 1000);
  delay(1000);
}

void loop() {
  // put your main code here, to run repeatedly:
  
}
