//陣列、for迴圈: 五子棋(棋盤)
//int go[9][9]; C語言
//int [][]go = new int[9][9];//Java/Processing
int [][]go = {
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0} };  
void setup(){
  size(500,500);
}
void draw(){
  background(253,236,180);
  for( int i=0; i<9; i++){
    line( 50+50*i, 50,  50+50*i, 450);
    line( 50, 50+50*i,  450, 50+50*i );
  }
  
}
