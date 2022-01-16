//子彈只有1個
//用1維陣列存敵人 enemyX[i] enemyY[i]
//用2層for迴圈,來看東西會黏在哪裡
float x, y, vx, vy;//子彈
float []enemyX=new float[100];
float []enemyY=new float[100];
int []enemyC=new int[100];
int N=0;
void setup(){
  size(300,300);
  for(int i=0; i<5; i++){
    for(int j=0; j<10; j++){
      N++;
      enemyX[N-1]=j*30+15;
      enemyY[N-1]=i*30+15;
    }
  }
  newBullet();
}
void newBullet(){
  x=150; y=280;
}
void draw(){
  background(0,0,255);
  for(int i=0; i<N; i++){
    ellipse(enemyX[i], enemyY[i], 30,30);
    if( flying && dist(x,y, enemyX[i],enemyY[i])<30 ){
      flying=false;//子彈變成敵人的一部分
      N++;
      //找最近點
      int ansI=0, ansJ=0;
      float minDist=dist(ansJ*30+15,ansI*30+15, x,y);
      for(int ii=0; ii<10; ii++){
        for(int jj=0; jj<10; jj++){
          if( dist(jj*30+15,ii*30+15, x,y)<minDist ){
            ansI=ii; ansJ=jj; minDist=dist(jj*30+15,ii*30+15, x,y);
          }
        }
      }
      enemyX[N-1]=ansJ*30+15;
      enemyY[N-1]=ansI*30+15;
      newBullet();
      println(N);
    }
  }
  ellipse(x,y, 30,30);
  if(flying){
    x += vx; y += vy;
  }
}
boolean flying=false;
void mousePressed(){
  flying=true;
  vx=(mouseX-x)/50;
  vy=(mouseY-y)/50;
}
