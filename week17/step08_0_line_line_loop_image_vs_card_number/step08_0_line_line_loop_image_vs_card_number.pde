//Q1: 數字如何變圖片? A: 用陣列、陣列
// 連連看的遊戲
//int[]card=new int[10];
int []card={1,1,2,2,3,3,4,4,0,0};//0...<5
int []show={1,1,1,1,1,1,1,1,1,1};
PImage [] img=new PImage[5];
void setup(){
  size(500,100);
  textSize(30);
  for(int i=0; i<5; i++){ 
    img[i] = loadImage(""+i+".png");
  }
}
void draw(){
  background(128);
  for(int i=0; i<10; i++){
    fill(255);rect(i*50, 0, 50,50);
    fill(255,0,0);
    if(show[i]==1){
      text(card[i], i*50+15, 0+35);
      int now=card[i];//可以改成圖片
      image( img[now], i*50, 0);
    }
  }
}
