void pushDestination(){
  println("目的地が設定された");
  floorButtonHome.hide();
  floorButtonNavi.show();
  scene = 1;
  floor = 3;
}
void hidefButton(){
  f1Button.hide();
  f2Button.hide();
  f3Button.hide();
  f4Button.hide();
  f5Button.hide();
}
void hideAllButton(){
  floorButtonHome.hide();
  floorButtonNavi.hide();
  f1Button.hide();
  f2Button.hide();
  f3Button.hide();
  f4Button.hide();
  f5Button.hide();
}

void f5() {
  hidefButton();
  background(255);
  f5Button();
  f5Button.show();
  println("5階を選択");
}
void f4() {
  background(255);
  hidefButton();
  f4Button();
  f4Button.show();
  println("4階を選択");
}
void f3() {
  background(255);
  hidefButton();
  f3Button();
  f3Button.show();
  println("3階を選択");
}
void f2() {
  background(255);
  hidefButton();
  f2Button();
  f2Button.show();
  println("2階を選択");
}
void f1() {
  background(255);
  hidefButton();
  f1Button();
  f1Button.show();
  println("1階を選択");
}

void f5N() {
  background(255);
  floor = 5;
  println("5階を選択");
  hideStairButton();
}
void f4N() {
  background(255);
  floor = 4;
  println("4階を選択");
  hideStairButton();
}
void f3N() {
  background(255);
  floor = 3;
  println("3階を選択");
  hideStairButton();
}
void f2N() {
  background(255);
  floor = 2;
  println("2階を選択");
  hideStairButton();
}
void f1N() {
  background(255);
  floor = 1;
  println("1階を選択");
  hideStairButton();
}
void back() {
  scene = 0;
  hideAllButton();
  background(255);
  f3();
  floorButtonHome.show();
  println("ホームに戻った");
  hideStairButton();
}
