//Doodle Jump: (1) jumping 主角, (2) 跳起來, (3) 卡住, (4) 畫面捲動
float x=150, y=400, vx=0, vy=0;
boolean jumping=false;
void setup(){
  size(300,500);
}
void draw(){
  //background(255);
  ellipse(x,y, 15,15);
  y += vy;
  if(jumping) vy += 0.98;//重力加速度
  if(y>400) y=400;//地板
}
void keyPressed(){
  if(keyCode==UP){//(2) 跳起來
    vy = -20; jumping=true;
  }
}
