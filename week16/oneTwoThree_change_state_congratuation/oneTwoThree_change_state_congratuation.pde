//碰到木頭人就過關: int state=0;//0: running, 1: 過關
int state=0;//0: running, 1:過關
void setup(){
  size(500,200);
}
float x=400, y=100, vx=0;
void draw(){
  if(state==0){//running
    background(255);
    x+=vx;
    ellipse(x,y,20,20);
    line(40,0, 40,200);
    if(x<40) state=1;
  }else if(state==1){//過關
    background(255,255,0);
    fill(0); textSize(80); text("Congratuation", 20,100);
  }
}
void keyPressed(){
  if(keyCode==LEFT) vx=-3;
}
void keyReleased(){
  if(keyCode==LEFT) vx=0;
}
