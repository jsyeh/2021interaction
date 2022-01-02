//一二三木頭人, 3D
void setup(){
  size(600,300,P3D);//OpenGL
  noStroke();
}
void draw(){
  background(#FFD436);
  ghost();
}
void ghost(){
  fill(237,137,63);
  rect(100,100,100,100);
  pushMatrix();
    lights(); ortho();
    translate(150,50);
    rotateY(radians(frameCount));
    
    fill(190,162,95);//head
    sphere(50);
    pushMatrix();
      translate(50,-10,50);
      fill(0); sphere(10);
    popMatrix();
    pushMatrix();
      translate(-50,-10,50);
      fill(0); sphere(10);
    popMatrix();
  popMatrix();  
}
