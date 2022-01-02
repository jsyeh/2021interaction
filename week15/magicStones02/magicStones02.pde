//寶石方塊,亂數決定寶石 random()會是float, 要再轉成 int
//要如何移動2個相鄰的寶石
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
      if(mousePressed && i==moveI && j==moveJ) strokeWeight(5);
      else if(mousePressed && i==moveI2 && j==moveJ2) strokeWeight(5);
      else strokeWeight(1);
      if(square[i][j]==0){
        fill(c[0]); rect( j*50, i*50, 50, 50);
      }else if(square[i][j]==1){
        fill(c[1]); rect( j*50, i*50, 50, 50);
      }
    }
  }
}
int moveI, moveJ, moveI2, moveJ2;
void mousePressed(){
  int j = mouseX/50, i = mouseY/50;
  moveJ = j; moveI=i;
  moveJ2 = j; moveI2=i;
}
void mouseDragged(){
  int j = mouseX/50, i = mouseY/50;
  moveJ2 = j; moveI2=i;
}
void mouseReleased(){
  int j = mouseX/50, i = mouseY/50;
  moveJ2 = j; moveI2=i;
  //只有相鄰的,可以交換
  if( testNeighbor(i, j, moveI, moveJ)==true ){
    int temp=square[i][j];
    square[i][j]=square[moveI][moveJ];
    square[moveI][moveJ]=temp;
  }
}
boolean testNeighbor(int i, int j, int i2, int j2){
  if(i==i2 && j-j2==1) return true;//相鄰
  if(i==i2 && j2-j==1) return true;//相鄰
  if(j==j2 && i-i2==1) return true;//相鄰
  if(j==j2 && i2-i==1) return true;//相鄰
  return false;//不相鄰
}
