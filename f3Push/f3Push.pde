import controlP5.*;
ControlP5 floorButton;
ControlP5 f1Button;
ControlP5 f2Button;
ControlP5 f3Button;
ControlP5 f4Button;
ControlP5 f5Button;
PFont font;
void setup() {
  floorButton = new ControlP5(this);
  f1Button = new ControlP5(this);
  f2Button = new ControlP5(this);
  f3Button = new ControlP5(this);
  f4Button = new ControlP5(this);
  f5Button = new ControlP5(this);
  size(1600, 900);
  fill(255);
  rect(0, 0, width, height);
  font = createFont("MS Gothic", 35, true);
  choiceFloor();
}

void draw() {
}
