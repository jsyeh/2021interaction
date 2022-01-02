//Step02-1: mouse碰到球, 可以得分
float []x={250,150,350,300};
float []y={0, 50, 80,100};
float []vx={0, 0, 0, 0};
float []vy={3, 2, 2.5, 4};
void setup(){
  size(500,600);
}
void draw(){
  background(255);
  for(int i=0; i<4; i++){
    if( dist(mouseX,mouseY, x[i],y[i])<=50 ){
      continue;
    }
    fill(255,255,0);ellipse(x[i],y[i],50,50);
    y[i] = y[i] + vy[i];//vy是速度
    if(y[i]>600) vy[i] = -vy[i];//撞到下方
    if(y[i]<0) vy[i] = -vy[i];//接到上方
  }
  fill(255,0,0); ellipse(mouseX,mouseY,50,50);
}
