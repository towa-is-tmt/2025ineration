// week02-1 mousePressed
import processing.serial.*; //第一行程式 使用USB的serial
Serial myPort; //第二行程式 宣告USB 的Serial 變數 myPort
void mousePressed(){
   myPort.write('A'); //第四行程式碼
}

void setup(){
   size(400, 400); 
   myPort = new Serial(this, "COM4", 9600);//第4行程式
}//剛剛在arduino設定com多少 就多少
void draw(){
   if(mousePressed) background(#FF0000);
   else background(#00FF00);
}
