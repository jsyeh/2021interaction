//想要放3D模型,怎麼放
PShape obj;
void setup(){
  size(500,500,P3D);
  obj = loadShape("IronMan.obj");
}
void draw(){
  lights();
  background(1280);
  translate(width/2,height/2);
  rotate(radians(180));
  shape(obj, 0, 0);
}
