// week07_1_arduino_blink
// 安裝好後, Select Board 要選剛裝置管理員的那個 USB-Serial
// 的 COM3 or COM4 or COM5 選 arduino uno 
void setup() {
  pinMode(13, OUTPUT); // 把第13支腳,能送出資料 OUTPUT
}

void loop() {
  digitalWrite(13, HIGH); // 發亮
  delay(500);
  digitalWrite(13, LOW); // 熄掉
  digitalWrite(12, HIGH);
  delay(500);
  digitalWrite(12, LOW);
  delay(500);
}