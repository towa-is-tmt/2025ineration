// week01-3 keyPress keyCode_LEFT_RIGHT_UP_DOWN
// 使用鍵盤方向鍵控制矩形移動
void setup(){
  size(500, 500); // 設定畫布
}

int x = 250, y = 250; // 設定矩形初始位置 (x, y)

void draw(){
  background(#FFFFAA); // 設定背景顏色為淡黃色
  rect(x, y, 100, 50); // 在 (x, y) 畫出一個寬 100、高 50 的矩形

  // 如果有按鍵被按下，根據方向鍵改變矩形位置
  if (keyPressed) {
    if (keyCode == LEFT) x -= 5;  // 向左移動 5 
    if (keyCode == RIGHT) x += 5; // 向右移動 5 
    if (keyCode == DOWN) y += 5;  // 向下移動 5 
    if (keyCode == UP) y -= 5;    // 向上移動 5 
  }
}
