class cloud03
{
  float x, y, z;
  float sx, sy;
  float px, py, pz;
  float speed;
  float r;
  float colors;
  float g;
  cloud03()
  {
    x=random(-width, width);
    y=random(-height, height);
    z=random(width);
    colors=random(100, 255);
    g=random(0, 4);
    pz=z;
  }
  void display() {

    sx=map(x/z, 0, 1, 0, width);
    sy=map(y/z, 0, 1, 0, height);
    r=map(z, 0, width, 5, 0);
    pushMatrix();
    translate(width/2, height/2);
    pushMatrix();
    translate(sx, sy);
    //rotateX(-0.5);
    //rotateZ(PI);
    //rotateY(-PI/2);
    noStroke();
    fill(255, colors);
    if (g==0) {
      pushMatrix();
      scale(r*random(2)/2);
      ellipse(0, 0, 4, 4);
      popMatrix();
    }
    if (g==1)
    {
      pushMatrix();
      scale(r);
      translate(0, 0, -25);
      rotateZ(PI);
      shape(clouds01);
      popMatrix();
    }
    if (g==2)
    {
      pushMatrix();
      scale(r);
      translate(0, 0, -25);
      rotateZ(PI);
      shape(clouds02);
      popMatrix();
    }
    if (g==3)
    {
      pushMatrix();
      scale(r);
      translate(0, 0, -25);
      rotateZ(PI);
      shape(clouds03);
      popMatrix();
    } else {
      pushMatrix();
      scale(r);
      translate(0, 0, -25);
      rotateZ(PI);
      shape(cloud01);
      popMatrix();
    }

    //shape(cloud01);
    popMatrix();
    popMatrix();
  }
  void loop_cloud()
  {
    z=z-speed;
    if (z<1)
    {
      z=width;
      x=random(-width, width);
      y=random(-height, height);
    }
  }
  void stroke_speed()
  {
    speed=map(mouseY, 0, width, 1, 4);
    pushMatrix();
    translate(width/2, height/2);
    stroke(255, 100);
    strokeWeight(1);
    float px=map(x/pz, 0, 1, 0, width);
    float py=map(y/pz, 0, 1, 0, height);
    pz=z;
    line(px, py, sx, sy);
    popMatrix();
  }
}