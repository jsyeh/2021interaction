//貓狗大戰 按越久,越大力
float big=0, x,y, vx, vy;
boolean flying=false;
void setup(){
  size(500,300);
}
void draw(){
  background(255);
  fill(255,0,0); rect(0,0, big,50);
  line(200,200,mouseX,mouseY);
  if(mousePressed) big++;  
  if(flying){
    x += vx; y+= vy; vy += 0.98;
    ellipse(x,y, 30,30);
  }
}
void mouseReleased(){
  flying=true;
  x=200; y=200;//x=mouseX; y=mouseY;
  float angle=atan2(200-mouseY, 200-mouseX);
  vx = cos(angle)*big/2; vy=sin(angle)*big/2;//vx=big/10; vy=-big/10;
  big=0;
}
