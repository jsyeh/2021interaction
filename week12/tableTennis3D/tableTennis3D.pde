//2 methods: project by triangle
// or 3D engine (OpenGL)
void setup(){
  size(600,300, P3D);
  camera(0, -60, 100, 0,0,0, 0,1,0);
}
void draw(){
  lights();
  background(112,146,190);
  fill(34,177,76); 
  box(100,2,200);//desk
  fill(255,0,0);
  box(100,30,2);//net
  fill(255,255,0);
  pushMatrix();
    translate(mouseX,-30, mouseY);
    noStroke();sphere(5);//ball
  popMatrix();
}
