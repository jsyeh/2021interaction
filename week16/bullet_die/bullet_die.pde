//子彈碰到會死掉
float x, y;//主角
boolean die=false;
float []bulletX=new float[40];
float []bulletY=new float[40];
float []bulletVX=new float[40];
float []bulletVY=new float[40];;//子彈
void setup(){
  size(300,500);
  for(int i=0; i<40; i++){
    bulletX[i]=random(0,300);
    bulletY[i]=random(-30,0);
    bulletVX[i]=random(-1,+1);
    bulletVY[i]=random(1,2);
  }
}
void draw(){
  background(0);
  
  for(int i=0; i<40; i++){
    if(!die) {bulletX[i]+=bulletVX[i]; bulletY[i]+=bulletVY[i];}
    fill(255,255,0);ellipse(bulletX[i], bulletY[i], 8,8);
    if( dist(x,y, bulletX[i],bulletY[i])<12 ){//die!!!
      die=true;
    }
    if(bulletY[i]>500) bulletY[i]=0;
  }
  if(die) ellipse(x,y,30,30);
  else{
    fill(255); ellipse(x,y, 15,15);
    x=mouseX; y=mouseY;
  }
}
