// Week1-4 void_mousePressed void_keyRelsease
void setup() {
  size(500, 500);
}

int x = 200, y = 250, dx = 0, dy = 0;

void draw() {
  background(#FFFFAA);
  rect(x, y, 100, 50);
  // 支援同時按兩個鍵，斜斜走
  x += dx;
  y += dy;
}

void keyPressed() { // 按下鍵的時候
  if (keyCode == RIGHT) dx = +3;
  if (keyCode == LEFT)  dx = -3;
  if (keyCode == UP)    dy = -3;
  if (keyCode == DOWN)  dy = +3;
}

void keyReleased() { // 放開鍵的時候
  if (keyCode == LEFT || keyCode == RIGHT) dx = 0;
  if (keyCode == UP || keyCode == DOWN)    dy = 0;
}
