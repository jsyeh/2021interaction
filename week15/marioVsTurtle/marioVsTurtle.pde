//Mario要踩怪物
float [] turtleX=new float[30];
float x=100, y=200, vx=0, vy=0;
boolean jumping=false, MarioDie=false;
boolean [] turtleAlive=new boolean[30];
void setup(){
  size(500,300);
  turtleX[0]=500;
  for(int i=1; i<30; i++){
    turtleX[i] = turtleX[i-1]+random(100,200);
    turtleAlive[i]=true;
  }
}
void draw(){
  background(255);
  if(MarioDie) background(255,0,0);
  fill(#E5DCB7); rect(0,200,500,100);//Floor
  for(int i=0; i<30; i++){
    if(turtleAlive[i]){
      if( dist(x,y-20, turtleX[i],200-20)<40 ){  
        if(jumping) turtleAlive[i]=false;
        else MarioDie=true;
      }//撞到
      fill(0,255,0); ellipse(turtleX[i], 200-20, 40,40);
      if(!MarioDie) turtleX[i]-=3;//Turtle
    }
  }
  fill(255,0,0); ellipse(x,y-20, 40,40);//Mario
  if(jumping){
    x += vx; y += vy; vy += 0.98;
    if(y>200){
      y=200; jumping=false;
    }
  }
}
void mousePressed(){
  jumping=true;
  vy=-16;
}
