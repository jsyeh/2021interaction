//小雞過馬路 chicken on road
int chinkID=0;
float []chinkX=new float[10];
float []chinkY=new float[10];
float []chinkVX=new float[10];
float []chinkVY=new float[10];
void setup(){
  size(400,300);
  for(int i=0;i<10; i++){
    chinkX[i]=random(10,150-10);
    chinkY[i]=random(10,300-10);
    chinkVX[i]=random(-1,1);
    chinkVY[i]=random(-1,1);
  }
}
void draw(){
  background(122,171,185);
  fill(102,166,28);
  rect(0,0, 150,300);
  for(int i=0;i<10;i++){
    if(chinkID==i) strokeWeight(3);
    else strokeWeight(1);
    fill(255); ellipse(chinkX[i],chinkY[i],20,50);
    chinkX[i] += chinkVX[i];
    chinkY[i] += chinkVY[i];
    if(chinkY[i]<0) chinkVY[i] = abs(chinkVY[i]);
    if(chinkY[i]>300) chinkVY[i] = -abs(chinkVY[i]);
    if(chinkX[i]<0) chinkVX[i] = abs(chinkVX[i]);
    if(chinkX[i]>150) chinkVX[i] = -abs(chinkVX[i]);
  }
}
