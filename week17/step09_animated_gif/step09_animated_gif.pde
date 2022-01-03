PImage [] img=new PImage[12];
void setup(){
  size(200,200);
  img[0]=loadImage("PT_anim0000.gif");
  img[1]=loadImage("PT_anim0001.gif");
  img[2]=loadImage("PT_anim0002.gif");
  img[3]=loadImage("PT_anim0003.gif");
  img[4]=loadImage("PT_anim0004.gif");
  img[5]=loadImage("PT_anim0005.gif");
  img[6]=loadImage("PT_anim0006.gif");
  img[7]=loadImage("PT_anim0007.gif");
  img[8]=loadImage("PT_anim0008.gif");
  img[9]=loadImage("PT_anim0009.gif");
  img[10]=loadImage("PT_anim0010.gif");
  img[11]=loadImage("PT_anim0011.gif");
}
int i=0;
void draw(){
  image(img[i], 0, 0);
  if(frameCount%6==0) i = (i+1)%12;
}
