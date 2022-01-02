//小朋友下樓梯: 背景
PImage imgBrick, imgBoard01;
float []boardX=new float[9];
float []boardY=new float[9];
void setup(){
  size(600,400);
  imgBrick = loadImage("brick.png");
  imgBoard01 = loadImage("board01.png");
  for(int i=0; i<9; i++){
    boardX[i]=random(15,400-15-80);
    boardY[i]=i*40;
  }//484-442=>40
}
float rolling=0;//滾動的背景
float brickShift=0;
void draw(){
  rect(10,80,400,320);
  for(int i=0; i< 30;i++){
    image(imgBrick, 10,80+i*27-rolling);
    image(imgBrick, 400+10-13,80+i*27-rolling);
  }
  for(int i=0; i<9; i++){
    image(imgBoard01, boardX[i], 80+boardY[i]-rolling);
    if(boardY[i]-rolling<0){//回收板子再利用
      boardX[i]=random(15,400-15-80);
      boardY[i]=boardY[i]+360;
    }
  }
  rolling+=1.5;
}
