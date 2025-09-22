// week03_7_processing_mouse_serial_write
import processing.serial.*; // 使用 Serial 分掛
Serial myPort;

void setup() {
  size(400, 400);
  myPort = new Serial(this, "COM5", 9600);
  // myPort = new Serial(this, "COM6", 9600); // COM6 是某些的電腦
}

void mousePressed() {
  myPort.write('b'); // 用 USB 傳字母 'b'
}

void draw() {
  if (mousePressed) background(#FF0000);
  else background(#00FF00);
}
