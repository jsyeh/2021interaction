import processing.video.*;
Movie movie;
color [] c = {#F0F0F0,#FFF160,#FFC501,#FE9600,#03001C};
void setup(){
  size(640,480);
  movie = new Movie(this, "my_webcam.mov");
  movie.loop();
}
void draw(){
  if(movie.available()){
    movie.read();
    image(movie,0,0);
  }
}
void mousePressed(){
  movie.pause();
  loadPixels();
  for(int i=0; i<640*480; i++){
    float bright = brightness(pixels[i]);//255
    int now = 4-int(bright/67);
    pixels[i] = c[now];
  }
  updatePixels();
}
