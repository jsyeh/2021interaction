import ddf.minim.*;
Minim minim;
AudioPlayer player, player2;
void setup(){
  size(500,500);
  minim = new Minim(this);
  player = minim.loadFile("shot.wav");//音效
  
  player2 = minim.loadFile("bg.mp3");//背景音樂
  player2.play(); 
}
void draw(){
}
void mousePressed(){
  player.rewind();
  player.play();
}
