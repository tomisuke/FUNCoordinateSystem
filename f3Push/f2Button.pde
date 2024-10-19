  void f2Button(){
    fill(0);
  textSize(50);
  //1列目
  text("教員室", defaultButtonX, defaultButtonY-40);
  f2Button.setFont(font);
  f2Button.addButton("F20513")
    .setLabel("222,223,224")
    .setPosition(defaultButtonX, defaultButtonY+(destinationButtonH + betweenH)*0)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f2Button.addButton("F20713")
    .setLabel("225,226,227")
    .setPosition(defaultButtonX, defaultButtonY+(destinationButtonH + betweenH)*1)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);

  f2Button.addButton("F20913")
    .setLabel("228,229,230")
    .setPosition(defaultButtonX, defaultButtonY+(destinationButtonH + betweenH)*2)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f2Button.addButton("F21313")
    .setLabel("231,232,233")
    .setPosition(defaultButtonX, defaultButtonY+(destinationButtonH + betweenH)*3)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f2Button.addButton("F21513")
    .setLabel("234,235")
    .setPosition(defaultButtonX, defaultButtonY+(destinationButtonH + betweenH)*4)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
    //2列
      text("施設",defaultButtonX+(destinationButtonW + betweenW)*1, defaultButtonY-40);
  f2Button.addButton("F20115")
    .setLabel("購買")
    .setPosition(defaultButtonX+(destinationButtonW + betweenW)*1, defaultButtonY+(destinationButtonH + betweenH)*0)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f2Button.addButton("F20113")
    .setLabel("生協事務所")
    .setPosition(defaultButtonX+(destinationButtonW + betweenW)*1, defaultButtonY+(destinationButtonH + betweenH)*1)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
}
