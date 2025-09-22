// week03_7_arduino_serial_read_tone
void setup() {
  Serial.begin(9600); // 設定通訊速度
  pinMode(8, OUTPUT); // 8 叫 要會震動
}

void serialEvent() { // 等待 USB 的事件
  while (Serial.available()) { // 若有資料
    Serial.read();
    tone(8, 800, 200);
  }
}

void loop() {
  // put your main code here, to run repeatedly:
}
