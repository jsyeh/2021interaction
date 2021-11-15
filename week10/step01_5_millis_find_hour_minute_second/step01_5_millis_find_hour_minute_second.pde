void setup(){
  size(600,600);
  fill(255,0,0);
  textSize(80);
}
void draw(){
  background(255);//白
  text(hour() +":"+ minute()+a+":"+second(), 50,100);
  text("millis():"+millis()/1000,50,200);//準
}//每秒60frame,過了幾個frame
// kilo- meter centi- milli- millis千分之1秒
// km    m     cm     mm
// kg    g            mg
// kl    Litter       ml (不叫 mol)
