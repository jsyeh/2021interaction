//Q: 3D的彈跳 
//Q: 2D的彈跳 OK
void setup(){
  size(400,400, P3D); 
}
float x=200, y=200, z;
float vx=0, vy=0;
void draw(){
  background(255);
  pushMatrix();
    translate(x, y);
    lights(); noStroke(); sphere(30);//ellipse(x,y,30,30);
  popMatrix();
  x+=vx; y+=vy;
  vy += 0.98;//gravity重力加速
  if(y>400){
    //y=??//之後要解決,能量越來越多
    vy= - vy;
  }
}
