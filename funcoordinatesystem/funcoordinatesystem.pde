import controlP5.*;
ControlP5 floorButtonHome;
ControlP5 floorButtonNavi;
ControlP5 f1Button;
ControlP5 f2Button;
ControlP5 f3Button;
ControlP5 f4Button;
ControlP5 f5Button;

int scene = 0;
//マップ系グローバル変数
int floor = 3;//仮置き
int size = 75;//スペースの長さ
int centerX = 800;//方眼紙の中央の座標です。
int centerY = 450;
int st = 1;//線の太さ
int ST = 3;//外枠の太さ
int colorA = 90;
int colorB = 0;
//ボタン系グローバル変数
int defaultButtonX = 330;
int defaultButtonY = 120;
int destinationButtonW = 270;
int destinationButtonH = 100;
int betweenH = 30;
int betweenW = 40;
int goal, destination;
String name;
//ボタンの色
int labelColor = 0;
int buttonColor = #990000;
int buttonForegroundColor = #994444; //frowMouse
int buttonActiveColor = #330000;//pressed
int objectColor = #550000;
int h = 30007;//現在地

PFont font;
void setup() {
  floorButtonHome = new ControlP5(this);
  floorButtonNavi = new ControlP5(this);
  f1Button = new ControlP5(this);
  f2Button = new ControlP5(this);
  f3Button = new ControlP5(this);
  f4Button = new ControlP5(this);
  f5Button = new ControlP5(this);
  size(1600, 900);
  background(255);
  font = createFont("Meiryo", 20);
  textFont(font);
  center();
  choiceFloorHome();
  choiceFloorNavi();
  isGo();
  hideAllButton();
  floorButtonHome.show();
  f3();
}
void draw() {
  switch(scene) {
  case 1:
    background(255);
    base();
    navi();
    for (int i = 0; i < record; i++) {
      masufillR(way[0][i], way[1][i], size);
      //println(way[0][i],way[1][i]);
    }
    masufillS(masuxyz(h)[0], masuxyz(h)[1], size);
    masufillD(masuxyz(destination)[0], masuxyz(destination)[1], size);
    break;
  }
}
