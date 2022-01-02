//什麼叫做「你還在動?」
float x=450, y=150, vx=0;
float ghostAngle=0;//90度表示在看
int T=0;//倒數計時的動畫
boolean Die=false;
void setup(){
  size(500,200);
}
void draw(){
  background(255);
  if(Die) background(255,0,0);
  ellipse(x,y, 30,30);
  x += vx;
  if(T>0){
    T--;
    ghostAngle -= 90/60.0;
    if(T==0){
      if( testMoving() ) Die=true;
    }
  }
  pushMatrix();
    translate(100,100);
    rotate( radians(ghostAngle) );
    rect(-30,-10, 60,20);
  popMatrix();
  //if(vx==0) println("not moving");
  //else println("moving");
}
boolean testMoving(){//什麼叫做「你還在動?」
  if(vx==0) return false;
  else return true;
}
void keyPressed(){
  //if(keyCode==LEFT) x--;
  if(keyCode==LEFT) vx=-1;
}
void keyReleased(){
  if(keyCode==LEFT) vx=0;
}
void mousePressed(){
  T=60;//有個小鬧鐘,會60frame會炸掉!
  ghostAngle=90;
}
