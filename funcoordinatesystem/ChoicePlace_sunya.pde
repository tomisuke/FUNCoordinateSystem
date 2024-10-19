int[] masuxyz(int id) {//idからもらった数値をエクセルの座標にして配列｛x,y,z｝として返す
  int masux, masuy, masuz;
  masuz = int(id / 10000);
  masux = int((id - masuz * 10000) / 100);
  masuy = id - masuz * 10000 - masux * 100;
  int a[] = new int[3];
  a[0] = masux;
  a[1] = masuy;
  a[2] = masuz;
  return a;
}
int[] mappoint(int x, int y) {//エクセルでの座標をマップでのxy座標にして配列｛ｘ、ｙ｝で返す
  int mapx = int(0.5 * x - 0.5);
  int mapy = int( -0.5  * y + 9.5);
  int mapxy[] = new int[2];
  mapxy[0] = mapx;
  mapxy[1] = mapy;
  return mapxy;
}
//mapのrectの左上の座標を出力する関数
int mapx(int x) {
  return centerX + size * x;
}
int mapy(int y) {
  return centerY + size * y;
}

void masufillS(int size) {
  fill(0, 255, 0);
  rect(mapx(0), mapy(6), size, size);
}
void masufillD(int x, int y, int size) {
  int ax = mappoint(x, y)[0];
  int ay = mappoint(x, y)[1];
  fill(255, 0, 0);
  rect(mapx(ax), mapy(ay), size, size);
  fill(255);
  textAlign(CENTER, CENTER);
  text(name, mapx(ax)+size/2, mapy(ay)+size/2);
  textAlign(LEFT, TOP);
}
void masufillR(int x, int y, int size) {
  //int ax = mappoint(x,y)[0];
  //int ay = mappoint(x,y)[1];
  //println(ax,ay);
  fill(0, 0, 255);
  rect(mapx(x), mapy(y), size, size);
}
void masufillKU() {
  fill(255, 255, 0);
  rect(mapx(1), mapy(6), size, size);
}
void masufillKD() {
  fill(255, 255, 0);
  rect(mapx(1), mapy(3), size, size);
}
void masufillK2() {
  fill(255, 255, 0);
  rect(mapx(1), mapy(3), size, size);
}
void masufillK1() {
  fill(255, 255, 0);
  rect(mapx(1), mapy(2), size, size);
}
//通った道を保存する二重配列
int[][] way = new int[2][20];//[0][]はx座標、[1][]がy座標
int record = 0;
void navi() {
  if (floor == 3) {
    masufillS(size);
  }
  if (floor == masuxyz(goal)[2]) {
    masufillD(masuxyz(destination)[0], masuxyz(destination)[1], size);
  }
  int decx, decy;
  int startX = mappoint(masuxyz(h)[0], masuxyz(h)[1])[0];//現在地のｘ（0）
  int startY = mappoint(masuxyz(h)[0], masuxyz(h)[1])[1];//現在地のｙ（6）
  //まず目的地が３階の場合
  if (masuxyz(goal)[2] == 3) {
  } else if (masuxyz(goal)[2] == 4) {//目的地が4階の場合
    if (floor == 3) {
      masufillKU();
      textAlign(CENTER, CENTER);
      fill(0);
      text("4階へ", centerX+size*2-size/2, centerY+size*6+size/2);
      textAlign(LEFT, TOP);
    } else if (floor == 4) {
      masufillKU();
    }
  } else if (masuxyz(goal)[2] == 5) {//目的地が5階の場合
    if (floor == 3) {
      masufillKU();
      f3StairU.show();
      textAlign(CENTER, CENTER);
      fill(0);
      text("4階へ", centerX+size*2-size/2, centerY+size*6+size/2);
      textAlign(LEFT, TOP);
    } else if (floor == 4) {
      masufillKU();
      textAlign(CENTER, CENTER);
      fill(0);
      text("5階へ", centerX+size*2-size/2, centerY+size*6+size/2);
      textAlign(LEFT, TOP);
    } else if (floor == 5) {
      masufillKU();
    }
  } else if (masuxyz(goal)[2] == 2) {//目的地が2階の場合
    if (floor == 2) {
      masufillK2();
    } else if (floor == 3) {
      f3StairD.show();
      masufillKD();
      textAlign(CENTER, CENTER);
      fill(0);
      text("2階へ", centerX+size*2-size/2, centerY+size*3+size/2);
      textAlign(LEFT, TOP);
    }
  } else if (masuxyz(goal)[2] == 1) {//目的地が1階の場合
    if (floor == 3) {
      masufillKD();
      textAlign(CENTER, CENTER);
      fill(0);
      f3StairD.show();
      text("2階へ", centerX+size*2-size/2, centerY+size*3+size/2);
      textAlign(LEFT, TOP);
    } else if (floor == 2) {
      masufillK2();
      masufillK1();
      textAlign(CENTER, CENTER);
      fill(0);
      text("1階へ", centerX+size*2-size/2, centerY+size*2+size/2);
      textAlign(LEFT, TOP);
    } else if (floor == 1) {
      masufillK1();
    }
  }
}
void stairButton() {
  f3StairU.addButton("f4N")
    .setLabel("")
    .setPosition(mapx(1), mapy(6))
    .setSize(size, size)
    .setColorBackground(transparent)
    .setColorCaptionLabel(transparent)
    .setColorBackground(transparent)
    .setColorLabel(transparent)
    .setColorForeground(transparent)
    .setColorActive(transparent);
  f3StairD.addButton("f2N")
    .setLabel("")
    .setPosition(mapx(1), mapy(3))
    .setSize(size, size)
    .setColorBackground(transparent)
    .setColorCaptionLabel(transparent)
    .setColorBackground(transparent)
    .setColorLabel(transparent)
    .setColorForeground(transparent)
    .setColorActive(transparent);
}
void hideStairButton() {
  f3StairU.hide();
  f3StairD.hide();
}
