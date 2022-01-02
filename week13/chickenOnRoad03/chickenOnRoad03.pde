//小雞過馬路 chicken on road
int chinkID=0;
float []chinkX=new float[10];
float []chinkY=new float[10];
float []chinkVX=new float[10];
float []chinkVY=new float[10];
boolean [] run=new boolean[10];
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
    if(run[i]==false && chinkX[i]>150) chinkVX[i] = -abs(chinkVX[i]);
  }//不能跑出去的雞會反彈
}
void keyPressed(){
  int i=chinkID;
  if(keyCode==RIGHT) { chinkVX[i]=1; chinkVY[i]=0;}
  else if(keyCode==LEFT) { chinkVX[i]=-1; chinkVY[i]=0;}
  else if(keyCode==UP) {chinkVX[i]=0; chinkVY[i]=-1;}
  else if(keyCode==DOWN) {chinkVX[i]=0; chinkVY[i]=1;}
  run[i]=true;//可以跑出去了 :)
}
