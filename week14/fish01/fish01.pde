//吃東西,越吃越大,不夠大不能吃,時間內吃完, Q: 如何移動畫面
float [] fishX=new float[30];
float [] fishY=new float[30];
void setup(){
  size(500,500);
  for(int i=0; i<30; i++){
    fishX[i]=random(500);
    fishY[i]=random(500);
  }
}
float x=250, y=250;
void draw(){
  background(255);
  for(int i=0; i<30; i++){
    fill(255); ellipse(fishX[i], fishY[i],10,10);
  }
  fill(255,0,0); ellipse(x,y, 10,10);
}
void keyPressed(){
  if(keyCode==LEFT) x--;
  if(keyCode==RIGHT) x++;
}
