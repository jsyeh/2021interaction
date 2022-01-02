// #F0F0F0 #FFF160 #FFC501 #FE9600 #03001C
color [] c = {#F0F0F0,#FFF160,#FFC501,#FE9600,#03001C};
int now=0;
void setup(){
  size(640,480);
  background(#F0F0F0);
}
void draw(){
  
}
void mousePressed(){
  background(c[now]);
  now = (now+1)%5;
}
