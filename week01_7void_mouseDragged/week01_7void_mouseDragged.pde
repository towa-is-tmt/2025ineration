// week01-7 | void mouseDragged
// 動態畫圖，滑鼠拖曳，因為永遠都會有座標

  int x = 200, y = 250;

void setup() {
  size(500, 500); 

}

void draw() {
  background(#FFFFAA); 
  rect(x, y, 50, 50); 
}

void mouseDragged() {
  // 當滑鼠拖動且游標在圓形範圍內時，移動圓形
  if (mousePressed && x < mouseX && mouseX < x + 100 && y < mouseY && mouseY < y + 50) {
    x += mouseX - pmouseX;
    y += mouseY - pmouseY;
  }
}
