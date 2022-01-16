//子彈只有1個
//用1維陣列存敵人 enemyX[i] enemyY[i]
//用2層for迴圈,來看東西會黏在哪裡
//加好顏色代碼 c 及 enemyC[i] 配合 table[c] 取出我們需要的 fill()值
//TODO: 消顏色!!!! (1) 發生了嗎? (2) 怎麼把它們從 enemy一維陣列裡除掉
float x, y, vx, vy;//子彈
int c;//子彈顏色: 0:white, 1:red, 2:green, 3:purple, 4:yellow
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
      enemyC[N-1]=int(random(5));
    }
  }
  newBullet();
}
void newBullet(){
  x=150; y=280; c=int(random(5));
}
color []table={#FFFFFF, #FF0000, #00FF00, #FF00FF, #FFFF00}; 
void draw(){
  background(0,0,255);
  for(int i=0; i<N; i++){
    fill(  table[ enemyC[i] ] );
    //if(enemyC[i]==0) fill(255);
    //else if(enemyC[i]==1) fill(255,0,0);
    //else if(enemyC[i]==2) fill(0,255,0);
    //else if(enemyC[i]==3) fill(255,0,255);
    //else if(enemyC[i]==4) fill(255,255,0);
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
      enemyC[N-1]=c;
      newBullet();
      println(N);
    }
  }
  fill( table[c] );
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
