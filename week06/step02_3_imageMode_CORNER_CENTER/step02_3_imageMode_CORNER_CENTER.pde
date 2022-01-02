PImage img1, img2;
void setup(){
  size(500,500);
  img1=loadImage("sky.png");
  img2=loadImage("dora.png");
}//1. Ctrl-K檔案夾, 2. PowerPoint圖片去背景
void draw(){
  imageMode(CORNER);
  image(img1, 0,0, 500,500);
  imageMode(CENTER);
  image(img2, mouseX,mouseY, 200,200);
}
