//海面上有船, 可以向下發射魚雷, 想要決定發射魚雷的方向(只能往正下方發射), 去打下方的潛水艇
void setup(){
  size(400,400);
}
float x=200, y=40;
float []bulletX=new float[100];
float []bulletY=new float[100];
float []bulletVX=new float[100];
float []bulletVY=new float[100];
int N=0;
void draw(){
  background(#828AD6);
  fill(#1224B7);rect(0,50,400,400);
  fill(255); ellipse(x,y, 40,20);
  for(int i=0; i<N; i++){
    bulletX[i]+=bulletVX[i]; bulletY[i]+=bulletVY[i];
    ellipse(bulletX[i],bulletY[i], 10,10);
    if(bulletY[i]>400){//回收子彈!!! 但陣列從0開始 0..i....N-1 把中間的空洞,左移
      for(int k=i; k<N-1; k++){
        bulletX[k]=bulletX[k+1];
        bulletY[k]=bulletY[k+1];
        bulletVX[k]=bulletVX[k+1];
        bulletVY[k]=bulletVY[k+1];
      }
      N--;
    }
  }
  println(N);
}
void mouseMoved(){
  x = mouseX;
}
void mousePressed(){
  N++;
  bulletX[N-1]=x; bulletY[N-1]=y;
  bulletVX[N-1]=0; bulletVY[N-1]=1;
}
