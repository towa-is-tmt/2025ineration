// week03-5_pin2_button_digitalRead_digitalWrite
void setup() {
  // put your setup code here, to run once:
  pinMode(2, INPUT_PULLUP); //按鈕button 是2號 沒按下去就會 拉高
  for(int i=3; i<=13; i++){ //把pin 3 4 5 ..... 13 都設成 OUTPUT
    pinMode(i, OUTPUT); //都是可以發光發亮的  
  }
}
int now = 3;
void loop() {
  // put your main code here, to run repeatedly:
  if(digitalRead(2)==LOW){ //按下去
    now = now + 1;
    if(now>13) now = 3;
  for(int i = 3; i<=13; i++){
    digitalWrite(i, LOW); //全部清空 變成LOW 不亮
  }
  digitalWrite(now, HIGH); //now 負責亮
  delay(500); //休息一夏 等0.5秒 才不會亂運作
  }
}
