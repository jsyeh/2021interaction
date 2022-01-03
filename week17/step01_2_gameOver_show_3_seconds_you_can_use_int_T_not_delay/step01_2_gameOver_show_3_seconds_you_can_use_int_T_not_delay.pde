//Q2: delay(ms)不能用,但如何讓讓 GameOver出現3秒?
//當然,也不能用 Java 的 sleep(秒)
void setup(){
  size(500,500);
  textAlign(CENTER,CENTER);
  textSize(50);
}
int T=180;//1秒=60frame,180frame=3秒
void draw(){
  background(255);
  if(T>0){
    background(255,0,0);
    text("GameOver", width/2, height/2);
    T--;
  }
}
