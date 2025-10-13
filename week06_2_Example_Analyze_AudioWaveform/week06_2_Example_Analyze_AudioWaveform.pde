//week06_2_Example_Analyze_AudioWaveform
//他用了 Waveform 物件變數 來分析音樂
import processing.sound.*;

SoundFile sample; // 宣告 SoundFile 變數
Waveform waveform; // 宣告 Waveform 變數
int samples = 100;

public void setup() {
  size(640, 360);
  background(255);

  sample = new SoundFile(this, "beat.aiff"); // 讀入音樂檔
  sample.loop(); // 循環播放 vs. 之前 .play() 是只播放一次
  
  waveform = new Waveform(this, samples); // 想用 100 格, 來分析音樂
  waveform.input(sample); // 用剛剛的音樂檔, 進行分析
}
