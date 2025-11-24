week12_1_dino_jump_part1_loadImage_dy_jump

PImage img; // 聲明一個 PImage 變數來存儲恐龍的圖像

void setup() {
  size(300, 500); // 設置繪圖視窗的大小為 300 寬, 500 高
  img = loadImage("dino.png"); // 加載名為 "dino.png" 的圖像文件
}

// 恐龍的初始位置和速度變數
float x = 200, y = 400, dx = 0, dy = 0;

void draw() {
  background(255); // 設置背景為白色 (255)

  // image(img, mouseX, mouseY, 100, 100); // 註釋掉的代碼：跟隨鼠標顯示圖像
  image(img, x, y, 100, 100); // 在 (x, y) 坐標繪製圖像，大小為 100x100

  y += dy; // 更新 y 坐標：根據垂直速度 dy 移動圖像

  if (y < 400) { // 如果恐龍在空中 (y 坐標小於地面坐標 400)
    dy += 0.98; // 施加重力加速度，使垂直速度 dy 增加 (恐龍開始下落)
  } else { // 如果恐龍落到地面 (y 坐標等於或大於 400)
    dy = 0; // 垂直速度歸零
    y = 400; // 確保恐龍精確停在地面上
  }
}

void keyPressed() {
  if (keyCode == UP) { // 如果按下了「向上箭頭」鍵
    dy = -15; // 設置一個負的垂直速度，使恐龍向上跳躍
  }
}
