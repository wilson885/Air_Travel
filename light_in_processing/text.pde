class text01
{
  int count=0;
  float count02=0;
  void display()
  {
    count=count+1;
    pushMatrix();
    float planemoveY=mouseX*0.001;
    float planemoveX=mouseY*0.001;
    //rotateY(planemoveY-0.4);
    rotateX(-planemoveX+0.5);
    translate(planex+100, planey);
    
    textFont(mono);
    textSize(10);
    text("time:"+count+"s", 10, 40); 
    fill(0, 102, 153);
    text("speed:"+clouds[1].speed*5+"km/s", 10, 50);
    fill(0, 102, 153, 150);
    text("captain rabbit on duty", 10, 60);
    popMatrix();
  }
  void display02()
  {
    pushMatrix();
    translate(70,0);
    count02+=clouds[1].speed;
    textSize(12);
    fill(255,255);
    text("distance: "+count02/100+" km", 10, 40);  
    textSize(12);
    text("plane:'THE CARROT'",50,83);
    popMatrix();
  }
}