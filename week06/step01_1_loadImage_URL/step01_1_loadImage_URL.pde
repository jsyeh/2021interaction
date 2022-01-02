PImage img;
//圖片, 聲音
void setup(){
  size(500,500);
  img=loadImage("https://upload.wikimedia.org/wikipedia/zh/c/c8/Doraemon_volume_1_cover.jpg");
}/// img = loadImage("網址.jpg")
void draw(){
  image(img, 0,0);
}
