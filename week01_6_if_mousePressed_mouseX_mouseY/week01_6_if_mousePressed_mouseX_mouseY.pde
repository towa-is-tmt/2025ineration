// week01_6_if_mousePressed_mouseX_mouseY
// 鼠標按下後，根據滑鼠位置移動矩形

int x = 200, y = 250; // 初始矩形位置

void setup() {
  size(500, 500); // 設定畫布大小為 500x500 像素
}

void draw() {
  background(#FFFAA); // 設定背景色（淡黃色）

  // 判斷滑鼠是否按下，且游標在矩形範圍內
  // 如果在範圍內，則更新矩形位置，使其中心對齊滑鼠
  if (mousePressed &&
      x < mouseX && mouseX < x + 100 &&
      y < mouseY && mouseY < y + 50) {
    x = mouseX - 50; // 讓矩形中心對齊滑鼠 X 軸
    y = mouseY - 25; // 讓矩形中心對齊滑鼠 Y 軸
  }

  rect(x, y, 100, 50); // 畫出矩形，寬 100 高 50
}
