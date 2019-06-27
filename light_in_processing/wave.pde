class wave
{
  float x, y, s;
  float offsety;
  float r, g, b;

  float x2, y2, s2;
  float offsety2;
  float r2, g2, b2;
  wave() {
    x=0;
    y=0;
    offsety=1;//random(1, 3);
    r=255;
    g=255;
    b=255;
    r2=255;
    g2=255;
    b2=255;
  }
  void display() {
    pushMatrix();
    float planemoveY=mouseX*0.0005;
    float planemoveX=mouseY*0.0005;
    rotateX(planemoveY);
    rotateY(planemoveX);
    noFill();
    stroke(r, g, b, 100);
    strokeWeight(3);
    beginShape(); 
    float xoff = 0;
    float y2=0;
    for (float x = planex+150; x <= width*2; x += 10) {
      float y = map(noise(xoff, offsety), 0, 1, 200, 300);
      vertex(y-y2, x); 
      y2+=10;
      xoff += 0.5*kk;
    }
    offsety -=10;
    vertex(planex-100, planey-50);
    //vertex(0, height);
    endShape(CLOSE);
    popMatrix();
  }
  void display_right() {
    pushMatrix();
    float planemoveY=mouseX*0.0001;
    float planemoveX=mouseY*0.0001;
    rotateX(planemoveY);
    rotateY(planemoveX);
    noFill();
    stroke(r2, g2, b2, 100);
    strokeWeight(3);
    beginShape(); 
    float xoff2 = 0;
    float y2=0;
    for (float x = planex+150; x <= width*2; x += 10) {
      float y = map(noise(xoff2, offsety), 0, 1, 500, 600);
      vertex(y-y2, x); 
      y2-=10;
      xoff2 += 0.5*kk;
    }
    offsety2 -=10;
    vertex(planex+100, planey-50);
    //vertex(0, height);
    endShape(CLOSE);
    popMatrix();
  }
}