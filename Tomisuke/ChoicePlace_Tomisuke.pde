ControlP5 floorButton;
int labelColor = 0;
int buttonColor = #990000;
int buttonForegroundColor = #990000; //frowMouse
int buttonActiveColor = #550000;//pressed
int objectColor = #550000;
void choiceFloor() {
  floorButton = new ControlP5(this);
  floorButton.setFont(font);
  int floorButtonW = 300, floorButtonH = height/5;
  floorButton.addButton("5F")
    .setLabel("5F")
    .setPosition(0, 0)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);



  floorButton.addButton("4F")
    .setLabel("4F")
    .setPosition(0, floorButtonH)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);
}
