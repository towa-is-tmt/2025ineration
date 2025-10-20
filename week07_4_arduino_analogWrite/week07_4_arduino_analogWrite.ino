// week07_4_arduino_analogWrite
void setup() {
  pinMode(11, OUTPUT); // 第11個pin(有PWM功能,可0-255輸出),要輸出
}
int a=0;
void loop() {
  analogWrite(11, a); // 亮的程度, 是 a 的值
  a = (a+1) % 256;    // 會再亮一點點
  delay(10);          // 每 0.01 秒
}