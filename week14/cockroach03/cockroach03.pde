//(1)蟑螂會從哪一個邊生出來，對應的移動速度，方向
//(2)用mouse去打它
//(3)蟑螂亂跑,要用到國中教的三角函式 cos(), sin(), tan()
float x, y, vx, vy;
void setup(){
  size(300,300);
  generateCockroach();
}
void draw(){
  background(128);
  fill(0); ellipse(x,y, 10,10);
  x += vx; y+=vy;
  if(x<0 || y<0 || x>300 || y>300) generateCockroach();
  noFill(); ellipse(mouseX,mouseY,80,80);
  if(mousePressed && dist(mouseX,mouseY,x,y)<40 ) generateCockroach();
  if(frameCount%10==0){//每一秒,改一下角度
    float angle = atan2(vy, vx);
    float angle2 = (angle+radians(random(-30,30)));//時間到,就轉90度,太怪了!!!
    vx = cos(angle2);
    vy = sin(angle2);
  }
}
void generateCockroach(){
  //print( int(random(4)) );
  int edge = int(random(4));
  if(edge==0){
    x=300; y=random(300); vx=-random(1,3); vy=random(-3,+3);
  }else if(edge==1){
    x=random(300); y=300; vx=-random(-3,3); vy=random(1,3);
  }else if(edge==2){
    x=0; y=random(300); vx=random(1,3); vy=random(-3,+3);
  }else if(edge==3){
    x=random(300); y=0; vx=random(-3,3); vy=random(1,3);
  }  
}