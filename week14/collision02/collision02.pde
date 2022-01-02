//要如何判斷碰撞: 正方形、三角形
float x1, y1, w1, h1;
float x2=0, y2=0, w2=50, h2=50;
void setup(){
  size(400,400);
  w1=random(40,80);
  h1=random(40,80);
  x1=random(400-w1);
  y1=random(400-h1);
}
void draw(){
  background(128);
  if(testCollision()) fill(255,0,0);
  else fill(255); 
  
  rect(x1,y1,w1,h1);
  fill(0,255,0); rect(x2,y2,w2,h2);
  x2=mouseX-w2/2;
  y2=mouseY-h2/2;
}
boolean testCollision(){
  if( oneCollision(x2,y2) ) return true;
  else if( oneCollision(x2+w2,y2) ) return true;
  else if( oneCollision(x2+w2,y2+h2) ) return true;
  else if( oneCollision(x2, y2+h2) ) return true;
  else return false;
}
boolean oneCollision(float x, float y){
  if( x1<x && x<x1+w1 && y1<y && y<y1+h1 ) return true;
  else return false;  
}
