//豆腐會持續移動,而且女孩不能連續跳
void setup(){
  size(300,500);
  tofuX[0]=100;
  generateTofu();
}
float x=150, y=300-25, vy=0;//girl
boolean jumping=false;
float []tofuX=new float[40];
float []tofuVX=new float[40];
int N=1;//number of tofu!!
void draw(){
  background(255);
  for(int i=0; i<N; i++){
    rect(tofuX[i], 300-i*50, 100,50);
  }
  tofuX[N-1]+=tofuVX[N-1];
  ellipse(x,y,50,50);//girl
  if(jumping){
    if(vy>0 && tofuX[N-1]<x && x<tofuX[N-1]+100&&
       y+25<300-(N-1)*50 && y+25+vy>300-(N-1)*50 ){//目前只考慮最後一顆豆腐
      //the last tofo y: 300-(N-1)*50
      jumping=false; vy=0; y=300-(N-1)*50-25;
      generateTofu();
      //可能下面還有倒數第2顆豆腐,看你的需求
    }else{//沒撞到豆腐
      y+=vy;
      vy+=0.98;
    }
  }
}
void mousePressed(){//舉例來說,
  if( jumping==false){
    jumping=true; vy=-15;//generateTofu();
  }
}
void generateTofu(){
  tofuVX[N-1]=0;
  N++;
  int dir=int(random(2));//0:Left, 1:Right
  if(dir==0){
    tofuX[N-1]=-100;
    tofuVX[N-1]=2;
  }else{
    tofuX[N-1]=300;
    tofuVX[N-1]=-2;
  }
}
