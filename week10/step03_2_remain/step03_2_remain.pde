void setup(){//想要看再多久下課
  size(600,600);//倒數計時!!!
  fill(255);//白色的字
  textSize(80);
}
void draw(){
  background(#075BB2);
  String hh=nf(hour(),2);
  String mm=nf(minute(),2);
  String ss=nf(second(),2);
  text("現在:"+hh+":"+mm+":"+ss, 50,100);
  text("下課:15:40:00", 50,200);
  
  int now = hour()*60*60 + minute()*60 + second();//總秒數
  int next = 15   *60*60 + 40      *60 + 0;//總秒數
  int remain = next-now;//剩下的時間 (秒數來算)
  text("剩下:"+remain, 50,300);
}
