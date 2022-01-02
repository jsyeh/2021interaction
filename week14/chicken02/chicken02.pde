int remainT=0, state=0;//0:no, 1:feed, 2:play, 3:sleep
void setup(){//電子雞,按鈕,會變出連續的圖片
  size(300,400);
}
void draw(){
  fill(255); rect(50,50,200,200);
  if(state==1){
    remainT--;
    if(remainT>120){ ellipse(150,150,100,100);//picture 1
    }else if(remainT>60){ ellipse(150,150,50,50);//picture 2;
    }else if(remainT>0){ ellipse(150,150,80,80);//picture 3
    }else state=0;
  }//else

  fill(255,0,0); rect(  0,300,100,100);
  fill(0,255,0); rect(100,300,100,100);
  fill(255,255,0);rect(200,300,100,100);
}
void mousePressed(){
  if(mouseY>300 && mouseX<100) { state=1; remainT=180;}//3second
  else if(mouseY>300 && mouseX<200) { state=2; remainT=120;}//2second
  else if(mouseY>300 && mouseX<300) { state=3; remainT=240; }//6second
}
