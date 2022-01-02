//寶石方塊, 消除的問題: 使用for迴圈,去測有沒有發生「相鄰3個以上」,配上陣列
//int [][]stone=new int[8][8];
int [][]stone={
  {1,2,2,2},
  {1,1,1,1},
  {2,2,2,1},
  {1,2,2,1},
};
void checkRow(int i){
  for(int j=0; j<4; j++){
    int now=stone[i][j];//想看看現在這個 now (起始點)的右邊有沒有連續都相同
    int combo=1;
    for(int k=j+1; k<4; k++){
      if( stone[i][k]==now ){
        combo++;
      }else{
        break;//沒有連續,就死掉了!!!
      }
    }
    //現在可以看一下 combo值有沒有大於3!!! 
    if(combo>=3){
      for(int k=j; k<j+combo; k++){//for(int k=j; combo>0; combo--, k++){
        stone[i][k]=0;
      }
    }
  }
}
void check(){
  for(int i=0; i<4; i++){
    checkRow(i);
  }
  for(int j=0; j<4; j++){
    //checkCol(j);
  }
}
void setup(){
  size(400,400);
}
void draw(){
  for(int i=0; i<4; i++){//y
    for(int j=0; j<4; j++){//x
      if(stone[i][j]==0) fill(0);
      else if(stone[i][j]==1) fill(255,0,0);
      else if(stone[i][j]==2) fill(0,255,0);
      rect(j*100,i*100, 100,100);
    }
  }
}
void mousePressed(){//暫時用mouse來觸發[檢查]的機制
  checkRow(0);//check();
  checkRow(1);
  checkRow(2);
  checkRow(3);
}
