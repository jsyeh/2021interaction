//Q: 做彈弓遊戲,想要子彈碰到牆時會反彈、碰到物體時會消失
float bulletX, bulletY, bulletVX, bulletVY;
boolean bulletFlying=false;
float wallX=250, wallY=250, wallW=130, wallH=120;
void setup(){
  size(500,400);
}
boolean testYWall(float x, float y1, float y2){
  if(y1 <= bulletY && bulletY <= y2){
    if(bulletX <= x && x <= bulletX+bulletVX) return true;
    if(bulletX+bulletVX <= x && x <= bulletX) return true;
  }
  return false;
}
boolean testXWall(float y, float x1, float x2){
  if( x1 <= bulletX && bulletX <= x2){
    if(bulletY <= y && y <= bulletY+bulletVY) return true;
    if(bulletY+bulletVY <= y && y <= bulletY) return true;
  }
  return false;
}
void draw(){
  //background(255);
  rect(wallX,wallY, wallW, wallH);
  if( testYWall(wallX,wallY, wallY+wallH)==true ) bulletVX=-bulletVX;//bulletFlying=false;
  else if( testYWall(wallX+wallW, wallY, wallY+wallH)==true) bulletVX=-bulletVX;//bulletFlying=false;
  else if( testXWall(wallY, wallX, wallX+wallW)==true) bulletVY=-bulletVY;//bulletFlying=false;
  else if( testXWall(wallY+wallH, wallX, wallX+wallW)==true ) bulletVY=-bulletVY;//bulletFlying=false;
  
  if(bulletFlying){
    ellipse(bulletX,bulletY, 5,5);
    bulletX += bulletVX;
    bulletY += bulletVY;
    if(bulletX<0 || bulletX>500) bulletVX= -bulletVX;
    if(bulletY<0 || bulletY>400) bulletVY= -bulletVY;
  }
}
void mousePressed(){
  bulletFlying=true;
  bulletX=mouseX; bulletY=mouseY;
  bulletVX=5; bulletVY=-1;
}
