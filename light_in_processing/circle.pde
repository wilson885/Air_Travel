class circle
{
  float x, y, z;
  float s;
  float r=random(10, 200);
  circle()
  {
    x=planex;
    y=planey+150;
    z=0;
    s=40;
  }
  void display ()
  {
    pushMatrix();
    noFill();
    if (day==true) {
      stroke(0, 100);
    } else
    {stroke(255, 200);
    }
    strokeWeight(3);
    translate(x, y, z);
    pushMatrix();
    rotate(radians(r*clouds[1].speed+random(-10, 10)));
    rect(0, 0, 0.5, -s/2);
    popMatrix();
    ellipse(0, 0, s, s);
    popMatrix();
  }
}