void f1Button(){
    fill(0);
  textSize(50);
  //1列目
  text("教員室", defaultButtonX, defaultButtonY-40);
  f1Button.setFont(font);
  f1Button.addButton("F10515")
    .setLabel("122,123,124")
    .setPosition(defaultButtonX, defaultButtonY+(destinationButtonH + betweenH)*0)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f1Button.addButton("F10715")
    .setLabel("125,126,127")
    .setPosition(defaultButtonX, defaultButtonY+(destinationButtonH + betweenH)*1)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);

  f1Button.addButton("F10915")
    .setLabel("128,129,130")
    .setPosition(defaultButtonX, defaultButtonY+(destinationButtonH + betweenH)*2)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f1Button.addButton("F11315")
    .setLabel("131,132,133")
    .setPosition(defaultButtonX, defaultButtonY+(destinationButtonH + betweenH)*3)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f1Button.addButton("F11515")
    .setLabel("134,135")
    .setPosition(defaultButtonX, defaultButtonY+(destinationButtonH + betweenH)*4)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  //2列目
  text("教室", defaultButtonX+(destinationButtonW + betweenW)*1, defaultButtonY-40);
  f1Button.addButton("F11319")
    .setLabel("アトリエ")
    .setPosition(defaultButtonX+(destinationButtonW + betweenW)*1, defaultButtonY+(destinationButtonH + betweenH)*0)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
//三列
      text("施設", defaultButtonX+(destinationButtonW + betweenW)*2, defaultButtonY-40);
  f1Button.addButton("F10115")
    .setLabel("食堂")
    .setPosition(defaultButtonX+(destinationButtonW + betweenW)*2, defaultButtonY+(destinationButtonH + betweenH)*0)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f1Button.addButton("F10719")
    .setLabel("プレベイ")
    .setPosition(defaultButtonX+(destinationButtonW + betweenW)*2, defaultButtonY+(destinationButtonH + betweenH)*1)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
}
