class balloon
{
  float x, y, s;
  float offsetx, offsety;
  float a=0;
  float r=random(0,2);
  balloon()
  {
    offsetx=1;
    offsety=random(6, 10);
    x=random(width+100);
    y=0;
    s=1;
  }
  void display()
  {
    a+=random(1,2);
    pushMatrix();
    translate(x, y,-40);
    //translate(width/2,height/2);
    noStroke();
    scale(3*r);
    rotateZ(PI);
    rotateY(a/10);
    shape(balloon01);
    popMatrix();
  }
  void rundown()
  {
    y-=offsety/4;
    if(y<0){y=height;}
  }
}