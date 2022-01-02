color[] brickColor={color(239,32,41),color(49,199,239),color(239,121,33), color(90,101,173),color(173,77,156),color(66,182,66),color(247,211,8)};
int W=12,H=22,B=30, T=60, brickNow=4+W, rot=0, type=0;
int[] grid=new int[H*W]; //http://tetrisconcept.net/wiki/DTET_Rotation_System
int[][][] brick={ {{0,1,2,3},{2-2*W,2-W,2,2+W},{0,1,2,3},{1-2*W,1-W,1,1+W}},//type I color(239,32,41)
                  {{0,1,2,1+W},{1-W,0,1,1+W},{1,W,W+1,W+2},{1-W,1,2,1+W}}, //type T color(49,199,239)
                  {{0,1,2,W},{-W,1-W,1,1+W},{2,W,W+1,W+2},{1-W,1,1+W,2+W}}, //type L color(239,121,33)
                  {{0,1,2,2+W},{1-W,1,W,W+1},{0,W,W+1,W+2},{1-W,2-W,1,1+W}}, //type J color(90,101,173)
                  {{1,2,W,W+1},{1-W,1,2,2+W},{1,2,W,W+1},{-W,0,1,1+W}}, //type S color(173,77,156)
                  {{0,1,1+W,2+W},{2-W,1,2,1+W},{0,1,1+W,2+W},{1-W,0,1,W}}, //type Z color(66,182,66)
                  {{0,1,W,W+1},{0,1,W,W+1},{0,1,W,W+1},{0,1,W,W+1}},}; //type O square color(247,211,8)
boolean bGameOver=false, bFalling=false, bPause=false;
void setup() {
  size(360, 660);//W*B, H*B);
  restart();
}
void draw() {
  if(bGameOver){ fill(128,128,128,3); rect(0,0,W*B,H*B); return ;}
  background(0);
  for (int i=0; i<H*W; i++) {
    if(grid[i]==-1)fill(255,255,255);//sentinals
    else if (grid[i]!=0) fill(brickColor[grid[i]-1]); 
    else fill(0);
    rect((i%W)*B, int(i/W)*B, B, B);
  }
  showBrick();
  if((--T)<=0){//time to move one down (falling)
    T=60; 
    if(testSafeBrick(brickNow+W)==false) brickFrozen();
    else brickNow+=W;
  }
  if(bFalling){if( testSafeBrick(brickNow+W) ) brickNow+=W; }
}
void restart(){
  for(int i=0;i<H*W;i++){//resetGrid()
    if(i%W==0 || i%W==W-1 || i>=H*W-W || i<W) grid[i]=-1;//sentinal
    else grid[i]=0;
  }
  T=60; brickNow=4+W; rot=0; type=int(random(7)); bGameOver=false;
}
void showBrick(){
  fill(brickColor[type]);
  for(int k=0;k<4;k++) {
    int x=(brick[type][rot][k]+brickNow)%W, y=int((brick[type][rot][k]+brickNow)/W);
    rect(x*B,y*B,B,B);
  }
}
boolean testSafeBrick(int now){
  boolean safe=true;
  for(int k=0;k<4;k++){ if(grid[ brick[type][rot][k]+now ] !=0) safe=false; }
  return safe;
}
void brickFrozen(){
  for(int k=0;k<4;k++){ grid[brickNow + brick[type][rot][k]]=type+1; }//copy to grid
  for(int k=0;k<4;k++){  //test level clearing
    int now=int ( (brickNow+brick[type][rot][k])/W );
    boolean filled=true;
    for(int i=0;i<W;i++) if( grid[i+now*W] ==0) filled=false;
    if(filled==true){
      for(int i=now*W+W-1; i>=W; i--) grid[i]=grid[i-W];//moving all above brick one down
      for(int i=W+1;i<W+W-1;i++) grid[i]=0;
    }
  }
  brickNow=4+W; rot=0; type=int(random(7));   //new brick
  if(testSafeBrick(brickNow)==false)bGameOver=true;//after clearing, test if game over
}
void keyPressed(){
  if(bGameOver) restart();
  if(keyCode==LEFT){if( testSafeBrick(brickNow-1) ) brickNow--; }
  if(keyCode==RIGHT){if( testSafeBrick(brickNow+1) ) brickNow++; }
  if(keyCode==DOWN){ bFalling=true; }
  if(keyCode==UP){
    rot=(rot+1)%4;
    while(type==0 && int(brickNow/W)<=2) brickNow+=W;//TODO: I rotation at top!
    if(testSafeBrick(brickNow)==true){}
    else if(testSafeBrick(brickNow+1)==true){brickNow++;}
    else if(testSafeBrick(brickNow-1)==true){brickNow--;}
    else if(testSafeBrick(brickNow+W)==true){brickNow+=W;}
    else if(testSafeBrick(brickNow+W+1)==true){brickNow+=W+1;}
    else if(testSafeBrick(brickNow+W-1)==true){brickNow+=W-1;}
    else rot=(rot-1+4)%4;
  }else if(key==' '){type=(type+1)%7; }
  if(key=='p'){ bPause=!bPause; }
  if(bPause) frameRate(0); else frameRate(60);
}
void keyReleased(){ 
  if(keyCode==DOWN) bFalling=false; 
}
//TODO: two problems: (1) I "wall kick" for distance 2(?), (2) I rotation at top!
