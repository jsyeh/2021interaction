//豆腐女孩
float []tofuX=new float[100];
int N=0;//tofu Number
int tofuDir=0;//-1, +1
int tofuH=0;
int state=0;//0:nothing, 1:moving tofu, 2: stop tofu, animate it lower
int T=0;
float girlX=150, girlY=300;
void setup(){
  size(300,500);
  //for(int i=0; i<100; i++) tofuX[i] = random(100,200);
}
void draw(){
  background(#95AFFA);
  fill(#B7C3E5);
  for(int i=0; i<N; i++){
    rect(tofuX[i],300-i*40+tofuH, 80,40);
  }
  if(state==1){//moving tofu
    tofuX[ N-1 ]+= tofuDir;
  }else if(state==2){
    if(T>0){
      tofuH++; T--;
    }else state=3;
  }
  girlX=mouseX; girlY=mouseY;
  if(N>0){
    float tofuY=300-(N-1)*40+tofuH;
    if( tofuX[N-1] < girlX && girlX < tofuX[N-1]+80 && tofuY<girlY && girlY<tofuY+40){
      if(state!=2) changeState();
    }
  }
}
void keyPressed(){
  changeState();
}
void changeState(){
  state= (state+1)%3;
  if(state==0){
    
  }else if(state==1){//0:nothing, 1:moving tofu, 2: stop tofu
    tofuDir=int(random(2));//0...1.9999 => 0,1
    if(tofuDir==0) tofuDir=-1;//-1往左, +1往右
    
    N++;
    if(tofuDir==1) tofuX[N-1]=-40;//最左邊
    if(tofuDir==-1) tofuX[N-1]=300-40;//最右邊
    
  }else if(state==2){
    T=40;
  }
  println(state);
}
//moving tofu
