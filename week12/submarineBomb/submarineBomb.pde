//float x, y, z;//3D
float x=300, y=150, vx=-0.7, vy=0;//2D
float bombX=500, bombY=100, bombVX=-2, bombVY=0.3;
void setup() {
  size(600, 300);
}
boolean gameOver=false;
void draw() {
  if(gameOver) {
    background(255,0,0); return;
  }
  background(#3351F2);
  ellipse(x, y, 50, 15);
  ellipse(bombX,bombY, 5,5);
  x += vx; y+=vy;
  bombX+=bombVX; bombY+=bombVY;
  if(  dist(x,y, bombX,bombY)<15 ) gameOver=true;
}
