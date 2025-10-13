//week06_1_sound_library_soundfile_play
//sketch-library-ManageLibries 找sound 安裝他
//file examples libraries 核心函式庫 sound soundfile simplayback
//參考 範例是否有聲音
import precessing.sound.*; //使用聲音外掛模組
SoundFile sound; //宣告soundfile 物件變數
void setup(){
  sound = new SoundFile(this,"music.mp3") //設定音樂檔
  
  sound.play();//播放聲音
}
void draw(){
   
}
