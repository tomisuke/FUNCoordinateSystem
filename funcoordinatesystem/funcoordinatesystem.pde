import controlP5.*;
ControlP5 floorButtonHome;
ControlP5 floorButtonNavi;
ControlP5 f1Button;
ControlP5 f2Button;
ControlP5 f3Button;
ControlP5 f4Button;
ControlP5 f5Button;
ControlP5 f2Stair;
ControlP5 f3StairU;
ControlP5 f3StairD;

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
int labelColor = 255;
int buttonColor = #990000;
int buttonForegroundColor = #994444; //frowMouse
int buttonActiveColor = #330000;//pressed
int objectColor = #550000;
int h = 30007;//現在地

PFont font;
PFont font40;
void setup() {
  floorButtonHome = new ControlP5(this);
  floorButtonNavi = new ControlP5(this);
  f1Button = new ControlP5(this);
  f2Button = new ControlP5(this);
  f3Button = new ControlP5(this);
  f4Button = new ControlP5(this);
  f5Button = new ControlP5(this);
  int[][] isGoF1 = new int[8][10];
  isGoF1[1][0] = 1;
  isGoF1[2][0] = 1;
  isGoF1[3][0] = 1;
  isGoF1[4][0] = 1;
  isGoF1[5][0] = 1;
  isGoF1[1][1] = 1;
  isGoF1[2][1] = 1;
  isGoF1[3][1] = 1;
  isGoF1[4][1] = 1;
  isGoF1[5][1] = 1;
  isGoF1[6][1] = 1;
  isGoF1[7][1] = 1;
  isGoF1[1][2] = 2;
  isGoF1[5][2] = 2;
  isGoF1[1][3] = 1;
  isGoF1[2][3] = 1;
  isGoF1[3][3] = 1;
  isGoF1[4][3] = 1;
  isGoF1[5][3] = 1;
  isGoF1[6][3] = 1;
  isGoF1[7][3] = 1;
  int[][] isGoF2 = new int[8][10];
  isGoF2[1][1] = 1;
  isGoF2[1][2] = 1;
  isGoF2[1][2] = 2;
  isGoF2[2][2] = 1;
  isGoF2[3][2] = 1;
  isGoF2[4][2] = 1;
  isGoF2[5][2] = 2;
  isGoF2[6][2] = 1;
  isGoF2[7][2] = 1;
  isGoF2[1][3] = 2;
  isGoF2[5][3] = 2;
  isGoF2[6][3] = 1;
  isGoF2[7][3] = 1;
  isGoF2[1][4] = 1;
  isGoF2[2][4] = 1;
  isGoF2[3][4] = 1;
  isGoF2[4][4] = 1;
  isGoF2[5][4] = 1;
  isGoF2[6][4] = 1;
  isGoF2[7][4] = 1;
  int[][] isGoF3 = new int[8][10];
  isGoF3[1][1] = 1;
  isGoF3[1][2] = 1;
  isGoF3[1][3] = 2;
  isGoF3[2][3] = 1;
  isGoF3[3][3] = 1;
  isGoF3[4][3] = 1;
  isGoF3[5][3] = 2;
  isGoF3[6][3] = 1;
  isGoF3[7][3] = 1;
  isGoF3[1][4] = 1;
  isGoF3[5][4] = 1;
  isGoF3[1][5] = 1;
  isGoF3[5][5] = 1;
  isGoF3[0][6] = 1;
  isGoF3[1][6] = 2;
  isGoF3[2][6] = 1;
  isGoF3[3][6] = 1;
  isGoF3[4][6] = 1;
  isGoF3[5][6] = 2;
  isGoF3[6][6] = 1;
  isGoF3[7][6] = 1;
  isGoF3[1][7] = 1;
  isGoF3[5][7] = 1;
  isGoF3[1][8] = 1;
  isGoF3[5][8] = 1;
  isGoF3[5][9] = 1;
  int[][] isGoF4 = new int[8][10];
  isGoF4[1][1] = 1;
  isGoF4[5][1] = 1;
  isGoF4[1][2] = 1;
  isGoF4[2][2] = 1;
  isGoF4[3][2] = 1;
  isGoF4[4][2] = 1;
  isGoF4[5][2] = 1;
  isGoF4[1][3] = 2;
  isGoF4[5][3] = 1;
  isGoF4[1][4] = 1;
  isGoF4[5][4] = 1;
  isGoF4[1][5] = 1;
  isGoF4[2][5] = 1;
  isGoF4[3][5] = 1;
  isGoF4[4][5] = 1;
  isGoF4[5][5] = 1;
  isGoF4[1][6] = 2;
  isGoF4[5][6] = 2;
  isGoF4[1][7] = 1;
  isGoF4[2][7] = 1;
  isGoF4[3][7] = 1;
  isGoF4[4][7] = 1;
  isGoF4[5][7] = 1;
  isGoF4[1][8] = 1;
  isGoF4[5][8] = 1;
  int[][] isGoF5 = new int[8][10];
  isGoF5[1][1] = 1;
  isGoF5[1][2] = 1;
  isGoF5[1][3] = 2;
  isGoF5[1][4] = 1;
  isGoF5[2][4] = 1;
  isGoF5[3][4] = 1;
  isGoF5[4][4] = 1;
  isGoF5[5][4] = 2;
  isGoF5[6][4] = 1;
  isGoF5[7][4] = 1;
  isGoF5[1][6] = 2;
  isGoF5[2][6] = 1;
  isGoF5[3][6] = 1;
  isGoF5[4][6] = 1;
  isGoF5[5][6] = 2;
  isGoF5[6][6] = 1;
  isGoF5[7][6] = 1;
  isGoF5[1][7] = 1;
  isGoF5[2][7] = 1;
  isGoF5[3][7] = 1;
  isGoF5[4][7] = 1;
  isGoF5[5][7] = 1;
  isGoF5[5][8] = 1;
  isGoF5[5][9] = 1;
  isGoF5[6][9] = 1;
  isGoF5[7][9] = 1;
  size(1600, 900);
  background(255);
  font = createFont("Meiryo", 20);
  font40 = createFont("Meiryo", 40);
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
    println(floor);
    background(255);
    base();
    navi();
    break;
  }
}
