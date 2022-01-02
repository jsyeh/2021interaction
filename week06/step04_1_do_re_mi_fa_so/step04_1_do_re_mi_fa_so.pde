import ddf.minim.*;
Minim minim;
AudioPlayer doo, re, mi, fa, so;
void setup(){
  size(500,100);
  minim = new Minim(this);
  doo = minim.loadFile("do.wav");
  re = minim.loadFile("re.wav");
  mi = minim.loadFile("mi.wav");
  fa = minim.loadFile("fa.wav");
  so = minim.loadFile("so.wav");
}
void keyPressed(){//沒有倒帶rewind()的話,播一次就停在最後面,需要倒帶rewind()
  if(key=='1') {doo.rewind(); doo.play(); }
  if(key=='2') {re.rewind(); re.play(); }
  if(key=='3') {mi.rewind(); mi.play(); }
  if(key=='4') {fa.rewind(); fa.play(); }
  if(key=='5') {so.rewind(); so.play(); }
}
void draw(){
  
}
