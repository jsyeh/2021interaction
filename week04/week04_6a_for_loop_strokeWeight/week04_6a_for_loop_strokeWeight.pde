void setup(){//不用寫的!!! 進度快的
  size(500,500);
  for(int i=1; i<8; i++){
    rect(    0,   i*50, 50,50); 
    ellipse(25,25+i*50, i,i); //8的圓
  }
}
void draw(){
  if(mousePressed){
    if(mouseX<50){
      for(int i=1; i<8; i++){
        if(mouseY>i*50 && mouseY<i*50+50){
          strokeWeight(i);
        }
      }
    }else line(mouseX,mouseY, pmouseX,pmouseY);
  } 
}
