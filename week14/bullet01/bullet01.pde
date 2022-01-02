//彈幕的遊戲
float [] bulletX=new float[99];
float [] bulletY=new float[99];
float [] bulletVX=new float[99];
float [] bulletVY=new float[99];
void setup(){
  size(300,300);
  for(int i=0; i<99; i++){
    bulletX[i] = random(300);
    bulletY[i] = random(300);
    bulletVX[i] = random(-3,3);//子彈的速度差太多了, 不好
    bulletVY[i] = random(-3,3);
  }
}
void draw(){
  background(0);
  for(int i=0; i<99; i++){
    ellipse(bulletX[i], bulletY[i], 5, 5);
    bulletX[i] += bulletVX[i];
    bulletY[i] += bulletVY[i];
    if(bulletX[i]<0 || bulletY[i]<0 || bulletX[i]>300 || bulletY[i]>300){
      bulletX[i] = random(300);//重新出現的子彈,不應該突然出現
      bulletY[i] = random(300);//應該是從邊邊冒出來
      bulletVX[i] = random(-3,3);
      bulletVY[i] = random(-3,3);
    }
  }
}
