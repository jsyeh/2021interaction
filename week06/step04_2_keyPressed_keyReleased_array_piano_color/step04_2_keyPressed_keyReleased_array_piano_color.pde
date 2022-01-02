import ddf.minim.*;
Minim minim;
AudioPlayer doo, re, mi, fa, so;
void setup(){
  size(500,101);
  minim = new Minim(this);
  doo = minim.loadFile("do.wav");
  re = minim.loadFile("re.wav");
  mi = minim.loadFile("mi.wav");
  fa = minim.loadFile("fa.wav");
  so = minim.loadFile("so.wav");
}
void keyPressed(){//沒有倒帶rewind()的話,播一次就停在最後面,需要倒帶rewind()
  if(key=='1') {doo.rewind(); doo.play(); down[0]=1;}
  if(key=='2') {re.rewind(); re.play(); down[1]=1;}
  if(key=='3') {mi.rewind(); mi.play(); down[2]=1;}
  if(key=='4') {fa.rewind(); fa.play(); down[3]=1;}
  if(key=='5') {so.rewind(); so.play(); down[4]=1;}
}
void keyReleased(){
  if(key=='1') down[0]=0;
  if(key=='2') down[1]=0;
  if(key=='3') down[2]=0;
  if(key=='4') down[3]=0;
  if(key=='5') down[4]=0;
}
int [] down ={0,0,0,0,0};
void draw(){ 
  background(255);
  for(int i=0; i<5; i++){
    if(down[i]==0) fill(255);
    else fill(255,0,0);
    rect( i*100, 0, 100,100);
  }
}
