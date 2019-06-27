class line
{
  float x, y, z;
  float r,g,b;
  int linecount=100;
  line()
  {
    r=255;
    g=255;
    b=255;
  }
  void display()
  {
    
  }
  void line01()
{
  float planemoveY=mouseX*0.001;
  float planemoveX=mouseY*0.001;
  pushMatrix();
  rotateY(planemoveY-0.4);
  rotateX(-planemoveX+0.5);
  rotateX(-0.5);
  translate(width/2,height/2+100,-30);
  scale(0.8 );
    for (int i=0; i<=20; i++) {
      rotate(radians(40*i));
      pushMatrix();
      for (int k=0; k<linecount; k++)
      {
        pushMatrix();
        translate(width/linecount*sin(k)*10, height/linecount*cos(k)*10);
        //rotateX(frameCount*0.01);
        //rotateY(frameCount*0.01);
        translate(kk*0.1, kk*0.1, kk*0.1);
        //for (int x=0; x<=200; x+=40) {
        rotateZ(kk*100);
        stroke(r, g, b, kk*100);
        strokeWeight(1);
        line(0, 0, 100*sin(k)*kk, 100*cos(k)*kk);
        //}
        popMatrix();
      }
      popMatrix();
    }
    popMatrix();
  }
}