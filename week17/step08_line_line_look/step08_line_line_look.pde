int [][]card=new int[6][6];
PImage []img=new PImage[5];
void setup(){
  size(300,300);
  for(int i=0; i<5; i++) img[i]=loadImage(""+i+".png");
  for(int i=0; i<6; i++){
    for(int j=0; j<6; j++){
      card[i][j]=int(random(5));
    }
  }
}
int firstI=-1, firstJ=-1, secondI=-1, secondJ=-1;
void draw(){
  strokeWeight(1);
  for(int i=0; i<6; i++){
    for(int j=0; j<6; j++){
      image( img[card[i][j]], i*50, j*50); 
    }
  }
  if(firstI!=-1){
    noFill(); strokeWeight(5);
    rect(firstJ*50,firstI*50,50,50);
  }
  if(secondI!=-1){
    noFill(); strokeWeight(5);
    rect(secondJ*50,secondI*50,50,50);
  }
}
void mousePressed(){
  int j = mouseX/50, i=mouseY/50;
  firstI=i; firstJ=j;
  secondI=-1;
}
void mouseReleased(){
  int j = mouseX/50, i=mouseY/50;
  secondI=i; secondJ=j;
}
