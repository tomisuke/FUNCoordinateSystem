void choiceFloorHome() {
  fill(255);
  f1ButtonHome.setFont(font40);
  f2ButtonHome.setFont(font40);
  f3ButtonHome.setFont(font40);
  f4ButtonHome.setFont(font40);
  f5ButtonHome.setFont(font40);
  int floorButtonW = 300, floorButtonH = height/5;
  f5ButtonHome.addButton("f5")
    .setLabel("5F")
    .setPosition(0, 0)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorLabel(labelColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);

  f4ButtonHome.addButton("f4")
    .setLabel("4F")
    .setPosition(0, floorButtonH)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorLabel(labelColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);

  f3ButtonHome.addButton("f3")
    .setLabel("3F")
    .setPosition(0, floorButtonH*2)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorLabel(labelColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);
  f2ButtonHome.addButton("f2")
    .setLabel("2F")
    .setPosition(0, floorButtonH*3)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorLabel(labelColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);
  f1ButtonHome.addButton("f1")
    .setLabel("1F")
    .setPosition(0, floorButtonH*4)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorLabel(labelColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);
}

void choiceFloorNavi() {
  f1ButtonNavi.setFont(font40);
  f2ButtonNavi.setFont(font40);
  f3ButtonNavi.setFont(font40);
  f4ButtonNavi.setFont(font40);
  f5ButtonNavi.setFont(font40);
  int floorButtonW = 300, floorButtonH = height/5;
  f5ButtonNavi.addButton("f5N")
    .setLabel("5F")
    .setPosition(0, 0)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorLabel(labelColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);

  f4ButtonNavi.addButton("f4N")
    .setLabel("4F")
    .setPosition(0, floorButtonH)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorLabel(labelColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);

  f3ButtonNavi.addButton("f3N")
    .setLabel("3F")
    .setPosition(0, floorButtonH*2)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorLabel(labelColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);
  f2ButtonNavi.addButton("f2N")
    .setLabel("2F")
    .setPosition(0, floorButtonH*3)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorLabel(labelColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);
  f1ButtonNavi.addButton("f1N")
    .setLabel("1F")
    .setPosition(0, floorButtonH*4)
    .setSize(floorButtonW, floorButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorLabel(labelColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);
    
  backButtonNavi.addButton("back")
    .setLabel("Home")
    .setFont(font)
    .setPosition(320, 40)
    .setSize(100, 100)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorLabel(labelColor)
    .setColorForeground(buttonForegroundColor)
    .setColorActive(buttonActiveColor);
}
