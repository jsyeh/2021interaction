PVector v0, v1, v;
PVector ball;
PVector wall0, wall1, N;
void setup(){
  size(400,500);
  v0 = new PVector(180,430);
  v1 = new PVector(200,400);
  v = PVector.sub(v1,v0).div(10);;
  ball = new PVector(v0.x, v0.y);
  wall0 = new PVector(200,50);
  wall1 = new PVector(350,300);
  N = PVector.sub(wall0,wall1).rotate(-HALF_PI);
  a=N.x; b=N.y; c=a*wall0.x+b*wall0.y;
}
void draw(){
  //background(255);
  stroke(0); line(v0.x, v0.y, v1.x, v1.y);
  ellipse(ball.x, ball.y, 10,10);
  if( collision(ball, PVector.add(ball,v))==true ){
    //改成要把 v 從入射角,變成反射角//background(255,0,0);
    PVector N1 = N.copy().normalize();
    float len = PVector.dot(N1,v);
    v.add(N1.mult(-2*len));
  }
  ball.add(v);//同時也是球的速度
  line(wall0.x, wall0.y, wall1.x, wall1.y);
  stroke(255,0,0); line(wall0.x, wall0.y, wall0.x+N.x, wall0.y+N.y);
}
float a, b, c;
//在直線方程式上ax+by+c=0, 正、負,表示在兩邊 (or ax+by=c)
boolean collision(PVector p1, PVector p2){
  if(a*p1.x +b*p1.y >= c && a*p2.x + b*p2.y <= c ) return true;
  if(a*p1.x +b*p1.y <= c && a*p2.x + b*p2.y >= c ) return true;
  return false;
}
