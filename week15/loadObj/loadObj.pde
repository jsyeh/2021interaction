//如何讀入3D模型(OBJ)
PShape obj;
void setup(){
  size(300,300,P3D);
  obj=loadShape("FinalBaseMesh.obj");
}
void draw(){
  background(255);
  lights();
  translate(width/2, height/2);
  rotate(radians(180));
  scale(8,8,8);
  shape(obj, 0,0);
}
