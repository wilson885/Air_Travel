float x, y;
class bird
{
  bird()
  {
    x=random(-200,200);
    y=-100;
  }
  void display() {
    pushMatrix();
    
    translate(random(0,1), y+random(0,1));
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(180));
    rotateZ(kk* 4);
    scale(5);
    shape(bird_left);
    popMatrix();

    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(180));
    rotateZ(kk* -4);
    scale(5);
    shape(bird_right);
    popMatrix();

    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(180));
    scale(5);
    shape(bird_body);
    popMatrix();
    popMatrix();
  }
  void run() {
    x+=random(-1,1);
    y+=random(-1,1);
  }
}