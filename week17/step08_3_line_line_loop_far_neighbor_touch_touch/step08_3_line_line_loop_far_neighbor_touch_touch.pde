//Q:如何利用資料結構,進行search搜尋
int [][]card={
  {0,0,0,0,0,0},
  {1,0,0,0,0,0},
  {0,0,0,0,0,0},
  {0,0,0,0,0,0},
  {0,0,0,0,1,0},
  {0,0,0,0,0,0}
};
void setup(){
  size(300,300);
}
int firstI=4, firstJ=4, secondI=1, secondJ=0;
void draw(){
  for(int i=0; i<6; i++){
    for(int j=0; j<6; j++){
      if(card[i][j]==0) fill(255);
      else if(card[i][j]==1) fill(255,0,0);
      else if(card[i][j]==2) fill(128,0,0);
      else if(card[i][j]==3) fill(128,128,0);
      rect(j*50, i*50, 50, 50);
    }
  }
}
void mousePressed(){
  for(int k=1; k<13; k++){
    println("======"+k);
    if(touch(firstI, firstJ+1, k)==1) break;//background(255,0,0);
    if(touch(firstI-1, firstJ, k)==1) break;//background(255,0,0);
    if(touch(firstI+1, firstJ, k)==1) break;//background(255,0,0);
    if(touch(firstI, firstJ-1, k)==1) break;//background(255,0,0);
    clear2();
  }
  //clear2();
}
void clear2(){
  for(int i=0; i<6; i++){
    for(int j=0; j<6; j++){
      if(card[i][j]==2) card[i][j]=0;
    }
  }  
}
int touch(int i, int j, int depth){
  if(depth<=0) return 0;
  println("i"+i +" j"+j + " detph"+depth);
  if(i>=0 && i<6 && j>=0 && j<6){//還在陣列範圍內的格子
    if( i==secondI && j==secondJ ){
      return 1;//got answer!!!!
    }else if(card[i][j]!=0) return 0;//not ok!!!
    else card[i][j]=2;
  }else return 0;//not ok!!!
  
  if(touch(i,j+1, depth-1)==1) {card[i][j]=3; return 1; }
  if(touch(i-1,j, depth-1)==1) {card[i][j]=3; return 1; }
  if(touch(i+1,j, depth-1)==1) {card[i][j]=3; return 1; }
  if(touch(i,j-1, depth-1)==1) {card[i][j]=3; return 1; }
  return 0;
}
