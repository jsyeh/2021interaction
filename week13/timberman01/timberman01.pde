//左、中、右,樹枝
int []tree=new int[30];//0:no, 1:left, 2:right
void setup(){
  size(300,600);
  tree[0]=0;//safe
  for(int i=1;i<30;i++){
    tree[i]=int(random(3));
  }
}
void draw(){
  background(255,0,255);
  for(int i=0;i<30;i++){
    if(tree[i]==0){//empty,safe
      fill(#28C3E8); rect(100,600-i*100, 100,100);
    }else if(tree[i]==1){//left
      fill(#28C3E8); rect(  0,600-i*100, 200,100);
    }else if(tree[i]==2){//right
      fill(#28C3E8); rect(100,600-i*100, 200,100);
    }
  }
}
