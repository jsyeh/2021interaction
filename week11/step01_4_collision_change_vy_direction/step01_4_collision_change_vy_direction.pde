//Step01-4: 多一點互動
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
    ellipse(x[i],y[i],50,50);
    y[i] = y[i] + vy[i];//vy是速度
    if(y[i]>600) vy[i] = -vy[i];//撞到下方
    if(y[i]<0) vy[i] = -vy[i];//接到上方
  }
}
