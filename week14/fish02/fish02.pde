float [] fishX=new float[30];
float [] fishY=new float[30];
void setup(){
  size(500,500);
  for(int i=0; i<30; i++){
    fishX[i]=random(-500,500);
    fishY[i]=random(-500,500);
  }
}//吃東西,越吃越大,不夠大不能吃,時間內吃完, Q: 如何移動畫面
float x=0, y=0;
void draw(){
  background(255);
  pushMatrix();
    translate(-x, -y);
    for(int i=0; i<30; i++){
      fill(255); ellipse(fishX[i], fishY[i],10,10);
    }
    fill(255,0,0); ellipse(250+x,250+y, 10,10);
  popMatrix();
}
void keyPressed(){
  if(keyCode==LEFT) x-=3;
  if(keyCode==RIGHT) x+=3;
  if(keyCode==UP) y-=3;
  if(keyCode==DOWN) y+=3;
}
