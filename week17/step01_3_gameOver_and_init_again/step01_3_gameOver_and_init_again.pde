//Q3: gameOver後3秒,重新開始
void setup(){
  size(500,500);
  init();
}
int T=0, Blood=5;
void draw(){
  background(255);
  fill(255,0,0); rect(0,0, Blood*50, 50);
  if(T>0){
    background(255,128,0);
    fill(255); text("GameOver", width/2, height/2);
    T--;
    if(T==0) init();
  }
}
void init(){
  Blood=5;
}
void mousePressed(){
  if( dist(mouseX,mouseY, width/2,height/2)<30 ) Blood--;
  if(Blood==0) T=180;
}
