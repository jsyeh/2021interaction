float [] hole;
float x=100, y=200, vy=2, bgx=-200;
void setup(){
  size(400,600);
  hole = new float[10];
  for(int i=0; i<10; i++) hole[i]=random(100,300);
}
void draw(){
  bgx++;
  background(255);
  for(int i=0; i<10; i++){
    rect(i*100-bgx, 0, 50, hole[i]);
    rect(i*100-bgx, hole[i]+100, 50, 1000);
  }
  ellipse(x,y, 50,50);
  y+=vy;
  if(keyPressed && key==' ')vy=-2;
  else vy=2;
}
