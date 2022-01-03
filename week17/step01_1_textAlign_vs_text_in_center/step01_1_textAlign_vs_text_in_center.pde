//Q1: 如何讓字型的座標x,y是在字的中心,不要在左下角
void setup(){//frame 0
  size(500,500);//只能用在 void setup()第1行, 其他地方無效
  rectMode(CENTER);//Ancher
  textAlign(CENTER,CENTER);
  textSize(50);
}
void draw(){//frame 0,1,2,3....
  background(0);
  text("xyzXYZhello world", mouseX,mouseY);
  ellipse(mouseX,mouseY, 10,10);
  stroke(255,0,0); noFill(); rect(width/2, height/2, 100,50);
  fill(255); text("ABCDEFG", width/2,height/2);
}
