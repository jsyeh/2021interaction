color [] c = {#FF0505,#FFB005,#D0FF05,#05FF24,#05DCFF,#051BFF,#7905FF,#FF05EF};
void setup(){
  size(500,500);
  for(int i=0; i<8; i++){
    fill(255); rect(0,i*50, 50, 50); ellipse(25,25+i*50, i+1,i+1);
    fill( c[i] ); rect(450, i*50, 50,50);
  }
}
void draw(){
  if(mousePressed){
    if(mouseX<50){
      for(int i=0; i<8; i++){
        if(mouseY>i*50 && mouseY<i*50+50) strokeWeight(i+1);      
      }
    }else if(mouseX>450){
      for(int i=0; i<8; i++){
        if(mouseY>i*50 && mouseY<i*50+50) stroke( c[i] );
      }
    }else line(mouseX,mouseY, pmouseX,pmouseY);
  }
}
