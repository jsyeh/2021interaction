//mouseX, mouseY 原本的上下左右, 變成前後左右
void setup(){
  size(400,300,P3D);
}
void draw(){
  background(255);
  translate(width/2,height/2);
  
  float dx = mouseX-width/2, dy = mouseY-height/2;
  pushMatrix();
    //translate(dx, dy, 0);
    translate(dx, 100, dy);
    box(100,50,20);
  popMatrix();
}
