//GeometryDash 方塊在前進時,如何踩在方塊上,跳更高(到二樓的平台) (再繼續前進)
//平台結束時,會再掉回樓下一樓 (卡在安全的格子上!!!)
//(1)瑪麗歐是用陣列來決定(安全的)磚塊!!!
//int [][]bg={
//  {0,0,0,0,0,0},
//  {0,0,1,0,0,0},
//  {0,0,0,0,0,0},
//  {1,1,1,1,1,1},  
//};
//(2) 直接設開始、結束的 boardX[] boardY[]
int []boardX={300,400};//int [] boardX;
int []boardY={100,50};
int []boardW={800,300};//int [] boardW;
void setup(){
  size(500,300);
}
float x=30, y=150, vx=3, vy=0;
float scrolling=0;
boolean jumping=false, onBoard=false;
int boardID=0;//
void draw(){
  background(#162390);
  line(0,200,500,200);
  rect(x-scrolling,y,50,50);
  x += vx;
  if(jumping){
    y += vy;
    vy += 0.98;
    if(y>150){//著地
      y=150; vy=0; jumping=false;
    }
  }
  
  scrolling=(x-30);
  for(int i=0; i<2; i++){
    rect(boardX[i]-scrolling, boardY[i], boardW[i], 20);
    if(boardID==i){//我在某個板子上
      //但是離開它了!!!
      if(onBoard==true && (boardX[i]+boardW[i] < x) ){//本來在板子上,但x超過右邊界
        onBoard=false; jumping=true;//掉下來, 離開板子
      }
    }
    if( jumping && y+50<boardY[i] && y+50+vy>boardY[i] && boardX[i]<x+50 && x <boardX[i]+boardW[i] ){
      y=boardY[i]-50; vy=0; jumping=false; onBoard=true; boardID=i; //掉在長板子上
    }
  }
}
void keyPressed(){
  if(keyCode==UP){
    jumping=true;
    vy=-15;
  }
}
/*
float []badx,bubblex,bubbley,board,boardy;
int now,score;
void setup(){
  size(600,400);
  textSize(40);
  badx=new float[100];
  badx[0]=300+random(200,300);
  for(int i=1;i<100;i++){
    badx[i]=badx[i-1]+random(200,250);
  }
  board=new float[100];
  board[0]=500+random(200,300);
  for(int i=1;i<100;i++){
    board[i]=board[i-1]+random(350,600);
  }
  boardy=new float[100];
  boardy[0]=230;
  for(int i=1;i<100;i++){
    boardy[i]=boardy[i-1]+random(-30,10);
  }
  bubblex=new float[10];
  bubbley=new float[10];
  for(int i=0;i<10;i++){
    bubblex[i]=0;
    bubbley[i]=300;
  }
}
float usery=300, vy=0, bgx=0;
boolean gameOver=false;
void draw(){
  background(#FF0A7D);
  fill(#F5ADCF);
  for(int i=0;i<100;i++){
    now=i;
    if(collision()) gameOver=true;
    triangle(badx[i]-bgx,310,badx[i]-25-bgx,350,badx[i]+25-bgx,350);
}
  fill(#AD0051);
  for(int i=0;i<100;i++){
    rect(board[i]-bgx,boardy[i],150,20);
  }
  fill(#AD0051); rect(0,350,600,400);
  rect(150,usery,50,50);
  if(jumping){
    usery+=vy;
    vy+=0.98/2.5;
    if(usery>300){
      jumping=false;
      usery=300;
    }
  }
  for(int i=9;i>0;i--){
    bubblex[i]=bubblex[i-1];
    bubbley[i]=bubbley[i-1];
    ellipse(bubblex[i]+150-bgx,bubbley[i],10,10);
  }
  bubblex[0]=bgx;
  bubbley[0]=usery;
  bgx+=4;
  if(gameOver==false){
  score=millis()/1000;
  fill(0);
  text("score: "+score,200,50);
  }
  else if(gameOver){
    background(0);
    fill(255,0,0);
    text("Goog luck next time!",100,100);
    text("score: "+score,200,150);
  }
}
boolean jumping=false;
void keyPressed(){
  if(jumping==false){
    jumping=true;
    vy=-10;
  }
}
boolean collision(){
   boolean b1=insideTriangle(150,usery);
   boolean b2=insideTriangle(200,usery);
   boolean b3=insideTriangle(200,usery+50);
   boolean b4=insideTriangle(150,usery+50);
   if(b1 || b2 || b3 || b4) return true;
   else return false;
}
boolean insideTriangle(float x,float y){
    float c1=cross(x,y,badx[now]-bgx,310,badx[now]-25-bgx,350);
    float c2=cross(x,y,badx[now]-25-bgx,350,badx[now]+25-bgx,350);
    float c3=cross(x,y,badx[now]+25-bgx,350,badx[now]-bgx,310);
    if(c1>=0 && c2>=0 && c3>=0) return true;
    else return false;
}
float cross(float xp,float yp,float x0,float y0,float x1,float y1){
  return (xp-x0)*(y1-y0)-(yp-y0)*(x1-x0);
}*/
