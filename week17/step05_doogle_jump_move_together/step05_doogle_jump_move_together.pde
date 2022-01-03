//Q1: Doogle Jump 的2種圖沒有結合 (OK)
//Doodle Jump製作步驟: (1)jumping主角 (2)跳起來 (3)卡住 (4)畫面捲動
//Q2: 跳起來時,才能捲動!!! rolling是關鍵!!!
//Ans: (x, y+rolling) vs. (boardX[i], 450-boardY[i]+rolling)
//Ans: 何時Rolling   y+rolling<250 要讓 y+rolling是 250
//   y+rolling 要保持在 250, 但太小   rolling += 250-(y+rolling)
PImage imgBoard01;
float x=150, y=500-15, vx=0, vy=0;
boolean jumping=false;
boolean left=false;//左
boolean right=false;//右
float []boardX=new float[10];
float []boardY=new float[10];
int landing=0;//停在哪一個板子上
void setup()
{
    size(300,500);
    imgBoard01 = loadImage("board01.png");
    for(int i=0; i<10; i++)
    {
      boardX[i]=random(0,300-68);
      boardY[i]=i*35;
    }//376-356==>20
 
}
float rolling=0;
void draw()
{
  background(255);
  for(int i=0; i<10; i++)
  {
    //rect(boardX[i],boardY[i], 68, 20);
    rect(boardX[i], 450-boardY[i]+rolling, 68,20);
  }
  ellipse(x,y+rolling,15,15);
  if(left)  x -= 0.8;
  if(right) x += 0.8;
  //x += vx;
  
  y += vy; 
  if(jumping) vy += 0.98;//重力加速度(往下的速度)
  if(y>500-15) y=500-15;//地板
  if(vy>=0)
  {//(0)往下，才有可能卡住
    
  }
  for(int i=0; i<10; i++)
  {
    image(imgBoard01, boardX[i], 450-boardY[i]+rolling);
    if(boardY[i]+rolling<0) 
    {
      boardX[i]=random(0,300-68);
      boardY[i]=boardY[i]+350;
    }
  }
  //rolling+=1.5;
  //if( y+rolling <
}
void keyPressed()
{
  if(keyCode==UP)
  {//(2)跳起來
    vy = -20; jumping=true; //往上的速度，負的越多，跳的越慢
  }
  if(keyCode==LEFT)
  { 
    vx = -0.8; left=true; right=false; //負越多，跑越快
  }
  if(keyCode==RIGHT)
  {
    vx = 0.8;  right=true; left=false;
  }
}
