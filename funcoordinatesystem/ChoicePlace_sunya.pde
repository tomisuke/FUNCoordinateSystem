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

void masufillS(int x, int y, int size) {
  int ax = mappoint(x, y)[0];
  int ay = mappoint(x, y)[1];
  fill(0, 255, 0);
  rect(mapx(ax), mapy(ay), size, size);
}
void masufillD(int x, int y, int size) {
  int ax = mappoint(x, y)[0];
  int ay = mappoint(x, y)[1];
  fill(255, 0, 0);
  rect(mapx(ax), mapy(ay), size, size);
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

  record = 0;
  int[][] isGoF3 = new int[8][10];
  isGoF3[1][1] = 1;
  isGoF3[1][2] = 1;
  isGoF3[2][3] = 1;
  isGoF3[3][3] = 1;
  isGoF3[4][3] = 1;
  isGoF3[6][3] = 1;
  isGoF3[7][3] = 1;
  isGoF3[1][4] = 1;
  isGoF3[5][4] = 1;
  isGoF3[1][5] = 1;
  isGoF3[5][5] = 1;
  isGoF3[0][6] = 1;
  isGoF3[2][6] = 1;
  isGoF3[3][6] = 1;
  isGoF3[4][6] = 1;
  isGoF3[6][6] = 1;
  isGoF3[7][6] = 1;
  isGoF3[1][7] = 1;
  isGoF3[5][7] = 1;
  isGoF3[1][8] = 1;
  isGoF3[5][8] = 1;
  isGoF3[5][9] = 1;
  isGoF3[5][6] = 1;
  isGoF3[1][6] = 1;
  isGoF3[5][3] = 1;
  isGoF3[1][3] = 1;

  int decx, decy;
  int startX = mappoint(masuxyz(h)[0], masuxyz(h)[1])[0];//現在地のｘ（0）
  int startY = mappoint(masuxyz(h)[0], masuxyz(h)[1])[1];//現在地のｙ（6）
  if (floor == 3) {
    //masufillS(0,0,size);
  }
  if (floor == masuxyz(goal)[2]) {
    masufillD(masuxyz(destination)[0], masuxyz(destination)[1], size);
  }

  if (masuxyz(goal)[2] == 3) {
    //現在地と目的地goalの座標の差を導出
    //xは目的地gaolの方が大きいので、目的地ー現在地で
    decx = mappoint(masuxyz(goal)[0], masuxyz(goal)[1])[0] - startX;
    //yは目的地の座標が大きいと正、小さいと負になる
    decy = mappoint(masuxyz(goal)[0], masuxyz(goal)[1])[1] - startY;
    //println(decx,decy);
    int check;
    if (decy >= 0) {
      check = decx + decy;
    } else {
      check = decx - decy;
    }
    //println(decy,check);
    //x,yを+1してぶつかるかぶつからないかを判定してから配列に代入

    while (record < check) {



      if (decy < 0) {
        // 下に移動したいとき
        if (isGoF3[startX][startY - 1] == 1) { // 移動可能なら下へ
          startY -= 1;
          decy++; // 下方向への移動を1減らす
        } else { // 下へ進めないなら右へ
          startX += 1;
          decx--;
        }
      } else if (decy > 0) {
        // 上に移動したいとき
        if (isGoF3[startX][startY + 1] == 1) { // 移動可能なら上へ
          startY += 1;
          decy--; // 上方向への移動を1減らす
        } else { // 上へ進めないなら右へ
          startX += 1;
          decx--;
        }
      } else {
        // decy == 0の場合、右方向への移動
        startX += 1;
        decx--;
      }

      // 経路を保存
      way[0][record] = startX;
      way[1][record] = startY;
      record++;
    }
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
