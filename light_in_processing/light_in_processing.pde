import oscP5.*;
import netP5.*;
OscP5 oscP5;
OscP5 oscP502;
pdLine plane_rotate;
pdLine light_open;
PFont mono;

float castle_scale=0;
int ro=0;
int cc=0;
PShape plane_head;
PShape plane_body;
PShape castle;
PShape whale;

PShape bird_left;
PShape bird_right;
PShape bird_body;

PShape balloon01;

PShape plane01;
PShape plane02;
PShape plane03;
PShape plane04;
PShape plane05;
PShape plane06;
PShape plane07;
PShape plane08;
PShape plane09;
PShape plane10;
PShape plane11;
PShape plane12;
PShape plane13;
PShape plane14;
PShape openplane;

PShape cloud01;
PShape clouds01;
PShape clouds02;
PShape clouds03;

PShape boy;

PImage sunUI;
PImage rainUI;
PImage moonUI;
PImage starUI;
PImage planeUI;

PImage sky;
PImage cloud_tx;
PImage clock_tx;
PImage birdtitle;
int dotcount=20;
import processing.sound.*;

SoundFile file;
SoundFile file02;
SoundFile bg_01;
SoundFile bg_02;
SoundFile rainsound;
SoundFile piano01;
SoundFile piano02;
SoundFile piano03;
SoundFile piano04;
SoundFile piano05;
SoundFile piano06;
SoundFile piano07;
SoundFile shisound;
SoundFile birdsound;
SoundFile explode_sound;
SoundFile sacred_sound;


cloud[] clouds=new cloud[400];
cloud02[] cloud02s=new cloud02[800];
cloud03[] cloud03s=new cloud03[20];
dot dots[]=new dot[dotcount];
line lines=new line();
wave waves=new wave();
text01 texts=new text01();
height01 height01s=new height01();
circle[] circles=new circle[3];
lightinnight lin=new lightinnight();
rain rains[]=new rain[100];
status statuss=new status();
end ends=new end();
ground grounds=new ground();
endplane endplanes=new endplane();
bird[] birds=new bird[6];
balloon[] balloons=new balloon[10];
opening openings=new opening();
text01 text01s=new text01();

float asshole;
float asshole02;
float kk, kk2;
float a, b=80;
float planex, planey, planez;
float dayandnight;
int light=1;
int rainint=1;
int sacredbool=0;
float whalescale=0;
boolean castlebool=false;
boolean day;
boolean night;
boolean rain;
boolean rainbool;
boolean stopmusic=false;
boolean end=false;
boolean destroy;
boolean explode;
boolean balloon=false;
boolean opentitle=true;
boolean tranbool=false;
boolean whalebool=false;
int lightopenone=0;
int deep;
int one;
int endcount;
int counte;
int birdcount=800;
float explodeoffset=0;
int balloonint=1;
int rainonetime=0;
int birdonetime=0;
void setup()
{
  oscP5 = new OscP5(this, 6000);
  oscP502 = new OscP5(this, 7000);
  castle=loadShape("castle04.obj");
  mono = createFont("Chalkduster.ttf", 32);
  bird_left = loadShape("bird_for_p5_02.obj");
  bird_right = loadShape("bird_for_p5_03.obj");
  bird_body= loadShape("bird_for_p5_body.obj");
  balloon01=loadShape("balloon.obj");
  openplane=loadShape("plane_body2.obj");
  whale=loadShape("whale.obj");
  deep=0;
  one=0;
  endcount=0;
  destroy=false;
  explode=false;
  plane_rotate=new pdLine(0, 2000);
  light_open=new pdLine(0, 1000);

  planex=width/2;
  planey=height/2+150;
  planez=0;
  a=random(0.1, 1.5);
  plane01=loadShape("plane01.obj");
  plane02=loadShape("plane02.obj");
  plane03=loadShape("plane03.obj");
  plane04=loadShape("plane04.obj");
  plane05=loadShape("plane05.obj");
  plane06=loadShape("plane06.obj");
  plane07=loadShape("plane07.obj");
  plane08=loadShape("plane08.obj");
  plane09=loadShape("plane09.obj");
  plane10=loadShape("plane10.obj");
  plane11=loadShape("plane11.obj");
  plane12=loadShape("plane12.obj");
  plane13=loadShape("plane13.obj");
  plane14=loadShape("plane14.obj");
  clouds01=loadShape("clouds01.obj");
  clouds02=loadShape("clouds02.obj");
  clouds03=loadShape("clouds03.obj");

  boy=loadShape("man.obj");
  plane_head=loadShape("plane_head.obj");
  plane_body=loadShape("plane_body.obj");
  cloud01=loadShape("cloud.obj");
  cloud_tx=loadImage("clod_tx.jpg");
  clock_tx=loadImage("Clock.png");
  sky=loadImage("sky.jpg");
  planeUI=loadImage("plane.png");
  moonUI=loadImage("moon.png");
  starUI=loadImage("star.png");
  sunUI=loadImage("sun.png");
  rainUI=loadImage("rain.png");
  birdtitle=loadImage("birds.png");


  for (int i=0; i<clouds.length; i++)
  {
    clouds[i]=new cloud();
  }
  for (int i=0; i<cloud03s.length; i++)
  {
    cloud03s[i]=new cloud03();
  }
  for (int i=0; i<balloons.length; i++)
  {
    balloons[i]=new balloon();
  }
  for (int i=0; i<cloud02s.length; i++)
  {
    cloud02s[i]=new cloud02();
  }
  for (int i=0; i<dotcount; i++) {
    dots[i]=new dot();
  }
  for (int i=0; i<3; i++) {
    circles[i]=new circle();
  }
  for (int i=0; i<rains.length; i++)
  {
    rains[i]=new rain();
  }
  for (int i=0; i<birds.length; i++)
  {
    birds[i]=new bird();
  }
  size(800, 770, P3D);
  file = new SoundFile(this, "sample02.mp3");
  file02 = new SoundFile(this, "machine.mp3");
  rainsound=new SoundFile(this, "rainsound.mp3");
  bg_01=new SoundFile(this, "bg_01.wav");
  piano01 = new SoundFile(this, "piano01.wav");
  piano02 = new SoundFile(this, "piano02.wav");
  piano03 = new SoundFile(this, "piano03.wav");
  piano04 = new SoundFile(this, "piano04.wav");
  piano05 = new SoundFile(this, "piano05.wav");
  piano06 = new SoundFile(this, "piano06.wav");
  piano07 = new SoundFile(this, "piano07.wav");
  shisound=new SoundFile(this, "thegreate.wav");
  explode_sound=new SoundFile(this, "thegreate.wav");
  birdsound =new SoundFile(this, "birdsound.mp3");
  sacred_sound=new SoundFile(this, "sacred.mp3");
  //bg_02=new SoundFile(this, "bg_02.wav");
  file.play();
  smooth(4);
  //file02.loop();
}
void draw()
{
  float time=frameCount%60;
  float t=(abs(time/60-0.5));
  kk=easeInOutSine(t);
  kk2=easeInOutSine(plane_rotate.output());

  float dayandnight=frameCount%2000;
  float d=(abs(dayandnight/2000-0.5));

  if (opentitle==true) {
    background(200, 255);
    lights();
    ambientLight(102, 102, 102);
    lightSpecular(204, 204, 204);
    directionalLight(102, 102, 102, 0, 1, -1);
    pushMatrix();
    translate(0, 50);
    pushMatrix();
    translate(-50, 0);
    openings.plane();
    openings.display();
    popMatrix();
    stroke(255, 255);
    noFill();
    strokeWeight(2);
    rect(200, 125, 400, 400);
    popMatrix();
    if (tranbool==true) {
      tran();
    }
  }
  if (opentitle==false) {
    background(sky);
  }
  if (end==true) {
    ends.tttt();
    endcount+=1;
    lights();
    ambientLight(102, 102, 102);
    lightSpecular(204, 204, 204);
    directionalLight(102, 102, 102, 0, 1, -1);
    specular(255, 255, 255);
    endplanes.plane02();
    for (int i=0; i<cloud02s.length; i++)
    {
      pushMatrix();
      //scale(0.4);
      translate(0, 0, 0);
      cloud02s[i].display();
      cloud02s[i].loop_cloud();
      cloud02s[i].stroke_speed();
      popMatrix();
    }
    if (endcount==100) {
      destroy=true;
    } else if (endcount>=300) {
      destroy=false;
      explode=true;
      pushMatrix();
      translate(0, 0, 500);
      counte+=1;
      rectMode(CENTER);
      fill(255, counte);
      rect(0, 0, width*2+1400, height*2+1400);
      popMatrix();
    }
  }

  if (end==false && opentitle==false) {

    fromheight();
    pushMatrix();
    fill(0, d*300);
    if (d<0.25)
    {
      day=true;
    } else
    {
      day=false;
    }
    translate(0, 0, -1000);
    rectMode(CENTER);
    rect(0, 0, width*2+1400, height*2+1400);
    popMatrix();
    lights();
    ambientLight(102, 102, 102);
    lightSpecular(204, 204, 204);
    directionalLight(102, 102, 102, 0, 1, -1);
    specular(255, 255, 255);
    if (clouds[1].speed>40) {
      waves.display();
      waves.display_right();
    }
    if (whalebool==true) {
      whalescale+=0.01;
      pushMatrix();
      translate(width/2-whalescale*40, 300-whalescale*40, -1);
      if (whalescale<2) {
        scale(whalescale);
      } else {
        scale(2);
      }
      rotateZ(PI);
      rotateX(kk/2);
      shape(whale);
      popMatrix();
    }
    if (castlebool==true) {
      castle_scale+=0.005;
      pushMatrix();
      translate(width/2, 200+castle_scale*5, -300);
      scale(castle_scale);
      rotateZ(PI);
      shape(castle);
      popMatrix();
    }

    pushMatrix();
    translate(660, height-400);
    stroke(255);
    noFill();
    rect(0, -100, 150, 230);
    fill(255);
    textSize(12);
    text("captain Rabbit", -40, 50);
    rotateZ(PI);
    rotateY(frameCount*0.01);
    scale(16);
    shape(boy);
    popMatrix();
    //dott();
    //lin.display();



    if (height01s.s>-20) {
      if (one==0) {
        deep=0;
        one++;
      }
      deep=deep-3;
      if (deep<0) {
        deep=0;
      }
      pushMatrix();
      translate(0, deep, 0);
      translate(0, 0, -100);
      grounds.display();
      grounds.line_ground();
      grounds.run();
      popMatrix();
    }
    if (height01s.s<-20) 
    {
      deep=deep+3;
      if (deep>500) {
        deep=499;
      }
      pushMatrix();
      translate(0, deep, 0);
      pushMatrix();
      translate(0, 0, -100);
      grounds.display();
      grounds.line_ground();
      grounds.run();
      popMatrix();
      popMatrix();
    }



    //dott();
    if (balloon==true) {
      for (int i=0; i<balloons.length; i++)
      {
        balloons[i].display();
        balloons[i].rundown();
      }
    }
    statuss.display();
    lin.cylinder(200, 200, 500, 20);
    //lin.draw_02();
    height01s.display();
    height01s.text01();
    height01s.playsound();
    texts.display();
    texts.display02();
    plane();
    lines.line01();
    for (int i=0; i<birds.length; i++)
    {
      birdcount+=1;
      pushMatrix();
      translate(200, 100, birdcount);
      scale(0.5);
      translate(width/6*sin(i), height/6*cos(i));
      //rotateX(frameCount*0.01);
      //rotateY(frameCount*0.01);
      //translate(kk, kk, kk);
      birds[i].display();
      popMatrix();
    }
    if (rainbool==true) {
      for (int i=0; i<rains.length; i++)
      {
        rains[i].display();
        rains[i].rundown();
      }
    }
    for (int i=0; i<clouds.length; i++)
    {
      clouds[i].display();
      clouds[i].loop_cloud();
      clouds[i].stroke_speed();
    }
    for (int i=0; i<cloud03s.length; i++)
    {
      pushMatrix();
      //scale(0.4);
      translate(0, 0, 0);
      cloud03s[i].display();
      cloud03s[i].loop_cloud();
      cloud03s[i].stroke_speed();
      popMatrix();
    }
    translate(80, 0, 0);
    for (int i=0; i<3; i++) {
      translate(b, 0, 0);
      circles[i].display();
    }
    ends.display();
  }
}
void dott() {
  pushMatrix();
  //scale(clouds[1].r*0.2);
  stroke(0, 0, 0, 100);
  translate(width/2-100, height/2-300);
  //rotateZ(frameCount*0.01);
  for (int  j=0; j<dotcount; j++) {
    for (int i=0; i<dotcount; i++) {
      if (i>0&&j>0) {
        //stroke(255, 255, 255, 50);
        //line(dots[i].x, dots[i].y, dots[j].x, dots[j].y);
      }
      dots[j].display();
      dots[j].run();
      dots[j].Bounding();
    }
  }
  popMatrix();
}

void plane ()
{
  ro+=1;
  pushMatrix();
  translate(width/2, height/2);
  translate(0, 150, 0);
  //rotate(frameCount*0.01);
  pushMatrix();
  if (a<=1);
  {
    a=a+0.1;
  }
  //float planemoveY=(asshole02+0.6)*6;//mouseX*0.001;
  //float planemoveX=(asshole-0.5)*-3;//mouseY*0.001;

float planemoveY=mouseX*0.001;
  float planemoveX=mouseY*0.001;
  rotateY(planemoveY-0.4);//+radians(random(1, 3)));
  rotateX(-planemoveX+0.5);//+radians(random(1, 3)));
  rotateX(-0.5);
  translate(planemoveX, 0, 0);
  rotateX(kk2*radians(360));
  pushMatrix();
  translate(0, -70, -50);
  scale(5);
  rotateX(PI);
  rotateY(PI/2);
  rotateX(ro);
  shape(plane_head);
  popMatrix();

  pushMatrix();
  scale(5);
  rotateX(PI);
  rotateY(PI/2);

  shape(plane_body);
  popMatrix();

  popMatrix();
  popMatrix();
}

void keyPressed()
{
  if (key == ' ') {
    shisound.play();
    tranbool=true;
  }
  if (key == 'a' || key == 'A') {
    plane_rotate.input(0, 1);
    bg_01.play();
  }
  if (key == 'l' || key == 'L') {
    light*=-1;
    if (light==-1) {
      light_open.input(0, 1);
      shisound.loop();
    } else if (light==1) {
      light_open.input(1, 0);
      shisound.stop();
    }
  }
  if (key == 'r' || key == 'R') {
    rainint*=-1;
    if (rainint==-1) {
      rainsound.play();
      rainbool=true;
      //bg_01.play();
    } else if (rainint==1) {
      rainbool=false;
      //bg_01.play();
      rainsound.stop();
    }
  }
  if (key == 'b' || key == 'B') {
    birdcount=0;
    birdsound.play();
  }
  if (key == 'q' || key == 'Q') {
    balloonint*=-1;
    if (balloonint==-1) {
      //bg_02.loop();
      balloon=true;
    } else if (balloonint==1) {
      balloon=false;
    }
  }
}

void fromheight()
{
  if (height01s.s<0 && height01s.s>-100) {
    //plane_rotate.input(0, 1);
    //lightopenone=0;
  } else if (height01s.s<-200 && height01s.s>-300) {
    lightopenone++;
    if (lightopenone==1) {
      light_open.input(0, 1);
      light*=-1;
    }
  } else if (height01s.s<-100 && height01s.s>-200) {
    //lightopenone=0;
    birdonetime=0;
    rainonetime+=1;
    if (rainonetime==1) {
      rainsound.play();
    }
    rainbool=true;
  } else if (height01s.s<-300 && height01s.s>-400) {
    birdonetime+=1;
    if (birdonetime==1) {
      birdsound.play();
      birdcount=0;
    }
    whalebool=true;
  } else if (height01s.s<-400 && height01s.s>-500) {
    sacredbool++;
    castlebool=true;
    if (sacredbool==1) {
      //sacred_sound.play();
    }
    for (int i=0; i<balloons.length; i++) {
      balloons[i].y=height+100;
    }
  } else if (height01s.s<-500 && height01s.s>-600)
  {
    birdonetime=0;
    balloon=true;
  } else if (height01s.s<-600 && height01s.s>-700)
  {
  }
}
void tran()
{
  println(cc);
  cc+=1;
  pushMatrix();
  translate(0, 0, 500);
  noStroke();
  fill(255, cc);
  rect(0, 0, 10000, 10000);
  popMatrix();
  if (cc>=400) {
    opentitle=false;
  }
}
void oscEvent(OscMessage my) {
  String addrPattern = my.addrPattern();
  println(addrPattern);
  if (my.checkAddrPattern("/wilson03")==true) {
    println("ok");
    float gh=my.get(0).floatValue();
    asshole=gh;
    println(gh);
  }
  if (my.checkAddrPattern("/wilson04")==true) {
    println("ok");
    float gh02=my.get(0).floatValue();
    asshole02=gh02;
    println(gh02);
  }
}