//6x6=36張牌,如何點2次可以看到2張牌
/*int [][]card={
  {1,1,2,2,3,3},
  {4,4,5,5,6,6},
  {....
};*/
int [][]card=new int[6][6];//1...36
void setup(){
  size(300,300);
  textSize(20);
  for(int i=0; i<6; i++){//18 cards * 2
    for(int j=0; j<6; j++){
      int now=1+i*3+j/2;
      card[i][j]=now;
    }
  }
  for(int k=0; k<1000; k++){
    int i1=int(random(6)), i2=int(random(6)), j1=int(random(6)), j2=int(random(6));
    int temp=card[i1][j1];
    card[i1][j1]=card[i2][j2];
    card[i2][j2]=temp;
  }
}
int i1, j1, i2, j2;
int N=0;
void draw(){
  for(int i=0;i<6;i++){
    for(int j=0; j<6; j++){
      int now=card[i][j];
      fill(255); rect(j*50,i*50,50,50);
      if(N==0)continue;
      else if(N==1 && (i1==i && j1==j) ){
        fill(0); text( now, j*50+10, i*50+40);
      }else if(N==2 && ((i1==i && j1==j)||(i2==i && j2==j)) ){
        fill(0); text( now, j*50+10, i*50+40);
      }
    }
  }
}
void mousePressed(){
  N = (N+1)%3 ; //0=>1, 1=>2, 2=>0
  println(N);
  if(N==1){
    j1=mouseX/50; i1=mouseY/50;
  }else if(N==2){
    j2=mouseX/50; i2=mouseY/50;
  }
}
