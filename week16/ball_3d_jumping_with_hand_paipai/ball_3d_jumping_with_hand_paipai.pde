//Q: 3D的彈跳 
//Q: 2D的彈跳 OK
//Q: 球碰到球拍
void setup(){
  size(400,400, P3D); 
}
float boardX, boardY;
float x=200, y=200, z;
float vx=0, vy=0;
void draw(){
  background(255);
  pushMatrix();//會彈跳的球
    translate(x, y);
    lights(); noStroke(); sphere(30);//ellipse(x,y,30,30);
  popMatrix();
  
  boardX=mouseX; boardY=mouseY;
  pushMatrix();//我們的球拍 pai pai,由mosue控制
    translate(boardX,boardY);
    stroke(0); line(-50,0, +50,0);
  popMatrix();
  
  if(vy>0 && y<boardY && y+vy>boardY && boardX-50<x && x<boardX+50){
    //球往下掉, 且 且 且 且  
    print("touch");//球撞到了球拍!!
    vy = -vy;
  }
  
  x+=vx; y+=vy;
  vy += 0.98;//gravity重力加速
  if(y>400){
    //y=??//之後要解決,能量越來越多
    vy= - vy * 0.9;
  }
}
