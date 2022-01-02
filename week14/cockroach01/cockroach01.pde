//(1)蟑螂會從哪一個邊生出來，對應的移動速度，方向
//(2)用mouse去打它
//(3)蟑螂亂跑
float x, y, vx, vy;
void setup(){
  size(300,300);
  generateCockroach();
}
void draw(){
  ellipse(x,y, 10,10);
  x += vx; y+=vy;
  if(x<0 || y<0 || x>300 || y>300) generateCockroach();
}
void generateCockroach(){
  //print( int(random(4)) );
  int edge = int(random(4));
  if(edge==0){
    x=300; y=random(300); vx=-random(1,3); vy=random(-3,+3);
  }else if(edge==1){
    x=random(300); y=300; vx=-random(-3,3); vy=random(1,3);
  }else if(edge==2){
    x=0; y=random(300); vx=random(1,3); vy=random(-3,+3);
  }else if(edge==3){
    x=random(300); y=0; vx=random(-3,3); vy=random(1,3);
  }  
}
