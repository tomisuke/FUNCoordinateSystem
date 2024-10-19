ControlP5 floorButton;

void choiceFloor() {
  floorButton = new ControlP5(this);
  floorButton.setFont(font);
  int floorButtonW = 300, floorButtonH = height/5;
  floorButton.addButton("1Floor")
    .setLabel("1階")
    .setPosition(0, 0)
    .setSize(floorButtonW, floorButtonH);
    
  floorButton.addButton("2Floor")
    .setLabel("2階")
    .setPosition(0, floorButtonH)
    .setSize(floorButtonW, floorButtonH);
}
