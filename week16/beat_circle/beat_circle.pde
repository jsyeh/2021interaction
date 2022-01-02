//有個圈圈,會縮起來。點它就會消失。沒有點到它時,它也會消失。
//圈圈是事先設定好的, 圈圈不會動, 事先設定好位置(x,y)。浮現到一定大小時要點它。
//節奏遊戲
//int []beatX={寫一大堆x座標};
float []beatX=new float[100];//變數最重要!!!
float []beatY=new float[100];
float []beatT=new float[100];
void setup(){
  size(400,400);
  for(int i=0; i<100; i++){
    beatX[i]=random(50,400-50);
    beatY[i]=random(50,400-50);
    if(i==0) beatT[0]=60;
    else beatT[i]=beatT[i-1]+random(60,120);
  }
}
void draw(){
  background(0);
  for(int i=0; i<100; i++){
    float r= abs(frameCount-beatT[i]);
    if(r>50)r=0;
    else r=50-r;
    ellipse(beatX[i], beatY[i], r+r , r+r );
  }
}
