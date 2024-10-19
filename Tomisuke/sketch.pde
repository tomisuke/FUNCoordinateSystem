import controlP5.*;
PFont font;

void setup(){
    size(1600,900);
    fill(0);
    rect(0,0,width,height);
    font = createFont("MS Gothic", 35, true);
}

void draw(){
  background(255);
  choiceFloor();
}
