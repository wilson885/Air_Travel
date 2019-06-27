class lightinnight
{
  float x, y, z;
  float ry;
  lightinnight()
  {
  }
  void display()
  {

    pushMatrix();
    //rotateZ(frameCount*0.01);
    float planemoveY=mouseX*0.001;//planemoveY=(asshole02+0.6)*6;//mouseX*0.001;
    float planemoveX=mouseY*0.001;//planemoveX=(asshole-0.5)*-3;//mouseY*0.001;
    rotateX(-planemoveX);

    translate(width/2, height/2-70, -50);
    noStroke();
    fill(255, 120*kk);
    ellipse(0, 0, 100, 100);
    fill(255, 80*kk);
    beginShape();
    vertex(0, 100, 0);
    vertex(0+55, 0, -50);
    vertex(0-55, 0, -50);
    vertex(0, 100, 0);
    endShape();

    popMatrix();
  }
  void draw_02()
  {
    float t=frameCount%800;
    ry=abs((t/800-0.5)*5.5);

    pushMatrix();
    translate(-120, 200, -1000);
    translate(-ry*200, -200, 0);
    translate(width, height, 0);
    fill(255, 50);
    strokeWeight(2);
    noStroke();
    ellipse(20, -20, 350, 350);
    popMatrix();


    pushMatrix();
    translate(width/2+10, 200, 0);

    /* if (ry==1) {
     ry*=-1;
     } else if (ry==-1)
     {
     ry*=-1;
     }*/

    rotateY(ry/4);
    rotateY(1.2);
    println(ry);
    //rotateZ(-50);
    //scale(t4);
    fill(255, 50);
    strokeWeight(2);
    noStroke();
    //ellipse(20,200,100,100);

    beginShape();
    //vertex(0, 240, 0);
    vertex(0, 240, 0);
    vertex(4000, 2000, 0);
    vertex(10000, 1750, 0);
    vertex(6000, 1500, 0);

    //vertex(1400,800,1);
    endShape();

    popMatrix();
  }
  void cylinder(float bottom, float top, float h, int sides)
  {
    float t=frameCount%800;
    ry=abs((t/800-0.5)*5.5);
    pushMatrix();
    //noLights();
    translate(width/2, height/2+100, -500);
    rotateY(-mouseX*0.005-2.1);
    rotateY(1.2);
    rotateX(mouseY*0.003-2);
    translate(0, -h/2, 0);

    float angle;
    float[] x = new float[sides+1];
    float[] z = new float[sides+1];

    float[] x2 = new float[sides+1];
    float[] z2 = new float[sides+1];
    noStroke();
    fill(255, 100*light_open.output());
    //get the x and z position on a circle for all the sides
    for (int i=0; i < x.length; i++) {
      angle = TWO_PI / (sides) * i;
      x[i] = sin(angle) * bottom;
      z[i] = cos(angle) * bottom;
    }

    for (int i=0; i < x.length; i++) {
      angle = TWO_PI / (sides) * i;
      x2[i] = sin(angle) * top;
      z2[i] = cos(angle) * top;
    }

    //draw the bottom of the cylinder
    beginShape(TRIANGLE_FAN);

    vertex(0, -h/2, 0);

    for (int i=0; i < x.length; i++) {
      vertex(x[i], -h/2, z[i]);
    }
    fill(255, 50*light_open.output());
    endShape();

    //draw the center of the cylinder
    beginShape(QUAD_STRIP); 

    for (int i=0; i < x.length; i++) {
      vertex(x[i], -h/2, z[i]);
      vertex(x2[i]*0, h/2, z2[i]*0);
    }

    endShape();

    //draw the top of the cylinder
    beginShape(TRIANGLE_FAN); 

    /*vertex(0, h/2, 0);
     
     for (int i=0; i < x.length; i++) {
     vertex(x2[i], h/2, z2[i]);
     }*/

    endShape();

    popMatrix();
  }
}