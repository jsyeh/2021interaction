void setup(){
  size(300,300);
}
float x1=100, y1=200, x2=150, y2=100, x3=200,y3=200;
void draw(){
  background(255);
  print(insideAngle(x1,y1,x2,y2,x3,y3,mouseX,mouseY) +" ");
  print(insideAngle(x2,y2,x3,y3,x1,y1,mouseX,mouseY) +" ");
  println(insideAngle(x3,y3,x1,y1,x2,y2,mouseX,mouseY) +" ");
  if( insideAngle(x1,y1,x2,y2,x3,y3,mouseX,mouseY) && 
      insideAngle(x2,y2,x3,y3,x1,y1,mouseX,mouseY) &&
      insideAngle(x3,y3,x1,y1,x2,y2,mouseX,mouseY) ) fill(255,0,0);
  else noFill();
  stroke(0); triangle(x1,y1, x2,y2, x3,y3);
  stroke(255,0,0); line(x3,y3, mouseX,mouseY);
}
boolean insideAngle(float x0, float y0, float x1, float y1, float x2, float y2, float px, float py){
  float a1=findAngle2(px,py, x1,y1, x2, y2);
  float a2=findAngle2(x0,y0, x1,y1, px, py); 
  float total=findAngle2(x0,y0, x1,y1, x2,y2);
  print( a1, a2, total, " is " + (a1+a2>total) );
  if(a1+a2>total)return false;
  else return true;
}
float findAngle2(float x0, float y0, float x1, float y1, float x2, float y2){
  float a1=findAngle(x1,y1, x0,y0);
  float a2=findAngle(x1,y1, x2,y2);
  return abs(degrees(a1-a2));
}
float findAngle(float x0, float y0, float x1, float y1){
  float dx = (x1-x0);
  float dy = (y1-y0);
  return atan2(dy,dx);
}
