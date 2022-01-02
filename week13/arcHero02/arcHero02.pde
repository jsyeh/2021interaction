//弓箭傳說 ArcHero
//三角函數 cos() sin()
void setup(){
  size(300,500);
}
float heroX=150, heroY=250;
float []arrowX=new float[24];
float []arrowY=new float[24];
float []arrowVX=new float[24];
float []arrowVY=new float[24];
boolean shooting=false;
void draw(){
  background(255,204,84);
  ellipse(heroX,heroY,50,50);
  if(shooting){
    for(int i=0;i<24; i++){
      arrowX[i]+=arrowVX[i];
      arrowY[i]+=arrowVY[i];
      ellipse(arrowX[i],arrowY[i],10,10);
      if(frameCount%10==0){
        for(int k=23; k>0; k--){//後面的子彈跟著前面跑
          arrowX[k]=arrowX[k-1];
          arrowY[k]=arrowY[k-1];
          arrowVX[k]=arrowVX[k-1];
          arrowVY[k]=arrowVY[k-1];
        }
      }
    }
  }
}
void mousePressed(){
  shooting=true;
  arrowX[0]=heroX;
  arrowY[0]=heroY;
  arrowVX[0]=-1;
  arrowVY[0]=1;
}
