//俄羅斯方塊,(1)如何亂數決定要掉下來的是誰? (2)如何旋轉? (3)整層消掉?
//已經有各種形狀
int [][] grid=new int[20][12];//黑色0, 其他都是有實體的
void testDelete(){
  for(int i=19; i>=0; i--){//for(int i=0; i<20; i++){//從下往上才對
    int bad=0;
    for(int j=0; j<12; j++){
      if(grid[i][j]!=0) bad++;
    }
    
    if(bad==12){//遇到12個實體,消掉第i層,要把 i-1層放下來
      //for(int j=0; j<12; j++) grid[i][j] = grid[i-1][j];
      for(int ii=i; ii>=1; ii++){
        for(int j=0; j<12; j++) grid[ii][j] = grid[ii-1][j];
      }
    }
  }
}
int nextShape=0;//0:L, 1:Z, 2:T, 只要用 nextShape=int(random(3));
void setup(){
  size(300,500);
  nextShape=int(random(3));
}
int x=3, y=0;
void draw(){
  background(255);
  if(nextShape==0) L(x,y);
  else if(nextShape==1) Z(x,y);
  else if(nextShape==2) T(x,y);
  
  if(frameCount%???==0){//moveLower
    if(nextShape==0 && testL(x,y+1) ) y++;
    else if(nextShape==1 && testZ(x,y+1) ) y++;
    else if(nextShape==2 && testT(x,y+1) ) y++;
    else { //die=true;//凝結, 消整層, 換下一個
      testDelete();
      nextShape=int(random(3));
    }
  }

}
int [][]L0={
  {0,1,0},
  {0,1,0},
  {0,1,1}};
int [][]L2={
  {0,0,1},
  {1,1,1},
  {0,0,0}
};
void L(int x, int y){//改成 void L(int x, int y, int pose){ pose:0, 1, 2, 3不同角度 用陣列較簡單
  
}
void Z(int x, int y){
  
}
void T(int x, int y){
  
}
  
