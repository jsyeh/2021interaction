//小雞過馬路 chicken on road
float []chinkX=new float[10];
float []chinkY=new float[10];
void setup(){
  size(400,300);
  for(int i=0;i<10; i++){
    chinkX[i]=random(0,150);
    chinkY[i]=random(0,300);
  }
}
void draw(){
  background(122,171,185);
  fill(102,166,28);
  rect(0,0, 150,300);
  for(int i=0;i<10;i++){
    fill(255); ellipse(chinkX[i],chinkY[i],30,80);
  }
}
