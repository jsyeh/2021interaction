//一二三木頭人, 3D
void setup(){
  size(600,300,P3D);//OpenGL
  noStroke();
  genRandomTime();
}
void genRandomTime(){
  time = millis()+random(3000,5000);
}
float time=0;
float angle=-90;
float speed=3;
void draw(){
  background(#FFD436);
  if(time < millis() ){//animation鬼要動了!!
    //ghostMoving=true;
    angle+=speed;
    if(angle>=90){//鬼在 see you
      angle=90;
      time = millis()+3000;//reset
      speed = -speed;
    }else if(angle<-90){
      angle=-90;
      genRandomTime();
      speed=10;
    }
  }
  ghost(angle);//鬼要看的角度: -90背對沒看,0看前面,90看到你
}
void ghost(float angle){
  fill(237,137,63);
  rect(100,100,100,100);
  pushMatrix();
    lights(); ortho();
    translate(150,50);//把下面整個會轉的頭,移到身體上
    rotateY(radians(angle));
    
    fill(190,162,95);//head
    sphere(50);//大頭
    pushMatrix();
      translate(40,-10,40);//黑色的右眼
      fill(0); sphere(10);
    popMatrix();
    pushMatrix();
      translate(-40,-10,40);
      fill(0); sphere(10);//黑色的左眼
    popMatrix();
  popMatrix();  
}
