// week12_3_dino_jump_part3_boardX_falling
// 修改自 week12_2_dino_jump_part2_board_if_dy
// 恐龍跳跳 (3)板子 (4)卡在板子上

PImage img;

void setup() {
  size(300, 500);
  img = loadImage("dino.png");
}

// boardX, boardY: 平台的位置
// x, y: 恐龍的位置; dx, dy: 恐龍的速度
float boardX = 200, boardY = 400;
float x = 200, y = 400, dx = 0, dy = 0;

void draw() {
  background(255);
  
  // 繪製平台
  rect(boardX, boardY, 100, 5);
  
  // 繪製恐龍 (假設寬高為 100x100)
  image(img, x, y, 100, 100);

  // 改进的碰撞檢測邏輯：檢查恐龍是否即將撞上平台 **並且** 恐龍的水平位置在平台的範圍內
  // 碰撞條件：
  // 1. 垂直即將碰撞：(y+100 <= boardY && y+dy+100 >= boardY)
  // 2. 水平在平台範圍內：(x <= boardX+100 && x+100 >= boardX)
  if (y + 100 <= boardY && y + dy + 100 >= boardY && x <= boardX + 100 && x + 100 >= boardX) {
    y = boardY - 100; // 將恐龍鎖定在平台頂部
    dy = 0;           // 垂直速度歸零
  } else {
    // 正常的重力/運動邏輯
    y += dy; // 根據垂直速度更新垂直位置
    
    // 重力判斷 (當不在平台上時，施加重力，且硬編碼的 400 判斷仍在)
    if (y < 400) { 
      dy += 0.98;
    } else {
      dy = 0;
    }
  }
  
  x += dx; // 根據水平速度更新水平位置
}

void keyPressed() {
  if (keyCode == UP) { 
    dy = -15; // 跳躍
  }
  if (keyCode == LEFT) { 
    dx = -1; // 往左移動
  }
  if (keyCode == RIGHT) { 
    dx = +1; // 往右移動
  }
}

void keyReleased() {
  // 當放開左或右鍵時，水平速度歸零，停止移動
  if (keyCode == LEFT || keyCode == RIGHT) {
    dx = 0; // 放開，就不要再左右移動了
  }
}
