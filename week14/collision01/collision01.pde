//要如何判斷碰撞: 正方形、三角形
float x1, y1, w1, h1;
float x2=0, y2=0, w2=100, h2=100;
void setup(){
  size(400,400);
  w1=random(300);
  h1=random(300);
  x1=random(400-w1);
  y1=random(400-h1);
}
void draw(){
  background(128);
  fill(255); rect(x1,y1,w1,h1);
  fill(0,255,0); rect(x2,y2,w2,h2);
  x2=mouseX-w2/2;
  y2=mouseY-h2/2;
}
