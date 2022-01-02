//Step01-1: 能不能東西動起來!!!!! 掉下來的金幣 (座標x, y)
float x=250, y=0, vx=0, vy=3;
void setup(){
  size(500,600);
}
void draw(){
  background(255);
  ellipse(x,y,50,50);
  //y++;//速度 1, 2, 3, ...
  //y++;
  //y++;
  //y = y + 3;///3是速度
  y = y + vy;//vy是速度
}
