//Q: 水果忍者, 如何亂數跳出水果
//Q: 換不同的水果 fruitType 1:banana, 2:orange, 3:apple, 4:coconut
float fruitX, fruitY, fruitVX, fruitVY;
int fruitType=0;
boolean flying=false;
int nextT=10;
void setup(){
  size(400,400);
}
void draw(){
  background(255);
  if(flying){
    if(fruitType==1) fill(255,255,0);//banana
    else if(fruitType==2) fill(#FC7208);//orange
    else if(fruitType==3) fill(255,0,0);
    else if(fruitType==4) fill(0,255,0);
    fruitX+=fruitVX; fruitY+=fruitVY;
    fruitVY+=0.98;
    ellipse(fruitX, fruitY, 50,50);
  }
  if(nextT>0){//if(frameCount%120==0) generateFruit();
    nextT--;
    if(nextT==0){ generateFruit(); nextT=int(random(60,120)); }
  }
}
void generateFruit(){
  fruitType=int(random(1,5));
  fruitX=random(50,350);//mouseX;
  fruitY=450;
  fruitVX=random(-3,+3);
  fruitVY=-25;
  flying=true;
}
