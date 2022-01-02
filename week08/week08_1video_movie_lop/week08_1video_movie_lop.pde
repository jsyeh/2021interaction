import processing.video.*; //先裝好 Video Library
Movie movie;

void setup(){
  size(640,480);
  movie = new Movie(this, "video.mov");
  movie.loop();
}
void draw(){
  if(movie.available()){//第2種方法
    movie.read();//第2種方法
  }//第2種方法
  image(movie, 0,0);
}
//void movieEvent(Movie m){//第1種方法
//  m.read();//第1種方法
//}//第1種方法
