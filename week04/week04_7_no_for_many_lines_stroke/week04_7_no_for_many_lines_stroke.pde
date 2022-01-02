void setup(){
  size(500,500);
  fill(#FF0505); rect(0, 50, 50, 50);
  fill(#FFB005); rect(0,100, 50, 50);
  fill(#D0FF05); rect(0,150, 50, 50);
  fill(#05FF24); rect(0,200, 50, 50);
  fill(#05DCFF); rect(0,250, 50, 50);
  fill(#051BFF); rect(0,300, 50, 50);
  fill(#7905FF); rect(0,350, 50, 50);
  fill(#FF05EF); rect(0,400, 50, 50);
}
void draw(){
  if(mousePressed){
    if(mouseX<50){
      if(mouseY>1*50 && mouseY<1*50+50) stroke(#FF0505);
      if(mouseY>2*50 && mouseY<2*50+50) stroke(#FFB005);
      if(mouseY>3*50 && mouseY<3*50+50) stroke(#D0FF05);
      if(mouseY>4*50 && mouseY<4*50+50) stroke(#05FF24);
      if(mouseY>5*50 && mouseY<5*50+50) stroke(#05DCFF);
      if(mouseY>6*50 && mouseY<6*50+50) stroke(#051BFF);
      if(mouseY>7*50 && mouseY<7*50+50) stroke(#7905FF);
      if(mouseY>8*50 && mouseY<8*50+50) stroke(#FF05EF);
    }else line(mouseX,mouseY, pmouseX,pmouseY);
  }
}
