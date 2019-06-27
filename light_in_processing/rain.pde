class rain 
{
  float x, y, s;
  float offsetx, offsety;
  float[] raind;
  rain()
  {
    offsetx=1;
    offsety=random(6, 10);
    x=random(width);
    y=0;
    s=1;
    raind=new float[10];
  }
  void display()
  {
    pushMatrix();
    translate(x, y, 100);
    if (day==true) {
      fill(0, 255);
    } else {
      fill(255, 255);
    }
    noStroke();
    rect(0, 0, s/2, s*10);
    popMatrix();
  }
  void rundown()
  {
    //x+=offsetx;
    y+=offsety*2;
    if (y>height) {
      y=0;
    }
  }
}