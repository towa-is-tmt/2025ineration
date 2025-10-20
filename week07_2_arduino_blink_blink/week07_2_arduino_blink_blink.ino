// week07_2_arduino_blink_blink

void setup() {
  pinMode(12, OUTPUT); // 把第12支腳,能送出資料 OUTPUT
  pinMode(13, OUTPUT); // 把第13支腳,能送出資料 OUTPUT
}

void loop() {
  digitalWrite(12, LOW);  // 熄掉
  digitalWrite(13, HIGH); // 發亮
  delay(500);
  digitalWrite(13, LOW);  // 熄掉
  digitalWrite(12, HIGH); // 發亮
  delay(500);
}