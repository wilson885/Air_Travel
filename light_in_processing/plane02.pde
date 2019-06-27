class endplane {
  float x1=random(-10, 10), y1=random(-10, 10), z1=random(0, 10);
  float x2=random(-10, 10), y2=random(-10, 10), z2=random(0, 10);
  float x3=random(-10, 10), y3=random(-10, 10), z3=random(0, 10);
  float x4=random(-10, 10), y4=random(-10, 10), z4=random(0, 10);
  float x5=random(-10, 10), y5=random(-10, 10), z5=random(0, 10);
  float x6=random(-10, 10), y6=random(-10, 10), z6=random(0, 10);
  float x7=random(-10, 10), y7=random(-10, 10), z7=random(0, 10);
  float x8=random(-10, 10), y8=random(-10, 10), z8=random(0, 10);
  float x9=random(-10, 10), y9=random(-10, 10), z9=random(0, 10);
  float x10=random(-10, 10), y10=random(-10, 10), z10=random(0, 10);
  float x11=random(-10, 10), y11=random(-10, 10), z11=random(0, 10);
  float x12=random(-10, 10), y12=random(-10, 10), z12=random(0, 10);
  float x13=random(-10, 10), y13=random(-10, 10), z13=random(0, 10);
  float x14=random(-10, 10), y14=random(-10, 10), z14=random(0, 10);
  float offset01=random(-1, 1)*3;
  float offset02=random(-1, 1)*3;
  float offset03=random(-1, 1)*3;
  float offset04=random(-1, 1)*3;
  float offset05=random(-1, 1)*3;
  float offset06=random(-1, 1)*3;
  float offset07=random(-1, 1)*3;
  float offset08=random(-1, 1)*3;
  float offset09=random(-1, 1)*3;
  float offset10=random(-1, 1)*3;
  float offset11=random(-1, 1)*3;
  float offset12=random(-1, 1)*3;
  float offset13=random(-1, 1)*3;
  float offset14=random(-1, 1)*3;

  float offsety01=random(-1, 1)*3;
  float offsety02=random(-1, 1)*3;
  float offsety03=random(-1, 1)*3;
  float offsety04=random(-1, 1)*3;
  float offsety05=random(-1, 1)*3;
  float offsety06=random(-1, 1)*3;
  float offsety07=random(-1, 1)*3;
  float offsety08=random(-1, 1)*3;
  float offsety09=random(-1, 1)*3;
  float offsety10=random(-1, 1)*3;
  float offsety11=random(-1, 1)*3;
  float offsety12=random(-1, 1)*3;
  float offsety13=random(-1, 1)*3;
  float offsety14=random(-1, 1)*3;
  endplane()
  {
    castle_scale=0;
  }
  void plane02()
  {
    pushMatrix();
    castle_scale+=0.005;
    pushMatrix();
    translate(width/2, 200+castle_scale*5, -300);
    scale(castle_scale);
    rotateZ(PI);
    shape(castle);
    popMatrix();
    translate(width/2, height/2);
    translate(0, 150, 0);
    //rotate(frameCount*0.01);
    pushMatrix();
    if (a<=1);
    {
      a=a+0.1;
    }
    if (explode==false) {
      rotateY(radians(random(3, 10)));
      rotateX(radians(random(3, 10)));
    }
    rotateX(-0.5);

    pushMatrix();
    translate(0, -70, -50);
    //rotateZ(frameCount*0.5);
    scale(5);
    rotateX(PI);
    rotateY(PI/2);
    //rotateZ(kk2*radians(360));
    if (explode==true) {
      println("explode"+explodeoffset);
      //x1+=offset01;
      y1+=offsety01;
      z1+=offset01;
      translate(x1, y1, z1);
      rotate(z1*3);
      rotateY(z1*3);
      rotateX(z1*3);
    }
    shape(plane_head);
    popMatrix();

    pushMatrix();
    scale(5);
    rotateX(PI);
    rotateY(PI/2);

    pushMatrix();
    if (explode==true) {
      println("explode"+explodeoffset);
      //x2+=offset02;
      y2+=offsety02;
      z2+=offset02;
      translate(x2, y2, z2);
      rotate(z2*3);
      rotateY(z2*3);
      rotateX(z2*3);
    }
    shape(plane01);
    popMatrix();

    pushMatrix();
    if (explode==true) {
      println("explode"+explodeoffset);
      //x3+=offset03;
      y3+=offsety03;
      z3+=offset03;
      translate(x3, y3, z3);
      rotate(z3*3);
      rotateY(z3*3);
      rotateX(z3*3);
    }
    shape(plane02);
    popMatrix();

    pushMatrix();
    if (explode==true) {
      println("explode"+explodeoffset);
      //x4+=offset04;
      y4+=offsety04;
      z4+=offset04;
      translate(x4, y4, z4);
      rotate(z4*3);
      rotateY(z4*3);
      rotateX(z4*3);
    }
    shape(plane03);
    popMatrix();

    pushMatrix();
    if (explode==true) {
      println("explode"+explodeoffset);
      //x5+=offset05;
      y5+=offsety05;
      z5+=offset05;
      translate(x5, y5, z5);
      rotate(z5*3);
      rotateY(z5*3);
      rotateX(z5*3);
    }
    shape(plane04);
    popMatrix();

    pushMatrix();
    if (explode==true) {
      println("explode"+explodeoffset);
      //x6+=offset06;
      y6+=offsety06;
      z6+=offset06;
      translate(x6, y6, z6);
      rotate(z6*3);
      rotateY(z6*3);
      rotateX(z6*3);
    }
    shape(plane05);
    popMatrix();

    pushMatrix();
    if (explode==true) {
      println("explode"+explodeoffset);
      //x7+=offset07;
      y7+=offsety07;
      z7+=offset07;
      translate(x7, y7, z7);
      rotate(z7*3);
      rotateY(z7*3);
      rotateX(z7*3);
    }
    shape(plane06);
    popMatrix();

    pushMatrix();
    if (explode==true) {
      println("explode"+explodeoffset);
      //x8+=offset08;
      y8+=offsety08;
      z8+=offset08;
      translate(x8, y8, z8);
      rotate(z8*3);
      rotateY(z8*3);
      rotateX(z8*3);
    }
    shape(plane07);
    popMatrix();

    pushMatrix();
    if (explode==true) {
      println("explode"+explodeoffset);
      //x9+=offset09;
      y9+=offsety09;
      z9+=offset09;
      translate(x9, y9, z9);
      rotate(z9*3);
      rotateY(z9*3);
      rotateX(z9*3);
    }
    shape(plane08);
    popMatrix();

    pushMatrix();
    if (explode==true) {
      println("explode"+explodeoffset);
      //x10+=offset10;
      y10+=offsety10;
      z10+=offset10;
      translate(x10, y10, z10);
      rotate(z10*3);
      rotateY(z10*3);
      rotateX(z10*3);
    }
    shape(plane09);
    popMatrix();

    pushMatrix();
    if (explode==true) {
      println("explode"+explodeoffset);
      //x11+=offset11;
      y11+=offsety11;
      z11+=offset11;
      translate(x11, y11, z11);
      rotate(z11*3);
      rotateY(z11*3);
      rotateX(z11*3);
    }
    shape(plane10);
    popMatrix();

    pushMatrix();
    if (explode==true) {
      println("explode"+explodeoffset);
      //x12+=offset12;
      y12+=offsety12;
      z12+=offset12;
      translate(x12, y12, z12);
      rotate(z12*3);
      rotateY(z12*3);
      rotateX(z12*3);
    }
    shape(plane11);
    popMatrix();

    pushMatrix();
    if (explode==true) {
      println("explode"+explodeoffset);
      //x13+=offset13;
      y13+=offsety13;
      z13+=offset13;
      translate(x13, y13, z13);
      rotate(z13*3);
      rotateY(z13*3);
      rotateX(z13*3);
    }
    shape(plane12);
    popMatrix();

    pushMatrix();
    if (explode==true) {
      println("explode"+explodeoffset);
      //x12+=offset12;
      y12+=offsety12;
      z12+=offset12;
      translate(x12, y12, z12);
      rotate(z14*3);
      rotateY(z14*3);
      rotateX(z14*3);
    }
    shape(plane13);
    popMatrix();

    pushMatrix();
    if (explode==true) {
      println("explode"+explodeoffset);
      //x14+=offset14;
      y14+=offsety14;
      z14+=offset14;
      translate(x14, y14, z14);
      rotate(z12*3);
      rotateY(z12*3);
      rotateX(z12*3);
    }
    shape(plane14);
    popMatrix();

    popMatrix();
    popMatrix();
    popMatrix();
  }
}