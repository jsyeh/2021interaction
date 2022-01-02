//Step03-2 用 class物件
class Ball{//我們發明 Ball物件
  float x, y, vx, vy;
  boolean dead;
  Ball(){//建構 同名的東西
    x = random(500);
    y = random(500);
    vy = random(-4,4);
    vx = random(-4,4);
    dead = false;//沒有死掉
  }
  void draw(){
    if(dead==true) return;
    ellipse(x,y, 50,50);
    if( dist(mouseX,mouseY,x,y)<50 ){
      dead=true;
    }
    x = x + vx;
    y = y + vy;
    if(y>500 || y<0) vy = -vy;
    if(x>500 || x<0) vx = -vx;
  }
}
Ball [] balls;
void setup(){
  size(500,500);
  balls = new Ball[20];
  for(int i=0; i<20; i++){
    balls[i] = new Ball();
  }
}
void draw(){
  background(255);
  for(int i=0; i<20; i++){
    balls[i].draw();
  }
}
