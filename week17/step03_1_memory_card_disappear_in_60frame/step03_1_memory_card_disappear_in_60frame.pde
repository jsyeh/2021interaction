//Q1: 記憶卡牌遊戲, 如何在開第2張牌時, 自動檢查, 並在 1秒後, 如果不符合的話,會自己關起來
int []card={1,1,2,2,3,3,4,4,5,5};
int []show={0,0,0,0,0,0,0,0,0,0};//0:不秀,1:翻牌秀, 2:比對正確,永遠保持
void setup(){
  size(500,100);
  textAlign(CENTER,CENTER);
}
void draw(){//60fps
  background(255);
  for(int i=0; i<10; i++){
    if(show[i]==1 || show[i]==2 ){//1:翻牌秀, 2:比對正確,永遠保持
      fill(128); rect(i*50,0, 50,50); 
      fill(0); text(card[i], i*50+25,0+25);
    }else {
      fill(255); rect(i*50,0, 50,50);
    }
  }
  if(T>0){
    T--;
    if(T==0) clearOne();
  }
}
int count=0, T=0;
void mousePressed(){
  int i=mouseX/50;
  if(i<0 || i>=10) return;//保護
  if(show[i]==0){
    count++; show[i]=1;
  }
  if(count==2){//自動比對
    if( compare()==true ) setOneToTwo();
    else{//如果不符合, 1秒後自動關起來
      T=60;//等待60 frame = 1秒,會自動關起來!!!
    }
  }//判斷OK了
}
boolean compare(){//有2張翻開的牌,如果相同,就true,不同就false
  int []value=new int[2];
  int N=0;
  for(int i=0; i<10; i++){
    if(show[i]==1){
      value[N] =card[i];
      N++;
    }
  }
  if( N==2 && value[0]==value[1] ) return true;//相同
  else return false;
}
void clearOne(){//把牌蓋起來!!! (2不會蓋,只有1會蓋)
  for(int i=0; i<10; i++) if(show[i]==1) show[i]=0;
  count=0;
}
void setOneToTwo(){
  for(int i=0; i<10; i++) if(show[i]==1) show[i]=2;
  count=0;
}
