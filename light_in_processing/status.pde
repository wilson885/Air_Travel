class status
{
  void display()
  {
    pushMatrix();
    pushMatrix();
    translate(240, -350);
    pushMatrix();
    translate(width/2, height/2);
    scale(0.03);
    fill(255, 100);
    noStroke();
    //image(moonUI, 0, 0);
    translate(0, 120);
    //rect(550, 1000, 1350, 1600);
    //ellipse(550,200,1400,1400);
    scale(300/3);
    //arc(5.5, 18, 13.5, 13.5, 0, PI, PIE);
    pushMatrix();
    rotateX(PI);
    //arc(5.5, -2, 13.5, 13.5, 0, PI, PIE);
    popMatrix();
    popMatrix();
    popMatrix();

    pushMatrix();
    translate(330, -350);
    translate(width/2-70, height/2);
    scale(0.03);
    fill(255, 100);
    noStroke();
    if (light==-1) {
      pushMatrix();
      translate(0, 1000);
      image(sunUI, 0, 0);
      popMatrix();
    } else {
      image(sunUI, 0, 0);
    }
    translate(0, 120);
    rect(550, 1000, 1350, 1600);
    //ellipse(550,200,1400,1400);
    scale(300/3);
    arc(5.5, 18, 13.5, 13.5, 0, PI, PIE);
    pushMatrix();
    rotateX(PI);
    arc(5.5, -2, 13.5, 13.5, 0, PI, PIE);
    popMatrix();
    popMatrix();
    popMatrix();

    pushMatrix();
    pushMatrix();
    translate(240, -350);
    translate(width/2+70, height/2);
    scale(0.03);
    fill(255, 100);
    noStroke();
    if (rainbool==true) {
      pushMatrix();
      translate(0, 1000);
      image(rainUI, 0, 0);
      popMatrix();
    } else {
      image(rainUI, 0, 0);
    }
    translate(0, 120);
    rect(550, 1000, 1350, 1600);
    //ellipse(550,200,1400,1400);
    scale(300/3);
    arc(5.5, 18, 13.5, 13.5, 0, PI, PIE);
    pushMatrix();
    rotateX(PI);
    arc(5.5, -2, 13.5, 13.5, 0, PI, PIE);
    popMatrix();
    popMatrix();
    popMatrix();
    
    
    pushMatrix();
    translate(-380, -320);
    translate(width/2+70, height/2);
    scale(0.03);
    fill(255, 100);
    noStroke();
    image(planeUI, 0, 0);
    popMatrix();
  }
}