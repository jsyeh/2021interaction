//想要做音樂遊戲,東西會掉下來
//Q: 老師您好，想問要怎麼讓方塊一直在固定的座標隨機重生?
//目前只能讓4個方塊y取random掉下來
//A: 可以用陣列(時間t or 間隔),來決定方塊出現的座標/時機點 millis();
int []a={0,0,0,1,0,0,0,1,0,1,0,0};//Left x:200
int []b={0,0,1,0,0,1,1,1,1,0,0,0};//UP x:300
int []c={1,0,0,0,0,0,0,1,0,1,0,0};//Right x:400
int []d={0,0,0,1,0,0,0,0,1,0,0,0};//Down x:500
int [] beatX=new int[100];
int [] beatY=new int[100];
int beatN=0;
PImage img;
void setup(){
  size(801,466);
  img=loadImage("bg.png");
}
int t=0;// a[t], b[t], c[t], d[t]
int prevT=0;//ex. 間隔 786ms
void draw(){
  background(img);
  //if(frameCount%60==1){
  if( millis() > 786*(prevT+1)){
    if(a[t]==1){ beatX[beatN]=200; beatY[beatN]=-50; beatN++; }
    if(b[t]==1){ beatX[beatN]=300; beatY[beatN]=-50; beatN++; }
    if(c[t]==1){ beatX[beatN]=400; beatY[beatN]=-50; beatN++; }
    if(d[t]==1){ beatX[beatN]=500; beatY[beatN]=-50; beatN++; }
    prevT++;
    t++;
  }
  for(int i=0; i<beatN; i++){
    rect(beatX[i], beatY[i], 100,50);
    beatY[i]+=2;
  }
}
