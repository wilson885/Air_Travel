class cloud02
{
  float x, y, z;
  float sx, sy;
  float px, py, pz;
  float speed;
  float r;
  float colors;
  cloud02()
  {
    x=random(-width, width);
    y=random(-height, height);
    z=random(width);
    colors=random(100,255);
    pz=z;
  }
  void display() {
    float angle = atan2(0 - y, 0 - x);
    sx=map(x/z, 0, 1, 0, width);
    sy=map(y/z, 0, 1, 0, height);
    r=map(z, 0, width, 5, 0);
    pushMatrix();
    translate(width/2, height/2);
    pushMatrix();
    translate(sx, sy);
    //scale(r*random(2)/2);
    scale(r);
    //rotateX(-0.5);
    //rotateZ(PI);
    //rotateY(-PI/2);
    noStroke();
    fill(255, colors);
    //rotateY(-angle);
    ellipse(0, 0, 3, 3);
    
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
    speed=5;//map(mouseY, 0, width, 5, 50);
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