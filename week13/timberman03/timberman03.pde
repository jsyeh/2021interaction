//左、中、右,樹枝
int []tree=new int[30];//0:no, 1:left, 2:right
int pos=0;//0:left, 1:right
void setup(){
  size(300,600);
  tree[0]=0;//safe
  for(int i=1;i<30;i++){
    tree[i]=int(random(3));
  }
}
void draw(){
  if(gameOver){
    background(255,0,0); return; 
  }
  background(255,0,255);
  for(int i=0;i<30;i++){
    if(tree[i]==0){//empty,safe
      fill(#28C3E8); rect(100,500-i*100, 100,100);
    }else if(tree[i]==1){//left
      fill(#28C3E8); rect(  0,500-i*100, 200,100);
    }else if(tree[i]==2){//right
      fill(#28C3E8); rect(100,500-i*100, 200,100);
    }
  }
  if(pos==0){
    fill(255,0,0); ellipse(50,550,100,100);
  }else if(pos==1){
    fill(255,0,0); ellipse(250,550,100,100);
  }
}
void keyPressed(){
  if(keyCode==RIGHT){ pos=1; checkAndUpdate(); }
  if(keyCode==LEFT){ pos=0; checkAndUpdate(); }
  //and cut it or die
}
void checkAndUpdate(){
  if(tree[1]==1 && pos==0) die();
  else if(tree[1]==2 && pos==1) die();
  else {//safe
    //score++;
    for(int i=0; i<30-1; i++){
      tree[i] = tree[i+1];
    }
    tree[29]=int(random(3));
  }
}
void die(){
  gameOver=true;
}
boolean gameOver=false;
