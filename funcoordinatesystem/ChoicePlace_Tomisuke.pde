void choiceFloorHome() {
  floorButtonHome.setFont(font);
  int floorButtonW = 300, floorButtonH = height/5;
  floorButtonHome.addButton("f5")
    .setLabel("5F")
    .setPosition(0, 0)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);

  floorButtonHome.addButton("f4")
    .setLabel("4F")
    .setPosition(0, floorButtonH)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);

  floorButtonHome.addButton("f3")
    .setLabel("3F")
    .setPosition(0, floorButtonH*2)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);
  floorButtonHome.addButton("f2")
    .setLabel("2F")
    .setPosition(0, floorButtonH*3)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);
  floorButtonHome.addButton("f1")
    .setLabel("1F")
    .setPosition(0, floorButtonH*4)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);
}

void choiceFloorNavi() {
  floorButtonNavi.setFont(font);
  int floorButtonW = 300, floorButtonH = height/5;
  floorButtonNavi.addButton("f5N")
    .setLabel("5F")
    .setPosition(0, 0)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);

  floorButtonNavi.addButton("f4N")
    .setLabel("4F")
    .setPosition(0, floorButtonH)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);

  floorButtonNavi.addButton("f3N")
    .setLabel("3F")
    .setPosition(0, floorButtonH*2)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);
  floorButtonNavi.addButton("f2N")
    .setLabel("2F")
    .setPosition(0, floorButtonH*3)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);
  floorButtonNavi.addButton("f1N")
    .setLabel("1F")
    .setPosition(0, floorButtonH*4)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);
}
