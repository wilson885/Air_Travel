class end
{
  float x, y, s;
  float offsetx, offsety;
  float count=0;
  float h_count=1000;
  float apha=0;
  void display()
  {
    pushMatrix();
    translate(0, 0, 500);
    if (height01s.s<=-647) {
      tttt();
      count+=3;
      rectMode(CENTER);
      fill(255, count);
      rect(0, 0, width*2+1400, height*2+1400);
    } else if (count>=300) {
      tttt();
      rectMode(CENTER);
      fill(255, 255);
      rect(0, 0, width*2+1400, height*2+1400);
      stopmusic=true;
      rainsound.stop();
      end=true;
    }
    popMatrix();
  }
  void tttt()
  {
    h_count+=1.1;
    apha=frameCount%60;
    apha=abs(apha/60-0.5)*1;
    
    pushMatrix();
    translate(0, 150, 400);
    textFont(mono);
    textSize(8);
    fill(0, 0, 0, 255*apha);
    text("HEIGHT: "+h_count+" km", width/2-100, height/2);
    popMatrix();
  }
}