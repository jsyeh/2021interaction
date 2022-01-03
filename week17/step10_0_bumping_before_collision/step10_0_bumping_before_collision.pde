//Q: 如何做出有變化的球的彈跳 Idea: Microsoft 彈珠台
void setup(){
  size(400,500);
}
float x, y, vx, vy;
boolean flying=false;
void draw(){
  //background(255);
  //line(mouseX,mouseY,200,400);
  line(180,430, 200,400);//射擊
  if(flying){
    x += vx; y += vy;
    ellipse(x,y, 10,10);
  }
  line(200,50, 350,300); //球拍
  stroke(255,0,0);
  
  
  stroke(0);
}
void mousePressed(){//Angry Bird射出去
  x=180; y=430;//x=mouseX; y=mouseY;//line(mouseX,mouseY,200,400);
  //vx=(200-mouseX)/10.0; vy=(400-mouseY)/10.0;
  vx=(200-x)/10.0; vy=(400-y)/10.0;
  flying=true;
}
