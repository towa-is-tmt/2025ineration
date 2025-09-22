// week03_8_processing_mouse_serial_write_space
import processing.serial.*; //使用Serial 外掛
Serial myPort;

void setup() {
  size(400, 400);
  myPort = new Serial(this, "COM5", 9600);
}//COM3 4 5 or 6 要看你的電腦

void mousePressed() {
  if (mouseButton == LEFT) myPort.write('b');
  if (mouseButton == RIGHT) myPort.write('');
}

void draw() {
  if (mousePressed) background(#FF0000);
  else background(#00FF00);
}
