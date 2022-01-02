//俄羅斯方塊,如何按上鍵,旋轉改形狀 (OK: 左、右)
int [][]L1={
  {0,0,1,0},
  {0,0,1,0},
  {0,0,1,0},
  {0,0,1,0}  
};
int [][]L2={
  {0,0,0,0},
  {0,0,0,0},
  {1,1,1,1},
  {0,0,0,0}
};
int rot=0;
void drawL1(int x, int y){
  for(int i=0; i<4; i++){
    for(int j=0; j<4; j++){
      if(L1[i][j]==1) rect( (x+j)*25, (y+i)*25, 25, 25);
    }
  }
}
void drawL2(int x, int y){
  for(int i=0; i<4; i++){
    for(int j=0; j<4; j++){
      if(L2[i][j]==1) rect( (x+j)*25, (y+i)*25, 25, 25);
    }
  }
}
void setup(){
  size(300,500);
}
void draw(){
  background(0);
  if(rot==0) drawL1(3,3);
  if(rot==1) drawL2(3,3);
  if(rot==2) drawL1(3,3);
  if(rot==3) drawL2(3,3);
}
void keyPressed(){
  if(keyCode==UP) rot=(rot+1)%4;
}
