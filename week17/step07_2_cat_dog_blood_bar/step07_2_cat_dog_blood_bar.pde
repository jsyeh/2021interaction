void setup(){
  size(500,400);
}
float x, y;
float x1=400,y1=300;
float x2=100,y2=300;
int blood1=100, blood2=100;
void draw(){
  background(255);
  rect(240,200, 20,400);
  
  x=mouseX; y=mouseY;
  fill(255); ellipse(x,y,10,10);
  
  fill(128,128,255); ellipse(x1,y1, 80,80);
  rect(500,0, -blood1, 30);
  fill(255,255,128); ellipse(x2,y2, 80,80);
  rect(0,0, blood2, 30);
  if( dist(x,y,x1,y1)<40 ) blood1--;
  if( dist(x,y,x2,y2)<40 ) blood2--;
}
