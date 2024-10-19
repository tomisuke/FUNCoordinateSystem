int defaultButtonX = 330;
int defaultButtonY = 120;
int destinationButtonW = 270;
int destinationButtonH = 100;
int betweenH = 30;
int betweenW = 40;
int goal,destination;

void hidefButton(){
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
