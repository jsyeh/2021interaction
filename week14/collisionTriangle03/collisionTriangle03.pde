void setup(){
  size(300,300);
  float a1, a2, a3;
  println( a1=findAngle2(x1,y1,x2,y2,x3,y3) );
  println( a2=findAngle2(x2,y2,x3,y3,x1,y1) +360 );
  println( a3=findAngle2(x3,y3,x1,y1,x2,y2) );
  println(a1+a2+a3);
}
float x1=100, y1=200, x2=150, y2=100, x3=200,y3=200;
void draw(){
  background(255);
  stroke(0); triangle(x1,y1, x2,y2, x3,y3);
  stroke(255,0,0); line(x1,y1, mouseX,mouseY);
  //要算角度? 可用 sin(), cos(), tan()的 tan() 
  //println( findAngle(x1,y1, mouseX, mouseY) );
}
float findAngle2(float x0, float y0, float x1, float y1, float x2, float y2){
  float a1=findAngle(x1,y1, x0,y0);
  float a2=findAngle(x1,y1, x2,y2);
  return degrees(a1-a2);
}
float findAngle(float x0, float y0, float x1, float y1){
  float dx = (x1-x0);
  float dy = (y1-y0);
  return atan2(dy,dx);
}
