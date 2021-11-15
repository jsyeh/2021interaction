void setup(){
  size(600,600);
  fill(255,0,0);
  textSize(80);
}
void draw(){
  background(255);//白
  //printf("%02d:%02d:%2d", hour(),minute(),second());
  text(hour() +":"+ minute()+":"+second(), 50,100);
  text("中文:"+millis()/1000,50,200);//準
}//因為中文的字型
