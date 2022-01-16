//老師好, 我在做期末作業的時候遇到了困難思考好幾天都無法解決 , 
//我的題目是打地鼠 , 我想要讓槌子打到地鼠的時候地鼠會換成哭哭臉的地鼠照片,
//我思考了好久問了好多人都無法解決這個問題,想請老師能指出問題點在哪裡和解決方案。
void setup(){
  size(300,300);
  gopher[1][2]=180;
}
int [][] gopher=new int[3][3];//0:nothing, 正:地鼠出現(紅), 負:哭哭(藍)
void draw(){
  background(255);
  for(int i=0; i<3; i++){
    for(int j=0; j<3; j++){
      if(gopher[i][j]>0){
        fill(255,0,0);//出現,紅色
        gopher[i][j]--;//時間倒數
      }else if(gopher[i][j]<0){
        fill(0,0,255);//哭哭,藍
        gopher[i][j]++;//負的,加到變成0
      }else fill(255);
      ellipse(j*100+50,i*100+50, 80,80);
    }
  }
}
void mousePressed(){
  //ellipse(j*100+50,i*100+50, 80,80); x=j*100+50, j=(x-50)/100 要再換算 j=mouseX/100;
  int j=mouseX/100, i=mouseY/100;
  if(gopher[i][j]>0){
    gopher[i][j]=-60;//要哭哭
    //score+=100;
  }
}
