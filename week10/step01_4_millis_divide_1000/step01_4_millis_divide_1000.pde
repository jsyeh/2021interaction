void setup(){
  size(600,600);
  fill(255,0,0);
  textSize(80);
}
void draw(){
  background(255);//白
  text("Time:"+frameCount/60, 50,100);//不準
  text("millis():"+millis()/1000,50,200);//準
}//每秒60frame,過了幾個frame
// kilo- meter centi- milli- millis千分之1秒
// km    m     cm     mm
// kg    g            mg
// kl    Litter       ml (不叫 mol)
