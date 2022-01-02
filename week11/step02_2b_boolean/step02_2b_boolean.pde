//Step02-2b 練習 boolean 變數 true成立, false不成立
boolean down;//按下去
void setup(){
  size(500,300);
}
void draw(){
  if(mousePressed) down=true;
  else down=false;
  print(down);
  if( down ) background(255,0,0);//紅色
  else background(0,255,0);//綠色
}
