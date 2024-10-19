int labelColor = 0;
int buttonColor = #990000;
int buttonForegroundColor = #994444; //frowMouse
int buttonActiveColor = #330000;//pressed
int objectColor = #550000;
void choiceFloor() {
  floorButton.setFont(font);
  int floorButtonW = 300, floorButtonH = height/5;
  floorButton.addButton("f5")
    .setLabel("5F")
    .setPosition(0, 0)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);

  floorButton.addButton("f4")
    .setLabel("4F")
    .setPosition(0, floorButtonH)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);

  floorButton.addButton("f3")
    .setLabel("3F")
    .setPosition(0, floorButtonH*2)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);
  floorButton.addButton("f2")
    .setLabel("2F")
    .setPosition(0, floorButtonH*3)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);
  floorButton.addButton("f1")
    .setLabel("1F")
    .setPosition(0, floorButtonH*4)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);
}
