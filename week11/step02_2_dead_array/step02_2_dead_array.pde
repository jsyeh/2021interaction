//Step02-2: dead[i] array
float []x={250,150,350,300};
float []y={0, 50, 80,100};
float []vy={3, 2, 2.5, 4};
boolean [] dead={false,false,false,false};//false 0, true 1
void setup(){
  size(500,600);
}
void draw(){
  background(255);
  for(int i=0; i<4; i++){
    if( dist(mouseX,mouseY, x[i],y[i])<=50 ){
      dead[i]=true;//碰到,就死掉
    }
    if( dead[i]==true ) continue; //如果了死掉, continue 換下一個
    fill(255,255,0);ellipse(x[i],y[i],50,50);//畫它
    y[i] = y[i] + vy[i];//vy是速度
    if(y[i]>600) vy[i] = -vy[i];//撞到下方
    if(y[i]<0) vy[i] = -vy[i];//接到上方
  }
  fill(255,0,0); ellipse(mouseX,mouseY,50,50);
}
