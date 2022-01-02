//打地鼠,滑鼠會是槌子,可以mousePressed時會槌下去。現在要讓地鼠自己跑出來
//時間 random()決定一個時間, random()決定是哪個洞要跳出來
//int [][]gopher=new int[3][3];
int [][] gopher ={
  {0,0,0},
  {0,0,0},
  {0,0,0}
};
void generateGopher(){
  int now = int(random(9));//0...8
  gopher[now/3][now%3]=30+int(random(60));//活命/出現的時間有60 frame
}
void setup(){
  size(300,300);
  generateGopher();
}
void draw(){
  background(255);
  for(int i=0; i<3; i++){
    for(int j=0; j<3; j++){
      if(gopher[i][j]>0){
        fill(#E08020); ellipse(50+j*100, 50+i*100, 100,100);
        gopher[i][j]--;
        if(gopher[i][j]==0) generateGopher();
      }else{
        fill(255); ellipse(50+j*100, 50+i*100, 100,100);
      }
    }
  }
}
void mousePressed(){
  int i=mouseY/100,j=mouseX/100;
  gopher[i][j]=0;
  generateGopher();
}
