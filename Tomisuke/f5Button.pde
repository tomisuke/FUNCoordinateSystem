int defaultButtonX = 330;
int defaultButtonY = 120;
int destinationButtonW = 250;
int destinationButtonH = 100;
int betweenH = 30;
int betweenW = 20;

void f5Button() {
  fill(0);
  textSize(50);
  //1列目
  text("教員室", defaultButtonX, defaultButtonY-40);
  f5Button.setFont(font);
  f5Button.addButton("F50511")
    .setLabel("522,523,524")
    .setPosition(defaultButtonX, defaultButtonY+(destinationButtonH + betweenH)*0)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f5Button.addButton("F50711")
    .setLabel("525,526,527")
    .setPosition(defaultButtonX, defaultButtonY+(destinationButtonH + betweenH)*1)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);

  f5Button.addButton("F50911")
    .setLabel("528,529")
    .setPosition(defaultButtonX, defaultButtonY+(destinationButtonH + betweenH)*2)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f5Button.addButton("F51311")
    .setLabel("531,532,533")
    .setPosition(defaultButtonX, defaultButtonY+(destinationButtonH + betweenH)*3)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f5Button.addButton("F51511")
    .setLabel("534,535,536")
    .setPosition(defaultButtonX, defaultButtonY+(destinationButtonH + betweenH)*4)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  //2列目
  text("教室", defaultButtonX+(destinationButtonW + betweenW)*1, defaultButtonY-40);
  f5Button.addButton("F50507")
    .setLabel("583")
    .setPosition(defaultButtonX+(destinationButtonW + betweenW)*1, defaultButtonY+(destinationButtonH + betweenH)*0)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f5Button.addButton("F50707")
    .setLabel("584")
    .setPosition(defaultButtonX+(destinationButtonW + betweenW)*1, defaultButtonY+(destinationButtonH + betweenH)*1)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f5Button.addButton("F50907")
    .setLabel("585")
    .setPosition(defaultButtonX+(destinationButtonW + betweenW)*1, defaultButtonY+(destinationButtonH + betweenH)*2)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f5Button.addButton("F50505")
    .setLabel("593")
    .setPosition(defaultButtonX+(destinationButtonW + betweenW)*1, defaultButtonY+(destinationButtonH + betweenH)*3)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f5Button.addButton("F50705")
    .setLabel("594")
    .setPosition(defaultButtonX+(destinationButtonW + betweenW)*1, defaultButtonY+(destinationButtonH + betweenH)*4)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f5Button.addButton("F50905")
    .setLabel("595")
    .setPosition(defaultButtonX+(destinationButtonW + betweenW)*1, defaultButtonY+(destinationButtonH + betweenH)*5)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  //3列目
  text("サークル室", defaultButtonX+(destinationButtonW + betweenW)*2, defaultButtonY-40);
  f5Button.addButton("F51103")
    .setLabel("01,02,03")
    .setPosition(defaultButtonX+(destinationButtonW + betweenW)*2, defaultButtonY+(destinationButtonH + betweenH)*0)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f5Button.addButton("F51101")
    .setLabel("4,5,6,7")
    .setPosition(defaultButtonX+(destinationButtonW + betweenW)*2, defaultButtonY+(destinationButtonH + betweenH)*1)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f5Button.addButton("F51301")
    .setLabel("8,9,10,11")
    .setPosition(defaultButtonX+(destinationButtonW + betweenW)*2, defaultButtonY+(destinationButtonH + betweenH)*2)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f5Button.addButton("F51501")
    .setLabel("12,13,14,15")
    .setPosition(defaultButtonX+(destinationButtonW + betweenW)*2, defaultButtonY+(destinationButtonH + betweenH)*3)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
    //4列
      text("その他", defaultButtonX+(destinationButtonW + betweenW)*3, defaultButtonY-40);
  f5Button.addButton("F50111")
    .setLabel("C.Cafe5")
    .setPosition(defaultButtonX+(destinationButtonW + betweenW)*3, defaultButtonY+(destinationButtonH + betweenH)*0)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f5Button.addButton("F50115")
    .setLabel("講堂")
    .setPosition(defaultButtonX+(destinationButtonW + betweenW)*3, defaultButtonY+(destinationButtonH + betweenH)*1)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
  f5Button.addButton("F50105")
    .setLabel("共同研究室")
    .setPosition(defaultButtonX+(destinationButtonW + betweenW)*3, defaultButtonY+(destinationButtonH + betweenH)*2)
    .setSize(destinationButtonW, destinationButtonH)
    .setColorCaptionLabel(labelColor)
    .setColorBackground(buttonColor)
    .setColorForeground(buttonForegroundColor)
    .setColorLabel(#ffffff)
    .setColorActive(buttonActiveColor);
}
