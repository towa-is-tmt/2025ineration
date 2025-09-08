//file-performance 改字體大小
//week01-2 keyPress textSize text_key
void setup(){
  size(500, 500);
}
void draw(){
  if(keyPressed){ //切換成英文注音法
    background(#FF0000); // red color
    textSize(80); //改變字型大小
    text(""+ key, 100, 100);
  }
}
