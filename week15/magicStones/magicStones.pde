//寶石方塊,亂數決定寶石 random()會是float, 要再轉成 int
int [][] square=new int[8][8];//0,1
color[] c = {#FA1E1E, #1E44FA};
void setup(){
  size(400, 400);
  for(int i=0; i<8; i++){
    for(int j=0; j<8; j++){
      square[i][j]= int(random(2));
    }
  }
}
void draw(){
  for(int i=0; i<8; i++){
    for(int j=0; j<8; j++){
      if(square[i][j]==0){
        fill(c[0]); rect( j*50, i*50, 50, 50);
      }else if(square[i][j]==1){
        fill(c[1]); rect( j*50, i*50, 50, 50);
      }
    }
  }
}
