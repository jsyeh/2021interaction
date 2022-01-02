PImage img;
//圖片, 聲音
void setup(){
  size(500,500);
  img=loadImage("sky.png");  //"dora.jpg");
}/// img = loadImage("網址.jpg")
///把圖檔,拉到程式裡面!!!!
void draw(){
  image(img, 0,0);
}
