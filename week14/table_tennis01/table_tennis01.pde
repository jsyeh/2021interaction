//Question: 球/球拍的位置很難控制
void setup(){
  size(600,300,P3D);///場景為3D
  camera(0,-40,100,0,0,0,0,1,0);
}
void draw(){
  
  lights();
  background(112,146,190);
  fill(34,177,76);
  //box(100,5,120);
  fill(255,0,0);
  box(100,30,5);
  fill(#502C0F);
  //box(10,120,10);
  fill(255,255,0);
  
  pushMatrix();
    //translate(-300,-250,70);
    //translate(-300,-250,70);
    translate( (mouseX-width/2)/2.0, (mouseY-height/2)/2.0, 0);//translate(mouseX, mouseY, 0);
    noStroke();sphere(5);
  popMatrix();
}
