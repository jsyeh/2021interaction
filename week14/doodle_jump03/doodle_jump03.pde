//Doodle Jump: (1) jumping 主角, (2) 跳起來, (3) 卡住, (4) 畫面捲動
float x=150, y=500-15, vx=0, vy=0;
boolean jumping=false;
float [] boardX=new float[10];
float [] boardY=new float[10];
void setup(){
  size(300,500);
  for(int i=0; i<10; i++){
    boardX[i]=random(0,300-80);
    boardY[i]=450-i*50; //width:80
  }
}
void draw(){
  background(255);
  for(int i=0; i<10; i++){ rect(boardX[i], boardY[i], 80, 15); }
  ellipse(x,y, 15,15);
  y += vy;
  if(jumping) vy += 0.98;//重力加速度
  if(y>500-15) y=500-15;//地板
  if( vy>=0){ //(0)往下,才有可能卡住
    for(int i=0; i<10; i++){//試每一個板子
      if( boardX[i] < x  && x < boardX[i]+80){//(1)x: 左右符合
        if( y< boardY[i] && y+vy > boardY[i]){//(2)y: 上下符合,從板子上,往板子下(穿越)
          jumping=false;//不再飛行
          vy=0;//停止
          y = boardY[i];
        }
      }
    }
  }
}
void keyPressed(){
  if(keyCode==UP){//(2) 跳起來
    vy = -20; jumping=true;
  }
}
