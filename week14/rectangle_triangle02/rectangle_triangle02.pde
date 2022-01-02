//rectangle vs. triangle 四邊形 碰 三角形
//如果三角形3個頂點都沒在四邊形裡,但是剛好可有切到
//而且現在是四邊形會旋轉,代表剛剛 insideRect()不能用
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
  triangle(tx,ty, tx-25, ty+40, tx+25,ty+40);
  rect(rx,ry,50,50);
  rx=mouseX-25;
  ry=mouseY-25;
}
boolean collision(){
  boolean b1 = insideTriangle(rx,   ry );
  boolean b2 = insideTriangle(rx+50,ry);
  boolean b3 = insideTriangle(rx+50,ry+50);
  boolean b4 = insideTriangle(rx,   ry+50);
  if(b1||b2||b3||b4) return true;
  else return false;
}
boolean insideTriangle( float x, float y ){
  float c1 = cross( x,y, tx,ty, tx-25, ty+40);
  float c2 = cross( x,y, tx-25,ty+40, tx+25, ty+40);
  float c3 = cross( x,y, tx+25,ty+40, tx, ty);
  println( c1 + " " + c2  + " " + c3 );
  if(c1>0 && c2>0 && c3>0) return true;//或全部小於0
  else return false;
}
float cross(float xp, float yp, float x0, float y0, float x1, float y1){
  return (xp-x0)*(y1-y0) - (yp-y0)*(x1-x0);//交叉相乘
  //  x        y
  //(xp-x0)　(yp-y0)
  //(x1-x0)　(y1-y0)
}
//boolean collision(){
//  if(insideRect(tx,ty) || insideRect(tx-25,ty+40) || insideRect(tx+25,ty+40) ) return true;
//  else return false;
//}
//boolean insideRect(float x, float y){
//  if(rx<=x && x<=rx+50 && ry<=y && y<=ry+50) return true;
//  else return false;
//}
