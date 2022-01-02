//想要做音樂遊戲,東西會掉下來
//Q: 老師您好，想問要怎麼讓方塊一直在固定的座標隨機重生?
//目前只能讓4個方塊y取random掉下來
//A: 可以用陣列(時間t or 間隔),來決定方塊出現的座標/時機點 millis();
int []a={0,0,1,0};//Left x:200
int []b={0,1,0,0};//UP x:300
int []c={1,0,0,0};//Right x:400
int []d={0,0,1,0};//Down x:500
int [] beatX=new int[100];
int [] beatY=new int[100];
int beatN=0;
PImage img;
void setup(){
  size(801,466);
  img=loadImage("bg.png");
}
void draw(){
  background(img);
  int t=(millis()/1000 %4;
  if(frameCount%60==0){
    if(a[t]==1){ beatX[beatN]=200; beatY[beatN]=-50; beatN++; }
    if(b[t]==1){ beatX[beatN]=200; beatY[beatN]=-50; beatN++; }
    if(c[t]==1){ beatX[beatN]=200; beatY[beatN]=-50; beatN++; }
    if(d[t]==1){ beatX[beatN]=200; beatY[beatN]=-50; beatN++; }
  }
}
