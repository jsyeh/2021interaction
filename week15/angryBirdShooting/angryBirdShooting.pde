//彈弓的模擬: 虎克定律 f = s * dx, 牛頓定 f=ma, a=f/m, 加速度是加到速度上面
void setup(){
  size(400,300);
}
float x,y, vx, vy;
boolean flying=false;
void draw(){
  background(255);
  line(mouseX,mouseY, 100,200);
  //float force = 1*dist(mouseX,mouseY,100,200);
  //println(force);
  if(flying){
    ellipse(x,y,30,30);
    x += vx; y+=vy;
    vy += 0.98/3;//重力加速度,加到速度上面
  }
  if(frameCount % (2*60) == 0){//每2秒, 射1隻出去shoot a bird
    println("shooting");
    x=mouseX; y=mouseY; vx=(100-mouseX)*0.1; vy=(200-mouseY)*0.1;
    flying=true;
  }
}
