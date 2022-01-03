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
  background(255);
  strokeWeight(1);
  for(int i=0; i<6; i++){
    for(int j=0; j<6; j++){
      if(card[i][j]==-1) continue;//空的
      image( img[card[i][j]], j*50, i*50); 
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
void mouseDragged(){
  int j = mouseX/50, i=mouseY/50;
  secondI=i; secondJ=j;
}
void mouseReleased(){
  if(firstI==secondI && firstJ==secondJ) return;//同一個格子,太誇張

  if(card[firstI][firstJ] == card[secondI][secondJ]){
    if( neighbor(firstI,firstJ,secondI,secondJ)==true ){//是鄰居
      card[firstI][firstJ]=-1;//空的
      card[secondI][secondJ]=-1;//空的
    }
  }
}
boolean neighbor(int firstI,int firstJ,int secondI, int secondJ){
  if(firstI==secondI){
    if(firstJ+1==secondJ) return true;
    if(firstJ-1==secondJ) return true;
  }
  if(firstJ==secondJ){
    if(firstI+1==secondI) return true;
    if(firstI-1==secondI) return true;
  }
  return false;//不是鄰居
}
