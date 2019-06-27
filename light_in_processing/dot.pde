class dot
{
  float x, y, z;
  float speedX, speedY;
  float dirX, dirY;
  float range=200;
  dot()
  {
    speedX=1;
    speedY=1;
    x=random(200);
    y=random(200);
    float k=random(2);
    if (k>1) dirX=1;
    else dirX=-1;
    k=random(2);
    if (k>1) dirY=1;
    else dirY=-1;
    z=random(0.100);
  }
  void display() {
    pushMatrix();
    noStroke();
    //noFill();
    fill(255);
    translate(0, 0, z);
    ellipse(x, y, 10, 10);
    popMatrix();
  }
  void run()
  {
    x+=speedX*0.2*dirX;
    y+=speedY*0.2*dirY;
    /*if ( x<0 || x>200) {
     dirX=dirX*-1;
     speedX=speedX+random(-0.1, 0.1);
     }
     if ( y<0 || y>200 ) {
     dirY=dirY*-1;
     speedY=speedY+random(-0.1, 0.1);
     }*/
  }
  void Bounding()
  {
    if (x>200||x<0) speedX*=-1;
    if (y>200||y<0) speedY*=-1;
  }
}