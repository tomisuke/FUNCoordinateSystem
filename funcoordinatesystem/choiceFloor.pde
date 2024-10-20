void pushDestination() {
  println("目的地が設定された");
  f1ButtonHome.hide();
  f2ButtonHome.hide();
  f3ButtonHome.hide();
  f4ButtonHome.hide();
  f5ButtonHome.hide();
  f1ButtonNavi.show();
  f2ButtonNavi.show();
  f3ButtonNavi.show();
  f4ButtonNavi.show();
  f5ButtonNavi.show();
  backButtonNavi.show();
  scene = 1;
  floor = 3;
}
void hidefButton() {
  f1Button.hide();
  f2Button.hide();
  f3Button.hide();
  f4Button.hide();
  f5Button.hide();
}
void hideAllButton() {
  f1ButtonHome.hide();
  f2ButtonHome.hide();
  f3ButtonHome.hide();
  f4ButtonHome.hide();
  f5ButtonHome.hide();
  f1Button.hide();
  f2Button.hide();
  f3Button.hide();
  f4Button.hide();
  f5Button.hide();
  backButtonNavi.hide();
}

void f5() {
  hidefButton();
  background(255);
  f5Button();
  f5Button.show();
  println("5階を選択");
  f5ButtonHome.setColorBackground(choicedColor);
  f4ButtonHome.setColorBackground(buttonColor);
  f3ButtonHome.setColorBackground(buttonColor);
  f2ButtonHome.setColorBackground(buttonColor);
  f1ButtonHome.setColorBackground(buttonColor);
  f5ButtonHome.setColorForeground(choicedfore);
  f4ButtonHome.setColorForeground(buttonForegroundColor);
  f3ButtonHome.setColorForeground(buttonForegroundColor);
  f2ButtonHome.setColorForeground(buttonForegroundColor);
  f1ButtonHome.setColorForeground(buttonForegroundColor);
}
void f4() {
  background(255);
  hidefButton();
  f4Button();
  f4Button.show();
  println("4階を選択");
  f5ButtonHome.setColorBackground(buttonColor);
  f4ButtonHome.setColorBackground(choicedColor);
  f3ButtonHome.setColorBackground(buttonColor);
  f2ButtonHome.setColorBackground(buttonColor);
  f1ButtonHome.setColorBackground(buttonColor);
  f5ButtonHome.setColorForeground(buttonForegroundColor);
  f4ButtonHome.setColorForeground(choicedfore);
  f3ButtonHome.setColorForeground(buttonForegroundColor);
  f2ButtonHome.setColorForeground(buttonForegroundColor);
  f1ButtonHome.setColorForeground(buttonForegroundColor);
}
void f3() {
  background(255);
  hidefButton();
  f3Button.show();
  f3Button();
  println("3階を選択");
  f5ButtonHome.setColorForeground(buttonForegroundColor);
  f4ButtonHome.setColorForeground(buttonForegroundColor);
  f3ButtonHome.setColorForeground(choicedfore);
  f2ButtonHome.setColorForeground(buttonForegroundColor);
  f1ButtonHome.setColorForeground(buttonForegroundColor);
  f5ButtonHome.setColorBackground(buttonColor);
  f4ButtonHome.setColorBackground(buttonColor);
  f3ButtonHome.setColorBackground(choicedColor);
  f2ButtonHome.setColorBackground(buttonColor);
  f1ButtonHome.setColorBackground(buttonColor);
}
void f2() {
  background(255);
  hidefButton();
  f2Button();
  f2Button.show();
  println("2階を選択");
  f5ButtonHome.setColorBackground(buttonColor);
  f4ButtonHome.setColorBackground(buttonColor);
  f3ButtonHome.setColorBackground(buttonColor);
  f2ButtonHome.setColorBackground(choicedColor);
  f1ButtonHome.setColorBackground(buttonColor);
  f5ButtonHome.setColorForeground(buttonForegroundColor);
  f4ButtonHome.setColorForeground(buttonForegroundColor);
  f3ButtonHome.setColorForeground(buttonForegroundColor);
  f2ButtonHome.setColorForeground(choicedfore);
  f1ButtonHome.setColorForeground(buttonForegroundColor);
}
void f1() {
  background(255);
  hidefButton();
  f1Button();
  f1Button.show();
  println("1階を選択");
  f5ButtonHome.setColorBackground(buttonColor);
  f4ButtonHome.setColorBackground(buttonColor);
  f3ButtonHome.setColorBackground(buttonColor);
  f2ButtonHome.setColorBackground(buttonColor);
  f1ButtonHome.setColorBackground(choicedColor);
  f5ButtonHome.setColorForeground(buttonForegroundColor);
  f4ButtonHome.setColorForeground(buttonForegroundColor);
  f3ButtonHome.setColorForeground(buttonForegroundColor);
  f2ButtonHome.setColorForeground(buttonForegroundColor);
  f1ButtonHome.setColorForeground(choicedfore);
}

void f5N() {
  background(255);
  floor = 5;
  println("5階を選択");
  hideStairButton();
  f5ButtonNavi.setColorBackground(choicedColor);
  f4ButtonNavi.setColorBackground(buttonColor);
  f3ButtonNavi.setColorBackground(buttonColor);
  f2ButtonNavi.setColorBackground(buttonColor);
  f1ButtonNavi.setColorBackground(buttonColor);
  f5ButtonNavi.setColorForeground(choicedfore);
  f4ButtonNavi.setColorForeground(buttonForegroundColor);
  f3ButtonNavi.setColorForeground(buttonForegroundColor);
  f2ButtonNavi.setColorForeground(buttonForegroundColor);
  f1ButtonNavi.setColorForeground(buttonForegroundColor);
}
void f4N() {
  background(255);
  floor = 4;
  println("4階を選択");
  hideStairButton();
  f5ButtonNavi.setColorBackground(buttonColor);
  f4ButtonNavi.setColorBackground(choicedColor);
  f3ButtonNavi.setColorBackground(buttonColor);
  f2ButtonNavi.setColorBackground(buttonColor);
  f1ButtonNavi.setColorBackground(buttonColor);
  f5ButtonNavi.setColorForeground(buttonForegroundColor);
  f4ButtonNavi.setColorForeground(choicedfore);
  f3ButtonNavi.setColorForeground(buttonForegroundColor);
  f2ButtonNavi.setColorForeground(buttonForegroundColor);
  f1ButtonNavi.setColorForeground(buttonForegroundColor);
}
void f3N() {
  background(255);
  floor = 3;
  println("3階を選択");
  hideStairButton();
  f5ButtonNavi.setColorBackground(buttonColor);
  f4ButtonNavi.setColorBackground(buttonColor);
  f3ButtonNavi.setColorBackground(choicedColor);
  f2ButtonNavi.setColorBackground(buttonColor);
  f1ButtonNavi.setColorBackground(buttonColor);
  f5ButtonNavi.setColorForeground(buttonForegroundColor);
  f4ButtonNavi.setColorForeground(buttonForegroundColor);
  f3ButtonNavi.setColorForeground(choicedfore);
  f2ButtonNavi.setColorForeground(buttonForegroundColor);
  f1ButtonNavi.setColorForeground(buttonForegroundColor);
}
void f2N() {
  background(255);
  floor = 2;
  println("2階を選択");
  hideStairButton();
  f5ButtonNavi.setColorBackground(buttonColor);
  f4ButtonNavi.setColorBackground(buttonColor);
  f3ButtonNavi.setColorBackground(buttonColor);
  f2ButtonNavi.setColorBackground(choicedColor);
  f1ButtonNavi.setColorBackground(buttonColor);
  f5ButtonNavi.setColorForeground(buttonForegroundColor);
  f4ButtonNavi.setColorForeground(buttonForegroundColor);
  f3ButtonNavi.setColorForeground(buttonForegroundColor);
  f2ButtonNavi.setColorForeground(choicedfore);
  f1ButtonNavi.setColorForeground(buttonForegroundColor);
}
void f1N() {
  background(255);
  floor = 1;
  println("1階を選択");
  hideStairButton();
  f5ButtonNavi.setColorBackground(buttonColor);
  f4ButtonNavi.setColorBackground(buttonColor);
  f3ButtonNavi.setColorBackground(buttonColor);
  f2ButtonNavi.setColorBackground(buttonColor);
  f1ButtonNavi.setColorBackground(choicedColor);
  f5ButtonNavi.setColorForeground(buttonForegroundColor);
  f4ButtonNavi.setColorForeground(buttonForegroundColor);
  f3ButtonNavi.setColorForeground(buttonForegroundColor);
  f2ButtonNavi.setColorForeground(buttonForegroundColor);
  f1ButtonNavi.setColorForeground(choicedfore);
}
void back() {
  scene = 0;
  hideAllButton();
  background(255);
  f3();
  f1ButtonHome.show();
  f2ButtonHome.show();
  f3ButtonHome.show();
  f4ButtonHome.show();
  f5ButtonHome.show();
  println("ホームに戻った");
  hideStairButton();
}
