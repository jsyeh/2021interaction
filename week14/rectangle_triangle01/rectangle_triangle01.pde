//rectangle vs. triangle 四邊形 碰 三角形
float tx,ty;//rectangle 50x50
float rx,ry;
void setup(){
  size(300,300);
  tx=random(100,200);
  ty=random(100,200);
}
void draw(){
  background(0);
  fill(255); triangle(tx,ty, tx-25, ty+40, tx+25,ty+40);
  if(collision() ) fill(255,0,0);
  else fill(255);
  rect(rx,ry,50,50);
  rx=mouseX-25;
  ry=mouseY-25;
}
boolean collision(){
  if(insideRect(tx,ty) || insideRect(tx-25,ty+40) || insideRect(tx+25,ty+40) ) return true;
  else return false;
}
boolean insideRect(float x, float y){
  if(rx<=x && x<=rx+50 && ry<=y && y<=ry+50) return true;
  else return false;
}
