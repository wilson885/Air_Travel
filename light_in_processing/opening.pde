class opening
{
  int count=0;
  float count02=0;
  void display()
  {
    count=count+3;
    pushMatrix();
    translate(width/2-15, height/2+50);
    textFont(mono);
    textSize(20);
    fill(255, 255, 255);
    text("AIR TRAVEL", 0, 0); 
    translate(-25, 50);
    textSize(15);
    text("to the castle in the sky", 0, 0); 
    popMatrix();
  }
  void plane ()
  {
    pushMatrix();
    scale(0.5);
    translate(500,-200,-300);
    image(birdtitle, 0, 0);
    popMatrix();
    
    pushMatrix();
    translate(width/2+50, height/2-100);
    translate(0, 100, 0);
    scale(1);
    
    pushMatrix();
    translate(0, 3, 200);
    scale(5);
    rotateZ(PI);
    //shape(boy);
    popMatrix();


    //rotate(frameCount*0.01);
    pushMatrix();
    if (a<=1);
    {
      a=a+0.1;
    }
    rotateY(frameCount*0.01);
    pushMatrix();
    translate(-40, -75);
    scale(5);
    rotateX(PI);
    rotateZ(-0.4);
    //rotateY(PI/2);
    rotateX(count);
    shape(plane_head);
    popMatrix();

    pushMatrix();
    scale(5);
    rotateX(PI);
    //rotateY(PI/2);
    rotateZ(-0.1);
    shape(openplane);
    popMatrix();

    popMatrix();
    popMatrix();

    pushMatrix();
    translate(width/2, height/2+100, -100);
    fill(0, 100);
    noStroke();
    //ellipse(0, 0, 700, 50);
    popMatrix();
    pushMatrix();
    translate(width/2-75, height/2+255);
    fill(0, 100);
    //ellipse(0, 0, 100, 20);
    popMatrix();
  }
}