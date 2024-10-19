void hidefButton(){
  f1Button.hide();
  f2Button.hide();
  f3Button.hide();
  f4Button.hide();
  f5Button.hide();
}

void f5() {
  hidefButton();
  f5Button.show();
  println("5階を選択");
}
void f4() {
  hidefButton();
  f5Button.show();
  println("4階を選択");
}
void f3() {
  hidefButton();
  f5Button.show();
  println("3階を選択");
}
void f2() {
  hidefButton();
  f5Button.show();
  println("2階を選択");
}
void f1() {
  hidefButton();
  f5Button.show();
  println("1階を選択");
}
