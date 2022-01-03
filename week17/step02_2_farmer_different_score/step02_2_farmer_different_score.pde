//Q1: 有個菜園,mouse點擊,可以把菜收成。
//Q2: 要能知道收成幾顆菜
int []vegaAge={-1,-1,-1,-1};//-1:empty, 0:baby, 1: child, 2: young, 3: good, 4: dead   除以10
void setup(){
  size(500,400);
}
void draw(){
  background(128,255,128);
  fill(255,255,0); textSize(80); text("Score: " + score , 50, 350);  
  for(int i=0; i<4; i++){
    
    if(vegaAge[i]<0){ noFill(); ellipse( 100+i*100, 100, 3,3); }//empty
    else if(vegaAge[i]<10){ fill(255); ellipse( 100+i*100, 100, 30,30); }
    else if(vegaAge[i]<20){ fill(#AFFFBE); ellipse( 100+i*100, 100, 40,40); }
    else if(vegaAge[i]<30){ fill(#77AF81); ellipse( 100+i*100, 100, 50,50); }
    else if(vegaAge[i]<40){ fill(#E9FF6F); ellipse( 100+i*100, 100, 60,60); }
    else  { fill(0); ellipse( 100+i*100, 100, 60,60); }
    if(frameCount%6==0 && vegaAge[i]>=0) vegaAge[i]++; // 0,1,2.... 60=1秒
  }
}
int score=0;
void mousePressed(){// LEFT種, RIGHT採收/算分數
  if(mouseButton==LEFT){
    for(int i=0; i<4; i++){//空地才能重
      if( vegaAge[i]==-1 && dist(mouseX,mouseY, 100+i*100, 100) < 30 ) vegaAge[i]=0; 
    }
  }else if(mouseButton==RIGHT){//右鍵採收
    for(int i=0; i<4; i++){
      if(dist(mouseX,mouseY, 100+i*100, 100) < 30 ){ 
        if(vegaAge[i]<0) score+=0;//空地不能收
        else if(vegaAge[i]<10) score+=5;//baby
        else if(vegaAge[i]<20) score+=10;//child
        else if(vegaAge[i]<30) score+=50;//young
        else if(vegaAge[i]<40) score+=100;//good
        else score-=100;//bad!! too old
        vegaAge[i]=-1; 
      }
    }
  }
}
