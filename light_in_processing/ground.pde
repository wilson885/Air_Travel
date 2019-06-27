class ground
{
  float x, y, s, z;
  float offsetx, offsety;
  int first=1;
  ground()
  {
    offsetx=1;
    offsety=random(6, 10);
    x=width/2+330;
    y=height+500;
    z=-500;
    s=1;
  }
  void display()
  {
    fill(50, 80);
    noStroke();
    beginShape(); 
    vertex(100, height+500, 0); 
    vertex(360, height-340, -100); 
    vertex(width-360, height-340, -100); 
    vertex(width-100, height+500, 0); 
    endShape(CLOSE);
    
    fill(50, 80);
    noStroke();
    beginShape(); 
    vertex(-500, height+500, 0); 
    vertex(-500, height-340, -100); 
    vertex(width+500, height-340, -100); 
    vertex(width+500, height+500, 0); 
    endShape(CLOSE);
  }
  void line_ground()
  {
    pushMatrix();
    if (first==1) {
      translate(0, 400);
      first+=1;
    }
    s=abs((frameCount%60)/60-0.5);
    pushMatrix();
    translate(x, y);
    noStroke();
    scale(0.08*s);
    beginShape(); 
    vertex(0, 800); 
    vertex(100, 200); 
    vertex(700, 200); 
    vertex(800, 800); 
    endShape(CLOSE);
    popMatrix();
    popMatrix();
    
    s=abs((frameCount%60)/60-0.5);
    pushMatrix();
    translate(x, y+100);
    noStroke();
    scale(0.1*s);
    beginShape(); 
    vertex(0, 800); 
    vertex(100, 200); 
    vertex(700, 200); 
    vertex(800, 800); 
    endShape(CLOSE);
    popMatrix();
    
    s=abs((frameCount%60)/60-0.5);
    pushMatrix();
    translate(x, y+200);
    noStroke();
    scale(0.11*s);
    beginShape(); 
    vertex(0, 800); 
    vertex(100, 200); 
    vertex(700, 200); 
    vertex(800, 800); 
    endShape(CLOSE);
    popMatrix();
    
    s=abs((frameCount%60)/60-0.5);
    pushMatrix();
    translate(x, y+300);
    noStroke();
    scale(0.12*s);
    beginShape(); 
    vertex(0, 800); 
    vertex(100, 200); 
    vertex(700, 200); 
    vertex(800, 800); 
    endShape(CLOSE);
    popMatrix();
  }
  void run()
  {
    //x+=offsetx;
    y+=8;
    if (y>height+200) {
      y=400;
    }
  }
}