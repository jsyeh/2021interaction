float [] fishX=new float[30];//座標x
float [] fishY=new float[30];//座標
float [] fishSize=new float[30];//大小
boolean[] fishAlive = new boolean[30];//是不是活的 true,false
void setup(){
  size(500,500);
  for(int i=0; i<30; i++){
    fishX[i]=random(-500,500);
    fishY[i]=random(-500,500);
    fishSize[i]=random(10,50);
    fishAlive[i]=true;
  }
}//吃東西,越吃越大,不夠大不能吃,時間內吃完, Q: 如何移動畫面
float x=0, y=0, big=15;
void draw(){
  background(255);
  pushMatrix();
    translate(-x, -y);
    for(int i=0; i<30; i++){
      if(fishAlive[i]==true){
        fill(255); ellipse(fishX[i], fishY[i], fishSize[i], fishSize[i] );
        if( dist(250+x,250+y, fishX[i],fishY[i])< (big+fishSize[i])/2 ){//相遇
          if(big>fishSize[i]){//你比較
            big = big + fishSize[i];//可以吃掉對方
            fishAlive[i]=false;//魚死掉了
          }else {}//gameOver=true;//輸了
        }
      }
    }
    fill(255,0,0); ellipse(250+x,250+y, big,big);
  popMatrix();
}
void keyPressed(){
  if(keyCode==LEFT) x-=3;
  if(keyCode==RIGHT) x+=3;
  if(keyCode==UP) y-=3;
  if(keyCode==DOWN) y+=3;
}
