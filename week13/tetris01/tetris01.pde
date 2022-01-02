//Tetris 俄羅斯方塊
void setup(){
  size(300,450);
}//12x20 10x18   (25x25)
void draw(){
  background(0);
  for(int x=0; x<12; x++){
    for(int y=0; y<20; y++){
      rect(x*25, y*25, 25,25);
    }
  }
}
