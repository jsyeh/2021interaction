//陣列、for迴圈: 五子棋(棋盤)
void setup(){
  size(500,500);
}
void draw(){
  background(253,236,180);
  for( int i=0; i<9; i++){
    line( 50+50*i,50,  50+50*i,450);
  }
}
