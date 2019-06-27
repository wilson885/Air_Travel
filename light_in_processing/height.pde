class height01
{
  float x, y, s;
  height01()
  {
    x=50;
    y=height-50;
    s=0;
  }
  void display()
  {    
    pushMatrix();
    fill(255);

    noStroke();
    for (int i=0; i<20; i++)
    {
      pushMatrix();
      translate(x-20, 770/20*i-100);
      rect(0, 0, 10, 3);
      popMatrix();
    }
    if (asshole<0.5)//mouseY>200 && s>-649)
    {
      s-=0.3;
    } 
    else if (asshole>0.5)//mouseY<200 && mouseY>350)
    {
      s+=0.3;
    }else if (s>-10)
    {
      s=0;
    } else if (s<-650)
    {
      s=-649;
    } else 
    {
      s+=0.3;
    }
    println(s);
    pushMatrix();
    translate(x, y);
    rectMode(CORNER);
    rect(0, 615, 10, s);
    rect(-20, 615, 10, 3);
    popMatrix();
    popMatrix();
  }
  void text01()
  {
    pushMatrix();
    translate(x, y+630);
    textSize(10);
    text("HEIGHT", 0, 0);
    popMatrix();
  }
  void playsound()
  {
    if (stopmusic==false) {
      if (s<0 && s>-100)
      {
        piano01.loop();
      } else if (s<-100 && s>-200)
      {
        piano02.loop();
      } else if (s<-200 && s>-300)
      {
        piano03.loop();
      } else if (s<-300 && s>-400)
      {
        piano04.loop();
      } else if (s<-400 && s>-500)
      {
        piano05.loop();
      } else if (s<-500 && s>-600)
      {
        piano06.loop();
      } else if (s<-600 && s>-700)
      {
        piano07.loop();
      }
    } else if (stopmusic==true)
    {
      //piano07.play();
    }
  }
}