// sketch_oct27a.ino

// week08_Arduino_G5_C5
void setup() {
  Serial.begin(9600);
  pinMode(8, OUTPUT); // 「發聲音」的8
  tone(8, 784, 100); // 聲音 So
  delay(100);
  tone(8, 523, 100); // 聲音 Do
  delay(100);
}
void SerialEvent() {
  while (Serial.available()) {
    char now = Serial.read();
    if (now=='R') {
      tone(8, 784, 100); // 聲音 So
      delay(100);
      tone(8, 523, 100); // 聲音 Do
      delay(100);
    } else {
      tone(8, 523, 100); // 聲音 Do
      delay(100);
      tone(8, 784, 100); // 聲音 So
      delay(100);
    }
  }
}
void loop() {

}