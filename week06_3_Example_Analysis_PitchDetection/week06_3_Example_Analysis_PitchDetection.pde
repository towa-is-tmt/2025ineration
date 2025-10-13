// week06_3_Example_Analysis_PitchDetection
// 想要把聲音的最重要的頻率(Hz)找出來, 使用 PitchDetector 物件

import processing.sound.*;
SoundFile sound; // 新加這一行, 因為要把音樂 beat.mp3 讀進來
PitchDetector pitchDetector; // 宣告 PitchDetector 物件變數
int i;

void setup() {
  size(640, 320);
  background(0);

  sound = new SoundFile(this, "beat.mp3"); // 新加這一行, 把 beat.mp3 讀入
  sound.loop();
  pitchDetector = new PitchDetector(this); // 新增、初始化 PitchDetector 物件
  // pitchDetector.input(new AudioIn(this, 0)); // 原本程式, 是用 Audio In 音效卡的音源輸入
  pitchDetector.input(sound);
}

void draw() {
  // clear column
  noStroke();
  fill(color(0));
  rect(i, 0, 1, height);
}
